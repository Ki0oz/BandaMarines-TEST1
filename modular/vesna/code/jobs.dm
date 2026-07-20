// Командир группы (FTL) корвета "Весна" - должность отдельная от обычного стрелка УПП,
// снаряжение то же самое, что у стрелка, плюс карта для навигации отделением.

/datum/job/antag/upp/vesna_ftl
	title = JOB_UPP_VESNA_FTL
	flags_startup_parameters = ROLE_ADD_TO_SQUAD
	gear_preset = /datum/equipment_preset/upp/vesna_ftl

/datum/equipment_preset/upp/vesna_ftl
	name = "UPP Fireteam Leader (Vesna)"
	flags = EQUIPMENT_PRESET_EXTRA
	skills = /datum/skills/upp
	assignment = JOB_UPP_VESNA_FTL
	job_title = JOB_UPP_VESNA_FTL
	role_comm_title = "FTL"
	minimap_icon = "upp_pvt"
	paygrades = list(PAY_SHORT_UE4 = JOB_PLAYTIME_TIER_0)
	access = list(
		ACCESS_UPP_GENERAL,
	)

/datum/equipment_preset/upp/vesna_ftl/load_gear(mob/living/carbon/human/new_human)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/distress/UPP, WEAR_L_EAR)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/marine/veteran/UPP/vesna, WEAR_HEAD)
	var/obj/item/clothing/under/marine/veteran/UPP/vesna/uniform = new()
	new_human.equip_to_slot_or_del(uniform, WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/patch/upp, WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/patch/upp/naval, WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/marine/faction/UPP/vesna, WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/device/binoculars, WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/upp/knife, WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine/veteran/upp, WEAR_HANDS)

	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/lightpack/upp, WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/mre/upp, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/map/current_map, WEAR_IN_BACK)

	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/rifle/type71/rifleman, WEAR_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/marine/upp/full, WEAR_WAIST)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/explosive, WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/grenade/high_explosive/upp, WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/explosive/grenade/high_explosive/upp, WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/firstaid/ert, WEAR_L_STORE)

/datum/job/antag/upp/vesna_specialist
	title = JOB_UPP_VESNA_SPECIALIST
	flags_startup_parameters = ROLE_ADD_TO_SQUAD
	gear_preset = /datum/equipment_preset/upp/vesna_specialist

/datum/equipment_preset/upp/vesna_specialist
	name = "UPP Specialist (Vesna)"
	flags = EQUIPMENT_PRESET_EXTRA
	skills = /datum/skills/upp
	assignment = JOB_UPP_VESNA_SPECIALIST
	job_title = JOB_UPP_VESNA_SPECIALIST
	role_comm_title = "Spc"
	minimap_icon = "upp_pvt"
	paygrades = list(PAY_SHORT_UE3 = JOB_PLAYTIME_TIER_0)
	access = list(
		ACCESS_UPP_GENERAL,
	)

/datum/equipment_preset/upp/vesna_specialist/load_gear(mob/living/carbon/human/new_human)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/distress/UPP, WEAR_L_EAR)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/marine/veteran/UPP/vesna, WEAR_HEAD)
	var/obj/item/clothing/under/marine/veteran/UPP/vesna/uniform = new()
	new_human.equip_to_slot_or_del(uniform, WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/patch/upp, WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/patch/upp/naval, WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/marine/faction/UPP/vesna, WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/upp/knife, WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine/veteran/upp, WEAR_HANDS)

	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/lightpack/upp, WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/mre/upp, WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/marine/upp/full, WEAR_WAIST)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/firstaid/ert, WEAR_L_STORE)

	new_human.equip_to_slot_or_del(new /obj/item/storage/box/vesna_spec_kit(new_human), WEAR_R_STORE)

/datum/job/antag/upp/officer/kapitan/vesna

/datum/job/antag/upp/officer/major/vesna

/datum/job/antag/upp/officer/senior/vesna
	total_positions = 2
	spawn_positions = 2
