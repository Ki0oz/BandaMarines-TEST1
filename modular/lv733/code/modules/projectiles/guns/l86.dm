/obj/item/weapon/gun/rifle/m4ra/isrg
	name = "\improper L86 «Кай»"
	desc = "Магазинная винтовка L86 «Кай», переоборудованная под патрон 10x24mm и используемая группой ISRG для точной стрельбы на дальние дистанции."
	icon = 'modular/lv733/icons/l86kai/l86kai.dmi'
	icon_state = "l86kai"
	item_state = "l86kai"
	item_icons = list(
		WEAR_BACK = 'modular/lv733/icons/l86kai/l86kai_back.dmi',
		WEAR_J_STORE = 'modular/lv733/icons/l86kai/l86kai_suit_store.dmi',
		WEAR_L_HAND = 'modular/lv733/icons/l86kai/l86kai_lefthand.dmi',
		WEAR_R_HAND = 'modular/lv733/icons/l86kai/l86kai_righthand.dmi',
	)
	current_mag = /obj/item/ammo_magazine/rifle/m4ra/isrg

/obj/item/weapon/gun/rifle/m4ra/isrg/set_gun_config_values()
	..()
	accuracy_mult += HIT_ACCURACY_MULT_TIER_2
	scatter = SCATTER_AMOUNT_TIER_10

/obj/item/ammo_magazine/rifle/m4ra/isrg
	name = "\improper Магазин L86 «Кай»"
	desc = "Магазин на 10x24mm для L86 «Кай»."
	icon = 'modular/lv733/icons/l86kai/l86kai_mag.dmi'
	icon_state = "l86kai_mag"
	caliber = "10x24mm"
	default_ammo = /datum/ammo/bullet/rifle/isrg
	max_rounds = 32
	gun_type = /obj/item/weapon/gun/rifle/m4ra/isrg

/obj/item/ammo_magazine/rifle/m4ra/isrg/ap
	name = "\improper Бронебойный магазин L86 «Кай»"
	desc = "Бронебойный магазин на 10x24mm для L86 «Кай»."
	icon = 'modular/lv733/icons/l86kai/l86kai_mag_ap.dmi'
	icon_state = "l86kai_mag_ap"
	default_ammo = /datum/ammo/bullet/rifle/isrg/ap
	max_rounds = 26

// Боеприпасы - выше урон/точность базового патрона 10x24mm (см. code/datums/ammo/bullet/rifle.dm).

/datum/ammo/bullet/rifle/isrg
	name = "l86 rifle bullet"
	damage = 38
	accuracy = HIT_ACCURACY_TIER_5

/datum/ammo/bullet/rifle/isrg/ap
	name = "armor-piercing l86 rifle bullet"
	damage = 30
	penetration = ARMOR_PENETRATION_TIER_8
