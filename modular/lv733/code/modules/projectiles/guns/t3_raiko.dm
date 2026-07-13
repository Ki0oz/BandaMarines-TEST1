// ISRG - T3 «Райко» smartgun (реskin M56A2, code/modules/projectiles/guns/smartgun.dm, /obj/item/weapon/gun/smartgun).
// Значения и функции полностью унаследованы от оригинала, кроме собственных боеприпасов и объёма барабана -
// у T3 «Райко» только один магазин (обычный), AP-режим переключается штатной способностью смартгана.
// Иконки оружия/рук/подсумка - готовые заготовки (см. modular/lv733/icons/t3_raiko_smartgun); часть из них
// (кисти рук, подсумок под жилет) пока используют состояния базового M56 - переименует автор позже.
// Иконка магазина - временная заглушка (t3_raiko_mag.dmi), автор перерисует отдельно.

/obj/item/weapon/gun/smartgun/isrg
	name = "\improper T3 «Райко»"
	desc = "Смартган T3 «Райко», используемый группой ISRG. Облегчённая версия под собственный барабанный магазин."
	icon = 'modular/lv733/icons/t3_raiko_smartgun/t3_raiko.dmi'
	icon_state = "t3_raiko"
	item_state = "t3_raiko"
	item_icons = list(
		WEAR_BACK = 'modular/lv733/icons/t3_raiko_smartgun/t3_raiko_back.dmi',
		WEAR_J_STORE = 'modular/lv733/icons/t3_raiko_smartgun/m56_suit_store.dmi',
		WEAR_L_HAND = 'modular/lv733/icons/t3_raiko_smartgun/m56_lefthand.dmi',
		WEAR_R_HAND = 'modular/lv733/icons/t3_raiko_smartgun/m56_righthand.dmi',
	)
	gun_faction = FACTION_ISRG
	current_mag = /obj/item/ammo_magazine/smartgun/isrg
	ammo_primary_def = /datum/ammo/bullet/smartgun/isrg
	ammo_secondary_def = /datum/ammo/bullet/smartgun/isrg/armor_piercing
	ammo_primary_alt = /datum/ammo/bullet/smartgun/isrg/alt
	ammo_secondary_alt = /datum/ammo/bullet/smartgun/isrg/armor_piercing/alt

/obj/item/ammo_magazine/smartgun/isrg
	name = "\improper T3 drum"
	desc = "Барабанный магазин на 450 патронов для смартгана T3 «Райко»."
	icon = 'modular/lv733/icons/t3_raiko_smartgun/t3_raiko_mag.dmi'
	icon_state = "t3_raiko_mag"
	max_rounds = 420
	gun_type = /obj/item/weapon/gun/smartgun/isrg

/datum/ammo/bullet/smartgun/isrg
	name = "T3 smartgun tracer bullet"
	damage = 32
	accuracy = HIT_ACCURACY_TIER_5

/datum/ammo/bullet/smartgun/isrg/alt
	name = "T3 smartgun bullet"
	icon_state = "redbullet"
	damage_falloff = DAMAGE_FALLOFF_TIER_6
	effective_range_max = 8

/datum/ammo/bullet/smartgun/isrg/armor_piercing
	name = "\improper AP T3 smartgun tracer bullet"
	icon_state = "bullet_ap_iff"
	damage = 24
	accuracy = HIT_ACCURACY_TIER_3
	penetration = ARMOR_PENETRATION_TIER_8
	damage_armor_punch = 1

/datum/ammo/bullet/smartgun/isrg/armor_piercing/alt
	name = "\improper AP T3 smartgun bullet"
	icon_state = "bullet"
	damage_falloff = DAMAGE_FALLOFF_TIER_7
	effective_range_max = 7

/obj/item/clothing/suit/storage/marine/smartgunner/isrg
	name = "\improper T3 combat harness"
	desc = "Лёгкий жилет ISRG для переноски смартгана T3 «Райко» и боеприпасов к нему."
	icon = 'modular/lv733/icons/t3_raiko_smartgun/isrg_smart_armor.dmi'
	icon_state = "8"
	item_icons = list(
		WEAR_JACKET = 'modular/lv733/icons/t3_raiko_smartgun/isrg_smart_worn.dmi',
	)

/obj/item/clothing/suit/storage/marine/smartgunner/isrg/Initialize()
	. = ..()
	name = "\improper T3 combat harness"
