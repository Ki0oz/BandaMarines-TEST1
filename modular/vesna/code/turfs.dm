// --- Пол ---

/turf/open/floor/vesna
	name = "floor"
	icon = 'modular/vesna/icons/turf/floors/general.dmi'
	icon_state = "vesna_general_default"
	plating_type = /turf/open/floor/plating/almayer

/turf/open/floor/vesna/medical
	icon = 'modular/vesna/icons/turf/floors/medical.dmi'
	icon_state = "vesna_medical_white"

/turf/open/floor/vesna/science
	icon = 'modular/vesna/icons/turf/floors/science.dmi'
	icon_state = "vesna_science_green"

/turf/open/floor/vesna/security
	icon = 'modular/vesna/icons/turf/floors/security.dmi'
	icon_state = "vesna_security_red"

/turf/open/floor/vesna/command
	icon = 'modular/vesna/icons/turf/floors/command.dmi'
	icon_state = "vesna_command_blue"

/turf/open/floor/vesna/engineering
	icon = 'modular/vesna/icons/turf/floors/engineering.dmi'
	icon_state = "vesna_engineering_orange"

// --- Стены (наследуются от almayer, чтобы получить damage/decoration/tiles_with логику бесплатно) ---

/turf/closed/wall/almayer/vesna
	name = "hull"
	desc = "Переборка, разделяющая отсеки корвета «Весна»."
	icon = 'modular/vesna/icons/turf/walls/wall.dmi'

/turf/closed/wall/almayer/vesna/reinforced
	name = "reinforced hull"
	desc = "Усиленная переборка корвета «Весна»."

/turf/closed/wall/almayer/vesna/outer
	name = "outer hull"
	desc = "Внешняя обшивка корвета «Весна»."

// --- Окна (наследуются от almayer, чтобы получить health/reinf/basestate логику бесплатно) ---

/obj/structure/window/framed/vesna
	name = "window"
	desc = "Стеклопанель в переборке корвета «Весна»."
	icon = 'modular/vesna/icons/turf/walls/window.dmi'
	icon_state = "vesna_alm_window0"
	basestate = "vesna_alm_window"
	reinf = 0
	health = 50
	window_frame = /obj/structure/window_frame/almayer

/obj/structure/window/framed/vesna/reinforced
	name = "reinforced window"
	desc = "Бронестеклопанель в переборке корвета «Весна»."
	icon_state = "vesna_alm_rwindow0"
	basestate = "vesna_alm_rwindow"
	reinf = 1
	health = 100

/obj/structure/window/framed/vesna/hull
	name = "hull window"
	desc = "Иллюминатор из сверхпрочного стекла корвета «Весна». Пробить неоткуда."
	icon_state = "vesna_alm_rwindow0"
	basestate = "vesna_alm_rwindow"
	reinf = 1
	not_damageable = TRUE
	not_deconstructable = TRUE
	unslashable = TRUE
	unacidable = TRUE
	health = 1000000
