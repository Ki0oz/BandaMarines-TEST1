/obj/structure/machinery/defenses/planted_flag/roaf
	name = "\improper Полевой флагшток ROAF"
	desc = "A planted flag bearing ROAF colors, providing a rallying point for nearby ROAF personnel."
	icon = 'modular/lv733/icons/planted_flag.dmi'
	handheld_type = /obj/item/defenses/handheld/planted_flag/roaf
	defense_type = "Normal"
	faction = FACTION_ROAF
	selected_categories = list(
		SENTRY_CATEGORY_IFF = FACTION_ROAF,
	)

/obj/item/defenses/handheld/planted_flag/roaf
	name = "\improper Сложенный полевой флагшток ROAF"
	desc = "A compact ROAF defensive rally flag, designed for deployment in the field."
	icon = 'modular/lv733/icons/planted_flag.dmi'
	icon_state = "Normal planted_flag_handheld"
	defense_type = /obj/structure/machinery/defenses/planted_flag/roaf
	deployment_time = 1 SECONDS

/obj/structure/machinery/defenses/planted_flag/clf_wy
	name = "\improper Полевой флагшток CLF-WP"
	desc = "Флаг с цветами CLF-WP, служащий точкой сбора для бойцов Ячейки."
	icon = 'modular/lv733/icons/planted_flag.dmi'
	handheld_type = /obj/item/defenses/handheld/planted_flag/clf_wy
	defense_type = "Normal"
	faction = FACTION_CLF_WY
	selected_categories = list(
		SENTRY_CATEGORY_IFF = FACTION_CLF_WY,
	)

/obj/item/defenses/handheld/planted_flag/clf_wy
	name = "\improper Сложенный полевой флагшток CLF-WP"
	desc = "Компактный флаг CLF-WP, предназначенный для развёртывания в поле."
	icon = 'modular/lv733/icons/planted_flag.dmi'
	icon_state = "Normal planted_flag_handheld"
	defense_type = /obj/structure/machinery/defenses/planted_flag/clf_wy
	deployment_time = 1 SECONDS

/obj/structure/machinery/defenses/planted_flag/isrg
	name = "\improper Полевой флагшток ISRG"
	desc = "Флаг с цветами ISRG, служащий точкой сбора для поисковой группы."
	icon = 'modular/lv733/icons/planted_flag.dmi'
	handheld_type = /obj/item/defenses/handheld/planted_flag/isrg
	defense_type = "Normal"
	faction = FACTION_ISRG
	selected_categories = list(
		SENTRY_CATEGORY_IFF = FACTION_ISRG,
	)

/obj/item/defenses/handheld/planted_flag/isrg
	name = "\improper Сложенный полевой флагшток ISRG"
	desc = "Компактный флаг ISRG, предназначенный для развёртывания в поле."
	icon = 'modular/lv733/icons/planted_flag.dmi'
	icon_state = "Normal planted_flag_handheld"
	defense_type = /obj/structure/machinery/defenses/planted_flag/isrg
	deployment_time = 1 SECONDS
