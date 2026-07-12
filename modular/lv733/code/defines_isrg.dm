// ISRG - Imperial Search and Recovery Group (LV-733 survivor cell)
// FACTION_ISRG / MOB_HUD_FACTION_ISRG / ISRG_FREQ live in modular/clothing/code/defines_isrg.dm
// since modular/clothing is compiled before modular/lv733.

#define FACTION_LIST_SURVIVOR_ISRG list(FACTION_SURVIVOR, FACTION_ISRG)

#define JOB_ISRG_COMMANDER "ISRG Search Group Commander"
#define JOB_ISRG_LEADER "ISRG Group Leader"
#define JOB_ISRG_K9 "ISRG K9 Handler"
#define JOB_ISRG_RESCUER "ISRG Rescuer"
#define JOB_ISRG_SYNTH "ISRG Synthetic"

#define PAY_SHORT_ISRGE1 "ISRE1"
#define PAY_SHORT_ISRGE2 "ISRE2"
#define PAY_SHORT_ISRGO1 "ISRO1"
#define PAY_SHORT_ISRGO2 "ISRO2"
#define PAY_SHORT_ISRGS1 "ISRS1"

/// ISRG Rank and file

/datum/paygrade/isrg
	name = "ISRG"

/datum/paygrade/isrg/e1
	paygrade = PAY_SHORT_ISRGE1
	name = "Кинолог"
	prefix = "Кин."

/datum/paygrade/isrg/e2
	paygrade = PAY_SHORT_ISRGE2
	name = "Спасатель"
	prefix = "Спас."

/// ISRG Officers

/datum/paygrade/isrg/o1
	paygrade = PAY_SHORT_ISRGO1
	name = "Лидер Группы"
	prefix = "Л-р."

/datum/paygrade/isrg/o2
	paygrade = PAY_SHORT_ISRGO2
	name = "Командир Поисковой Группы"
	prefix = "К-р."

/// ISRG Synthetic

/datum/paygrade/isrg/s1
	paygrade = PAY_SHORT_ISRGS1
	name = "Синтетик"
	prefix = "Синт."
