/// LV-733 - ISRG survivors.

// Кинолог совмещает обязанности медика группы (см. modular/lv733/code/datums/skills/isrg.dm).
/datum/equipment_preset/survivor/isrg
	name = "Survivor - ISRG K9 Handler"
	assignment = "ISRG - K9 Handler"
	job_title = JOB_ISRG_K9
	paygrades = list(PAY_SHORT_ISRGE1 = JOB_PLAYTIME_TIER_0)
	skills = /datum/skills/survivor/isrg_k9
	languages = list(LANGUAGE_TSL, LANGUAGE_ENGLISH, LANGUAGE_JAPANESE)
	faction = FACTION_ISRG
	faction_group = FACTION_LIST_SURVIVOR_ISRG
	origin_override = ORIGIN_CIVILIAN
	minimap_icon = "medic"
	minimap_background = "leader"
	role_comm_title = "Кин."
	idtype = /obj/item/card/id/dogtag
	flags = EQUIPMENT_PRESET_EXTRA
	access = list(
		ACCESS_CIVILIAN_PUBLIC,
	)

/datum/equipment_preset/survivor/isrg/proc/equip_common_gear(mob/living/carbon/human/new_human, uniform_type, head_type, suit_type, back_type, belt_type, left_pouch_type, right_pouch_type, eyes_type = null, face_type = null)
	new_human.equip_to_slot_or_del(new uniform_type(new_human), WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/corporate/knife(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine/veteran(new_human), WEAR_HANDS)
	if(head_type)
		new_human.equip_to_slot_or_del(new head_type(new_human), WEAR_HEAD)
	if(eyes_type)
		new_human.equip_to_slot_or_del(new eyes_type(new_human), WEAR_EYES)
	if(face_type)
		new_human.equip_to_slot_or_del(new face_type(new_human), WEAR_FACE)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/distress/isrg(new_human), WEAR_L_EAR)
	new_human.equip_to_slot_or_del(new suit_type(new_human), WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/storage/webbing/black(new_human), WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new belt_type(new_human), WEAR_WAIST)
	new_human.equip_to_slot_or_del(new back_type(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new left_pouch_type(new_human), WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new right_pouch_type(new_human), WEAR_R_STORE)

/datum/equipment_preset/survivor/isrg/load_gear(mob/living/carbon/human/new_human)
	equip_common_gear(
		new_human,
		/obj/item/clothing/under/marine/veteran/isrg/field,
		/obj/item/clothing/head/helmet/marine/veteran/isrg/field_helmet,
		/obj/item/clothing/suit/storage/jacket/marine/rmc/service/isrg/vest,
		/obj/item/storage/backpack/satchel/sec/isrg,
		/obj/item/storage/belt/medical/isrg/full,
		/obj/item/storage/pouch/survival/full/wy,
		/obj/item/storage/pouch/firstaid/ert/wy,
		/obj/item/clothing/glasses/hud/health,
		/obj/item/clothing/mask/balaclava/isrg,
	)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/rifle/rmc_f90(new_human), WEAR_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/tool/crowbar/tactical(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/rmc_f90(new_human), WEAR_IN_BACK)

/datum/equipment_preset/survivor/isrg/rescuer
	name = "Survivor - ISRG Rescuer"
	assignment = "ISRG - Rescuer"
	job_title = JOB_ISRG_RESCUER
	paygrades = list(PAY_SHORT_ISRGE2 = JOB_PLAYTIME_TIER_0)
	skills = /datum/skills/survivor/isrg_rescuer
	minimap_icon = "rifleman"
	role_comm_title = "Спас."

/datum/equipment_preset/survivor/isrg/rescuer/load_gear(mob/living/carbon/human/new_human)
	equip_common_gear(
		new_human,
		/obj/item/clothing/under/marine/veteran/isrg/field,
		/obj/item/clothing/head/helmet/marine/veteran/isrg/field_helmet,
		/obj/item/clothing/suit/storage/jacket/marine/rmc/service/isrg/vest,
		/obj/item/storage/backpack/satchel/sec/isrg,
		/obj/item/storage/belt/medical/isrg/full,
		/obj/item/storage/pouch/survival/full/wy,
		/obj/item/storage/pouch/firstaid/ert/wy,
	)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/rifle/rmc_f90(new_human), WEAR_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/tool/crowbar/tactical(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/rmc_f90(new_human), WEAR_IN_BACK)

/datum/equipment_preset/survivor/isrg/leader
	name = "Survivor - ISRG Group Leader"
	assignment = "ISRG - Group Leader"
	job_title = JOB_ISRG_LEADER
	paygrades = list(PAY_SHORT_ISRGO1 = JOB_PLAYTIME_TIER_0)
	skills = /datum/skills/survivor/isrg_leader
	minimap_icon = "leader"
	role_comm_title = "Л-р."

/datum/equipment_preset/survivor/isrg/leader/load_gear(mob/living/carbon/human/new_human)
	equip_common_gear(
		new_human,
		/obj/item/clothing/under/marine/veteran/isrg/field,
		/obj/item/clothing/head/helmet/marine/veteran/isrg/field_helmet,
		/obj/item/clothing/suit/storage/jacket/marine/rmc/service/isrg/vest,
		/obj/item/storage/backpack/satchel/sec/isrg,
		/obj/item/storage/belt/gun/m4a3/full,
		/obj/item/storage/pouch/survival/full/wy,
		/obj/item/storage/pouch/firstaid/ert/wy,
		/obj/item/clothing/glasses/sunglasses/aviator/silver,
	)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/rifle/rmc_f90(new_human), WEAR_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/tool/crowbar/tactical(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/rmc_f90(new_human), WEAR_IN_JACKET)

// Использует штатный вид/снаряжение Synthetic K9 из ядра игры (species/synth_k9.dm, k9_synth.dm).
/datum/equipment_preset/synth_k9/isrg
	name = "Survivor - ISRG Synthetic K9"
	assignment = "ISRG - Synthetic K9"
	job_title = JOB_ISRG_SYNTH
	paygrades = list(PAY_SHORT_ISRGS1 = JOB_PLAYTIME_TIER_0)
	languages = list(LANGUAGE_TSL, LANGUAGE_ENGLISH, LANGUAGE_JAPANESE, LANGUAGE_CHINESE, LANGUAGE_RUSSIAN, LANGUAGE_GERMAN, LANGUAGE_SCANDINAVIAN, LANGUAGE_FRENCH, LANGUAGE_SPANISH, LANGUAGE_YAUTJA, LANGUAGE_XENOMORPH)
	faction = FACTION_ISRG
	faction_group = FACTION_LIST_SURVIVOR_ISRG
	origin_override = ORIGIN_CIVILIAN
	minimap_icon = "synth"
	minimap_background = "leader"
	role_comm_title = "K9"
	idtype = /obj/item/card/id/dogtag
	flags = EQUIPMENT_PRESET_EXTRA
	// /datum/equipment_preset/synth_k9 (ядро) не объявляет survivor_variant, а map_config.dm
	// читает его через initial() при разборе synth_survivor_types в JSON карты - объявляем сами.
	var/survivor_variant = CIVILIAN_SURVIVOR

/datum/equipment_preset/synth_k9/isrg/New()
	. = ..()
	access = list(ACCESS_CIVILIAN_PUBLIC)

/datum/equipment_preset/synth_k9/isrg/load_gear(mob/living/carbon/human/new_human)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/under/rank/synthetic/synth_k9(new_human), WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/distress/isrg(new_human), WEAR_L_EAR)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/marine/k9_synth/medicalpack(new_human), WEAR_BACK)
	to_chat(new_human, ISRG_K9_SYNTH_NOTICE)

