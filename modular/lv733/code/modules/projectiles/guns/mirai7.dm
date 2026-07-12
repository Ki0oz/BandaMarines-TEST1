// ISRG - Mirai-7 (реskin M39, копия code/modules/projectiles/guns/smgs.dm, /obj/item/weapon/gun/smg/m39).
// Значения и функции полностью унаследованы от оригинала. Патроны/калибр - как у M39 (10x20mm),
// но своих магазинов у Mirai-7 только два: увеличенный и АП, каждый со своими иконками
// (см. code/modules/projectiles/magazines/smgs.dm за базовыми типами).
// Текстуры - временная заглушка, автор перерисует отдельно.

/obj/item/weapon/gun/smg/m39/isrg
	name = "\improper Mirai-7 submachinegun"
	desc = "Пистолет-пулемёт Mirai-7, используемый поисковой группой ISRG. Использует стандартные патроны 10x20mm."
	icon = 'modular/lv733/icons/mirai7.dmi'
	icon_state = "mirai7"
	item_state = "mirai7"
	item_icons = list(
		WEAR_BACK = 'modular/lv733/icons/mirai7_back.dmi',
		WEAR_J_STORE = 'modular/lv733/icons/mirai7_suit_store.dmi',
		WEAR_L_HAND = 'modular/lv733/icons/mirai7_lefthand.dmi',
		WEAR_R_HAND = 'modular/lv733/icons/mirai7_righthand.dmi',
	)
	current_mag = /obj/item/ammo_magazine/smg/m39/extended/isrg

// Магазины - те же боеприпасы 10x20mm, что и у M39, каждый со своей иконкой (не переиспользуют спрайты M39).

/obj/item/ammo_magazine/smg/m39/extended/isrg
	name = "\improper Mirai-7 extended magazine (10x20mm)"
	desc = "Увеличенный магазин на 10x20mm для Mirai-7."
	icon = 'modular/lv733/icons/mirai7_mag_extended.dmi'
	icon_state = "mirai7_extended"
	bonus_overlay = "mirai7_ex"
	bonus_overlay_icon = null // null = берёт иконку самого оружия (mirai7.dmi, состояние mirai7_ex)
	ammo_band_icon = "+mirai7_band"
	ammo_band_icon_empty = "+mirai7_band_e"
	gun_type = /obj/item/weapon/gun/smg/m39/isrg

/obj/item/ammo_magazine/smg/m39/ap/isrg
	name = "\improper Mirai-7 AP magazine (10x20mm)"
	desc = "Бронебойный магазин на 10x20mm для Mirai-7."
	icon = 'modular/lv733/icons/mirai7_mag_ap.dmi'
	icon_state = "mirai7_ap"
	ammo_band_icon = "+mirai7_band"
	ammo_band_icon_empty = "+mirai7_band_e"
	gun_type = /obj/item/weapon/gun/smg/m39/isrg
