/obj/item/clothing/gloves/gauntlets	//Used to cover gloves, otherwise act as gloves.
	name = "gauntlets"
	desc = "These gloves go over regular gloves."
	icon_state = "yellow"
//	item_state = "ygloves"
	overgloves = 1
	var/obj/item/clothing/gloves/gloves = null	//Undergloves
	var/mob/living/carbon/human/wearer = null	//For glove procs

/obj/item/clothing/gloves/gauntlets/mob_can_equip(mob/user)
	var/mob/living/carbon/human/H = user
	if(H.gloves)
		gloves = H.gloves
		if(gloves.overgloves)
			user << "You are unable to wear \the [src] as \the [H.gloves] are in the way."
			gloves = null
			return 0
		H.drop_from_inventory(gloves)
		gloves.forceMove(src)

	if(!..())
		if(gloves)
			if(H.equip_to_slot_if_possible(gloves, slot_gloves))
				gloves = null
			return 0
	if(gloves)
		user << "You slip \the [src] on over \the [gloves]."
	wearer = H
	return 1

/obj/item/clothing/gloves/gauntlets/dropped()
	var/mob/living/carbon/human/H = wearer
	if(gloves)
		if(!H.equip_to_slot_if_possible(gloves, slot_gloves))
			gloves.forceMove(get_turf(src))
		src.gloves = null
	wearer = null
	..()