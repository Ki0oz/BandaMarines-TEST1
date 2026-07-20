// Отряды корвета "Весна" - только 2, Алый и Ворон. Наследуются от /datum/squad/upp, чтобы
// попасть в тот же пул randomize_squad() (faction == FACTION_UPP), но со своими лимитами
// ролей/цветом/вендорами. roles_cap не заданный явно = без ограничений (JOB_UPP - обычный стрелок).
// Капитан(ХО)/Майор(КО)/штабные офицеры - общекорабельские, вне отрядов (см. jobs.dm).

/datum/squad/upp/vesna
	name = "Root"
	usable = TRUE
	omni_squad_vendor = FALSE // у "Весны" есть свои вендоры на каждый отряд - общий обход не нужен
	faction = FACTION_UPP
	radio_freq = UPP_FREQ
	roles_cap = list(
		JOB_UPP_MEDIC = 2,
		JOB_UPP_ENGI = 2,
		JOB_UPP_VESNA_SPECIALIST = 1, // выбор из 3 подвидов при спавне - см. specialist.dm
		JOB_UPP_LEADER = 1,
		JOB_UPP_VESNA_FTL = 2,
	)

/datum/squad/upp/vesna/one
	name = SQUAD_VESNA_1
	equipment_color = "#c41e1e" // Алый
	chat_color = "#e67d7d"
	access = list(ACCESS_VESNA_SQUAD_1)
	radio_freq = VESNA_SQUAD_1_FREQ
	minimap_color = "#c41e1e"
	background_icon = "background_upp_alpha"

/datum/squad/upp/vesna/two
	name = SQUAD_VESNA_2
	equipment_color = "#535c65"
	chat_color = "#9a9ca0"
	access = list(ACCESS_VESNA_SQUAD_2)
	radio_freq = VESNA_SQUAD_2_FREQ
	minimap_color = "#454d64"
	background_icon = "background_upp_charlie"

/datum/squad/upp/vesna/put_marine_in_squad(mob/living/carbon/human/target_mob, obj/item/card/id/id_card)
	. = ..()
	if(!.)
		return .

	var/obj/item/device/radio/headset/distress/UPP/headset = locate() in list(target_mob.wear_l_ear, target_mob.wear_r_ear)
	if(headset && radio_freq)
		headset.set_frequency(radio_freq)

	if(GET_DEFAULT_ROLE(target_mob.job) != JOB_UPP_VESNA_FTL)
		return .

	target_mob.important_radio_channels += radio_freq
	for(var/lead in 1 to roles_cap[JOB_UPP_VESNA_FTL])
		if(!fireteam_leaders["FT[lead]"])
			assign_fireteam("FT[lead]", target_mob)
			assign_ft_leader("FT[lead]", target_mob)
			break

	return .