#undef ISRG_K9_SYNTH_NOTICE

/datum/equipment_preset/survivor/whitchler/isrg_commander
	name = "Survivor - ISRG Search Group Commander"
	assignment = "ISRG - Search Group Commander"
	job_title = JOB_ISRG_COMMANDER
	paygrades = list(PAY_SHORT_ISRGO2 = JOB_PLAYTIME_TIER_0)
	skills = /datum/skills/survivor/isrg_commander
	languages = list(LANGUAGE_TSL, LANGUAGE_ENGLISH, LANGUAGE_JAPANESE)
	faction = FACTION_ISRG
	faction_group = FACTION_LIST_SURVIVOR_ISRG
	origin_override = ORIGIN_CIVILIAN
	minimap_icon = "co"
	minimap_background = "leader"
	role_comm_title = "Ком-р"
	idtype = /obj/item/card/id/gold
	flags = EQUIPMENT_PRESET_START_OF_ROUND
	access = list(
		ACCESS_CIVILIAN_PUBLIC,
		ACCESS_CIVILIAN_RESEARCH,
		ACCESS_CIVILIAN_ENGINEERING,
		ACCESS_CIVILIAN_LOGISTICS,
		ACCESS_CIVILIAN_BRIG,
		ACCESS_CIVILIAN_MEDBAY,
		ACCESS_CIVILIAN_COMMAND,
	)

/datum/equipment_preset/survivor/whitchler/isrg_commander/load_gear(mob/living/carbon/human/new_human)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/under/marine/veteran/isrg/dress(new_human), WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/corporate/knife(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine/veteran(new_human), WEAR_HANDS)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/beret/isrg/dress(new_human), WEAR_HEAD)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/glasses/sunglasses/aviator(new_human), WEAR_EYES)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/distress/isrg(new_human), WEAR_L_EAR)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/jacket/marine/rmc/service/isrg/dress(new_human), WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/storage/webbing/black(new_human), WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/gun/m4a3/full(new_human), WEAR_WAIST)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/satchel/sec/isrg(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/survival/full/wy(new_human), WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/firstaid/ert/wy(new_human), WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/tool/crowbar/tactical(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/notepad(new_human), WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/tool/pen/multicolor/fountain(new_human), WEAR_IN_R_STORE)
