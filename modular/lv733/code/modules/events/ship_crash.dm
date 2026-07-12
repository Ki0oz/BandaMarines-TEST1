// Событие падения корабля на LV-733 Whitchler Point — срабатывает на 50-й минуте раунда

#define SHIP_CRASH_WARN_DELAY   (2 MINUTES)  // за сколько до удара подсвечивается зона
#define SHIP_CRASH_ZONE_RADIUS  8            // радиус подсветки (тайлы)
#define SHIP_CRASH_ERT_MAX      5            // максимум игроков в ERT
#define SHIP_CRASH_ERT_SYNTHS   1            // максимум синтетиков в ERT
#define SHIP_CRASH_LARVA_PER_N  8            // 1 лярва на каждые N людей

// --- Временный эффект подсветки зоны ---

/obj/effect/lv733/crash_warning_overlay
	name = "зона падения"
	icon = 'icons/turf/overlays.dmi'
	icon_state = "greenOverlay"
	color = "#FF4400"
	alpha = 120
	layer = ABOVE_TURF_LAYER
	mouse_opacity = MOUSE_OPACITY_TRANSPARENT

// --- ERT: спасательная группа на место крушения ---

/datum/emergency_call/lv733_crash_response
	name = "LV-733: Спасательная группа ROAF"
	mob_max = SHIP_CRASH_ERT_MAX
	mob_min = 1
	probability = 0
	shuttle_id = MOBILE_SHUTTLE_ID_ERT2
	home_base = /datum/lazy_template/ert/weyland_station
	name_of_spawn = /obj/effect/landmark/ert_spawns/distress_pmc
	item_spawn = /obj/effect/landmark/ert_spawns/distress_pmc/item
	max_medics = 1
	var/max_synths = 0
	var/synths = 0

/datum/emergency_call/lv733_crash_response/New()
	..()
	max_synths = SHIP_CRASH_ERT_SYNTHS
	arrival_message = "38-я КВАОГ, аварийная группа. Фиксируем крушение судна на LV-733. Прибываем для оценки угрозы и поиска выживших."
	objectives = "Прибыть к месту крушения. Оценить угрозу. Обеспечить безопасность периметра. Найти выживших."

/datum/emergency_call/lv733_crash_response/create_member(datum/mind/M, turf/override_spawn_loc)
	var/turf/spawn_loc = override_spawn_loc ? override_spawn_loc : get_spawn_point()
	if(!istype(spawn_loc))
		return

	var/mob/living/carbon/human/mob = new(spawn_loc)
	M.transfer_to(mob, TRUE)

	if(!leader && HAS_FLAG(mob.client.prefs.toggles_ert, PLAY_LEADER) && check_timelock(mob.client, JOB_SQUAD_LEADER, time_required_for_job))
		leader = mob
		to_chat(mob, SPAN_ROLE_HEADER("Вы командир группы реагирования ROAF!"))
		arm_equipment(mob, /datum/equipment_preset/survivor/roaf/squad_leader, TRUE, TRUE)
	else if(synths < max_synths && HAS_FLAG(mob.client.prefs.toggles_ert, PLAY_SYNTH) && mob.client.check_whitelist_status(WHITELIST_SYNTHETIC))
		synths++
		to_chat(mob, SPAN_ROLE_HEADER("Вы синтетик группы реагирования ROAF!"))
		arm_equipment(mob, /datum/equipment_preset/synth/survivor/roaf_synth, TRUE, TRUE)
	else if(medics < max_medics && HAS_FLAG(mob.client.prefs.toggles_ert, PLAY_MEDIC) && check_timelock(mob.client, JOB_SQUAD_MEDIC, time_required_for_job))
		medics++
		to_chat(mob, SPAN_ROLE_HEADER("Вы медик группы реагирования ROAF!"))
		arm_equipment(mob, /datum/equipment_preset/survivor/roaf/medic, TRUE, TRUE)
	else
		to_chat(mob, SPAN_ROLE_HEADER("Вы боец группы реагирования ROAF!"))
		arm_equipment(mob, /datum/equipment_preset/survivor/roaf, TRUE, TRUE)

	addtimer(CALLBACK(GLOBAL_PROC, GLOBAL_PROC_REF(to_chat), mob, SPAN_BOLD("Задача: [objectives]")), 1 SECONDS)

// --- Контроль события ---

/datum/round_event_control/lv733_ship_crash
	name = "LV-733: Падение корабля"
	typepath = /datum/round_event/lv733_ship_crash
	weight = 0
	earliest_start = 50 MINUTES
	max_occurrences = 1
	alert_observers = TRUE

/datum/round_event_control/lv733_ship_crash/can_spawn_event(players_amt, gamemode)
	if(SSmapping.configs[GROUND_MAP].map_name != MAP_LV733_WHITCHLER_POINT)
		return FALSE
	return ..()

