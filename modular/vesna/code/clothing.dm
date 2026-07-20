// Одежда экипажа "Весны" - корвет РХБЗ (радиационная, химическая и биологическая защита).
// Текстуры - переименованные копии стандартной формы/брони/шлема УПП, готовы к перекраске.

/obj/item/clothing/under/marine/veteran/UPP/vesna
	name = "\improper Форма РХБЗ СПН"
	desc = "Комплект формы экипажа корвета РХБЗ «Весна»."
	icon = 'modular/vesna/icons/obj/uniform/vesna_uniform.dmi'
	item_icons = list(
		WEAR_BODY = 'modular/vesna/icons/onmob/uniform/vesna_uniform.dmi'
	)

/obj/item/clothing/under/marine/veteran/UPP/vesna/leader
	name = "\improper Форма лидера РХБЗ СПН"
	desc = "Комплект формы командного состава корвета РХБЗ «Весна»."
	icon_state = "upp_uniform_officer"
	worn_state = "upp_uniform_officer"

/obj/item/clothing/suit/storage/marine/faction/UPP/vesna
	name = "\improper Броня РХБЗ СПН"
	desc = "Защитная броня экипажа корвета РХБЗ «Весна»."
	icon = 'modular/vesna/icons/obj/suit/vesna_suit.dmi'
	item_icons = list(
		WEAR_JACKET = 'modular/vesna/icons/onmob/suit/vesna_suit.dmi'
	)

/obj/item/clothing/head/helmet/marine/veteran/UPP/vesna
	name = "\improper Шлем РХБЗ СПН"
	desc = "Защитный шлем экипажа корвета РХБЗ «Весна»."
	icon = 'modular/vesna/icons/obj/head/vesna_head.dmi'
	item_icons = list(
		WEAR_HEAD = 'modular/vesna/icons/onmob/head/vesna_head.dmi',
		WEAR_L_HAND = 'icons/mob/humans/onmob/inhands/items_by_map/jungle_lefthand.dmi',
		WEAR_R_HAND = 'icons/mob/humans/onmob/inhands/items_by_map/jungle_righthand.dmi'
	)
