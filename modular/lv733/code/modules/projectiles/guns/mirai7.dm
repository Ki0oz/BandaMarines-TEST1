/obj/item/weapon/gun/smg/m39/isrg
	name = "\improper Mirai-7 submachinegun"
	desc = "Пистолет-пулемёт Mirai-7, используемый поисковой группой ISRG. Использует стандартные патроны 10x20mm."
	icon = 'modular/lv733/icons/mirai7/mirai7.dmi'
	icon_state = "mirai7"
	item_state = "mirai7"
	item_icons = list(
		WEAR_BACK = 'modular/lv733/icons/mirai7/mirai7_back.dmi',
		WEAR_J_STORE = 'modular/lv733/icons/mirai7/mirai7_suit_store.dmi',
		WEAR_L_HAND = 'modular/lv733/icons/mirai7/mirai7_lefthand.dmi',
		WEAR_R_HAND = 'modular/lv733/icons/mirai7/mirai7_righthand.dmi',
	)
	map_specific_decoration = FALSE
	current_mag = /obj/item/ammo_magazine/smg/m39/extended/isrg

/obj/item/ammo_magazine/smg/m39/extended/isrg
	name = "\improper Mirai-7 extended magazine (10x20mm)"
	desc = "Увеличенный магазин на 10x20mm для Mirai-7."
	icon = 'modular/lv733/icons/mirai7/mirai7_mag_extended.dmi'
	icon_state = "mirai7_extended"
	bonus_overlay = "mirai7_ex"
	bonus_overlay_icon = null
	ammo_band_icon = "+mirai7_band"
	ammo_band_icon_empty = "+mirai7_band_e"
	gun_type = /obj/item/weapon/gun/smg/m39/isrg

/obj/item/ammo_magazine/smg/m39/ap/isrg
	name = "\improper Mirai-7 AP magazine (10x20mm)"
	desc = "Бронебойный магазин на 10x20mm для Mirai-7."
	icon = 'modular/lv733/icons/mirai7/mirai7_mag_ap.dmi'
	icon_state = "mirai7_ap"
	ammo_band_icon = "+mirai7_band"
	ammo_band_icon_empty = "+mirai7_band_e"
	gun_type = /obj/item/weapon/gun/smg/m39/isrg
