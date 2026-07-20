// --- Боеприпасы ---

/obj/structure/machinery/cm_vending/sorted/cargo_ammo/upp_squad/vesna_one
	squad_tag = SQUAD_VESNA_1
	req_access = list(ACCESS_UPP_GENERAL, ACCESS_VESNA_SQUAD_1)

/obj/structure/machinery/cm_vending/sorted/cargo_ammo/upp_squad/vesna_two
	squad_tag = SQUAD_VESNA_2
	req_access = list(ACCESS_UPP_GENERAL, ACCESS_VESNA_SQUAD_2)

// --- Утилиты/снаряжение ---

/obj/structure/machinery/cm_vending/sorted/cargo_guns/upp_squad/vesna_one
	squad_tag = SQUAD_VESNA_1
	req_access = list(ACCESS_UPP_GENERAL, ACCESS_VESNA_SQUAD_1)

/obj/structure/machinery/cm_vending/sorted/cargo_guns/upp_squad/vesna_two
	squad_tag = SQUAD_VESNA_2
	req_access = list(ACCESS_UPP_GENERAL, ACCESS_VESNA_SQUAD_2)

// --- Обвесы на оружие ---

/obj/structure/machinery/cm_vending/sorted/attachments/upp_squad/vesna_one
	squad_tag = SQUAD_VESNA_1
	req_access = list(ACCESS_UPP_GENERAL, ACCESS_VESNA_SQUAD_1)

/obj/structure/machinery/cm_vending/sorted/attachments/upp_squad/vesna_two
	squad_tag = SQUAD_VESNA_2
	req_access = list(ACCESS_UPP_GENERAL, ACCESS_VESNA_SQUAD_2)

// --- Нашивки отряда - тот же спрайт УПП-нашивки, перекрашенный в цвет отряда ---

/obj/item/clothing/accessory/patch/upp/vesna_one
	name = "нашивка отряда «Алый»"
	desc = "Нашивка отряда «Алый» корвета УПП «Весна»."
	color = "#c41e1e"

/obj/item/clothing/accessory/patch/upp/vesna_two
	name = "нашивка отряда «Ворон»"
	desc = "Нашивка отряда «Ворон» корвета УПП «Весна»."
	color = "#4a515c"

// Добавляем нашивку в вендор утилит каждого отряда (сама одежда/доступ уже настроены выше)

/obj/structure/machinery/cm_vending/sorted/cargo_guns/upp_squad/vesna_one/populate_product_list(scale)
	. = ..()
	listed_products += list(
		list("НАШИВКА ОТРЯДА", -1, null, null),
		list("Нашивка «Алый»", floor(scale * 2), /obj/item/clothing/accessory/patch/upp/vesna_one, VENDOR_ITEM_REGULAR),
	)

/obj/structure/machinery/cm_vending/sorted/cargo_guns/upp_squad/vesna_two/populate_product_list(scale)
	. = ..()
	listed_products += list(
		list("НАШИВКА ОТРЯДА", -1, null, null),
		list("Нашивка «Ворон»", floor(scale * 2), /obj/item/clothing/accessory/patch/upp/vesna_two, VENDOR_ITEM_REGULAR),
	)
