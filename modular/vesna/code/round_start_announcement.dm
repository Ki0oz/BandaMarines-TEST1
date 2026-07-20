/datum/vesna_round_announcer

/datum/vesna_round_announcer/New()
	. = ..()
	RegisterSignal(SSdcs, COMSIG_GLOB_MODE_POSTSETUP, PROC_REF(announce))

/datum/vesna_round_announcer/proc/announce()
	SIGNAL_HANDLER
	marine_announcement("Рота, подъём! Перехвачен сигнал бедствия.", "Столп #22/3", 'sound/AI/commandreport.ogg')

GLOBAL_DATUM_INIT(vesna_round_announcer, /datum/vesna_round_announcer, new)
