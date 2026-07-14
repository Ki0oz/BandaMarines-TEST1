#define ISRG_NVG_WORK_CHANCE 5 // % шанс, что конкретный экземпляр старого ПНВ вообще исправен

/obj/item/device/helmet_visor/night_vision/isrg
	name = "Старый прибор ночного видения"
	desc = "Старое устройство ночного видения, из-за недавних событий оно временно не работает."
	icon = 'modular/lv733/icons/isrg_nvg/isrg_nvg_item.dmi'
	icon_state = "isrg_nvg_sight"
	helmet_overlay_icon = 'modular/lv733/icons/isrg_nvg/isrg_nvg_worn.dmi'
	helmet_overlay = "isrg_nvg_sight_right"

	var/is_working = FALSE

/obj/item/device/helmet_visor/night_vision/isrg/Initialize(mapload, ...)
	. = ..()
	is_working = prob(ISRG_NVG_WORK_CHANCE)
	if(is_working)
		desc += " Впрочем, судя по индикатору, этот экземпляр всё ещё в рабочем состоянии."

/obj/item/device/helmet_visor/night_vision/isrg/can_toggle(mob/living/carbon/human/user)
	. = ..()
	if(!.)
		return

	if(!is_working)
		to_chat(user, SPAN_WARNING("[src] пару раз мигает и гаснет - похоже, этот экземпляр окончательно вышел из строя."))
		return FALSE

	return TRUE

#undef ISRG_NVG_WORK_CHANCE
