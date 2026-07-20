/obj/item/storage/box/vesna_spec_kit
	name = "\improper ящик специалиста"
	desc = "Ящик со снаряжением на выбор: сапёр, огнемётчик или снайпер. Открывается только один раз."
	icon = 'icons/obj/items/storage/kits.dmi'
	icon_state = "spec_kit"
	w_class = SIZE_MEDIUM

/obj/item/storage/box/vesna_spec_kit/attack_self(mob/living/carbon/human/user)
	if(!ishuman(user))
		to_chat(user, SPAN_WARNING("Вы не можете это использовать!"))
		return

	var/choice = tgui_input_list(user, "Выберите специализацию.", "Выбор специалиста", list("Сапёр", "Огнемётчик", "Снайпер"))
	if(!choice || QDELETED(src) || user.incapacitated())
		return

	switch(choice)
		if("Сапёр")
			equip_sapper(user)
		if("Огнемётчик")
			equip_pyro(user)
		if("Снайпер")
			equip_sniper(user)
		else
			return

	qdel(src)

/obj/item/storage/box/vesna_spec_kit/proc/equip_sapper(mob/living/carbon/human/user)
	user.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/marine/M3T/vesna(user), WEAR_HEAD)
	user.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/marine/M3T/vesna(user), WEAR_JACKET)
	user.put_in_any_hand_if_possible(new /obj/item/weapon/gun/launcher/rocket/m5/vesna(user))
	user.equip_to_slot_or_del(new /obj/item/ammo_magazine/rocket(user), WEAR_IN_BACK)
	user.equip_to_slot_or_del(new /obj/item/ammo_magazine/rocket/ap(user), WEAR_IN_BACK)
	user.equip_to_slot_or_del(new /obj/item/ammo_magazine/rocket/wp(user), WEAR_IN_BACK)
	user.skills?.set_skill(SKILL_SPEC_WEAPONS, SKILL_SPEC_ROCKET) // иначе able_to_fire() у M5 откажет - см. rocket_launcher.dm skill_fail()
	to_chat(user, SPAN_NOTICE("Вы вооружены как сапёр отряда."))

/obj/item/storage/box/vesna_spec_kit/proc/equip_pyro(mob/living/carbon/human/user)
	user.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/marine/pyro/vesna(user), WEAR_HEAD)
	user.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/marine/M35/vesna(user), WEAR_JACKET)
	user.put_in_any_hand_if_possible(new /obj/item/weapon/gun/flamer/m240/spec/vesna(user))
	user.equip_to_slot_or_del(new /obj/item/ammo_magazine/flamer_tank/large(user), WEAR_IN_BACK)
	user.skills?.set_skill(SKILL_SPEC_WEAPONS, SKILL_SPEC_PYRO) // иначе able_to_fire() у M240 откажет
	to_chat(user, SPAN_NOTICE("Вы вооружены как огнемётчик отряда."))

/obj/item/storage/box/vesna_spec_kit/proc/equip_sniper(mob/living/carbon/human/user)
	user.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/marine/ghillie/vesna(user), WEAR_HEAD)
	user.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/marine/ghillie/vesna(user), WEAR_JACKET)
	user.put_in_any_hand_if_possible(new /obj/item/weapon/gun/rifle/sniper/M42A/vesna(user))
	user.equip_to_slot_or_del(new /obj/item/ammo_magazine/sniper(user), WEAR_IN_BACK)
	user.equip_to_slot_or_del(new /obj/item/ammo_magazine/sniper/incendiary(user), WEAR_IN_BACK)
	user.skills?.set_skill(SKILL_SPEC_WEAPONS, SKILL_SPEC_SNIPER) // иначе able_to_fire() у M42A откажет
	to_chat(user, SPAN_NOTICE("Вы вооружены как снайпер отряда."))