/// Запускает падение корабля напрямую, минуя случайный выбор (weight = 0 у контрола).
/// Вызывается из lore_announcement_lv733() синхронно с МЭЙДЭЙ на 55 минуте.
/proc/trigger_lv733_ship_crash()
	var/datum/round_event_control/E = locate(/datum/round_event_control/lv733_ship_crash) in SSevents.control
	if(!E)
		return
	E.run_event()

// --- Само событие ---

/datum/round_event/lv733_ship_crash
	var/turf/crash_turf = null
	var/list/warning_overlays = list()

/datum/round_event/lv733_ship_crash/setup()
	// startWhen/endWhen считаются в количестве проходов SSevents.fire(), а не в мировых тиках -
	// делить нужно на SSevents.wait (интервал подсистемы), а не на world.tick_lag.
	startWhen = SHIP_CRASH_WARN_DELAY / SSevents.wait
	endWhen = startWhen + 1

/datum/round_event/lv733_ship_crash/announce()
	// Выбираем точку падения заранее и сразу подсвечиваем зону
	var/list/candidate_turfs = list()
	for(var/area/lv733/outdoors/colony_streets/street_area in GLOB.all_areas)
		for(var/turf/open/T in street_area)
			if(is_ground_level(T.z))
				candidate_turfs += T

	if(!length(candidate_turfs))
		return

	crash_turf = pick(candidate_turfs)

	// Подсветка зоны падения
	for(var/turf/T in range(SHIP_CRASH_ZONE_RADIUS, crash_turf))
		if(is_ground_level(T.z))
			var/obj/effect/lv733/crash_warning_overlay/O = new(T)
			warning_overlays += O

	marine_announcement(
		"Внимание! Обнаружен неопознанный объект, входящий в атмосферу LV-733. Неконтролируемое падение. Зона поражения обозначена. Немедленно покиньте отмеченный район!",
		"ПРЕДУПРЕЖДЕНИЕ О ПАДЕНИИ ОБЪЕКТА",
		sound('sound/misc/notice2.ogg')
	)

/datum/round_event/lv733_ship_crash/start()
	// Убрать подсветку
	for(var/obj/effect/lv733/crash_warning_overlay/O in warning_overlays)
		qdel(O)
	warning_overlays.Cut()

	if(!crash_turf)
		return

	// Загрузить DMM корабля
	var/datum/map_template/template = new(file("modular/lv733/maps/standalone/ship_crash.dmm"))
	if(!template.load(crash_turf, centered = TRUE, allow_cropping = TRUE))
		return

	// Взрывы по площади
	var/list/explosion_turfs = list()
	for(var/turf/ET in range(6, crash_turf))
		if(is_ground_level(ET.z))
			explosion_turfs += ET

	for(var/i = 1 to min(8, length(explosion_turfs)))
		var/turf/exp_turf = pick_n_take(explosion_turfs)
		addtimer(CALLBACK(GLOBAL_PROC, GLOBAL_PROC_REF(explosion), exp_turf, 1, 2, 3, 4), rand(0, 30))

	// Сообщение о месте падения
	marine_announcement(
		"Объект упал на LV-733. Зафиксированы взрывы. Всем подразделениям — повышенная готовность.",
		"КРУШЕНИЕ ЗАФИКСИРОВАНО",
		sound('sound/misc/notice2.ogg')
	)

	// Запустить ERT
	SSticker.mode.get_specific_call(/datum/emergency_call/lv733_crash_response, FALSE, TRUE)

	// Дать лярвы ксеноморфам
	_give_xeno_larva()

/datum/round_event/lv733_ship_crash/proc/_give_xeno_larva()
	var/datum/hive_status/hive = GLOB.hive_datum[XENO_HIVE_NORMAL]
	if(!hive)
		return

	var/human_count = length(GLOB.alive_human_list)
	var/larva_to_add = max(1, round(human_count / SHIP_CRASH_LARVA_PER_N))

	hive.stored_larva += larva_to_add
	hive.hive_ui.update_burrowed_larva()

	// Сообщение королеве/ксеноморфам
	for(var/mob/living/carbon/xenomorph/X in GLOB.living_xeno_list)
		if(X.hivenumber == XENO_HIVE_NORMAL)
			to_chat(X, SPAN_XENONOTICE("Улей ощущает новых носителей. [larva_to_add] грудолом[larva_to_add == 1 ? "" : "а"] добавлено в пул."))

#undef SHIP_CRASH_WARN_DELAY
#undef SHIP_CRASH_ZONE_RADIUS
#undef SHIP_CRASH_ERT_MAX
#undef SHIP_CRASH_ERT_SYNTHS
#undef SHIP_CRASH_LARVA_PER_N
