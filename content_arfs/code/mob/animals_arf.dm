/mob/living/simple_mob/animal/sif/sakimm/racoon
	name = "racoon"
	desc = "Is a cute racoon!."
	tt_desc = "S Procyon cogitae"
	catalogue_data = list(/datum/category_item/catalogue/fauna/sakimm)

	faction = "sakimm"

	icon_state = "raccoon"
	icon_living = "raccoon"
	icon_dead = "raccoon_dead"
	icon_rest = "raccoon_dead"
	icon = 'content_arfs/icons/mob/animal_arfs.dmi'

/mob/living/simple_mob/animal/passive/armadillo
	name = "Armadillo"
	desc = "It's a small armored mammal. Seems to enjoy rolling around and sleep as a ball."
	tt_desc = "Dasypus novemcinctus"
	faction = "mexico" //They are from Mexico.

	icon = 'content_arfs/icons/mob/animal_arfs.dmi'
	icon_state = "armadillo"
	item_state = "armadillo_rest"
	icon_living = "armadillo"
	icon_rest = "armadillo_rest"
	icon_dead = "armadillo_dead"

	health = 30
	maxHealth = 30

	mob_size = MOB_SMALL
	pass_flags = PASSTABLE
	can_pull_size = ITEMSIZE_TINY
	can_pull_mobs = MOB_PULL_NONE
	layer = MOB_LAYER
	density = 0
	movement_cooldown = 0.75 //roughly a bit faster than a person

	response_help  = "pets"
	response_disarm = "rolls aside"
	response_harm   = "stomps"

	melee_damage_lower = 2
	melee_damage_upper = 1
	attacktext = list("nips", "bumps", "scratches")

	vore_taste = "Sand"

	min_oxy = 16 //Require atleast 16kPA oxygen
	minbodytemp = 223		//Below -50 Degrees Celcius
	maxbodytemp = 523	//Above 80 Degrees Celcius
	heat_damage_per_tick = 3
	cold_damage_per_tick = 3

	meat_amount = 2

	speak_emote = list("rumbles", "chirr?", "churr")

	say_list_type = /datum/say_list/armadillo

/datum/say_list/armadillo

	speak = list("Churr","Rumble!","Chirr?")
	emote_hear = list("churrs","rubmles","chirrs")
	emote_see = list("rolls in place", "shuffles", "scritches at something")


/mob/living/simple_mob/animal/passive/dog/corgi/saint
	name = "saint corgi"
//	real_name = "Ian"	//Intended to hold the name without altering it.
//	gender = MALE
	desc = "It's a corgi."
	var/turns_since_scan = 0
	var/obj/movement_target
	makes_dirt = FALSE	//VOREStation edit: no more dirt
	icon = 'content_arfs/icons/mob/animal_arfs.dmi'
	icon_state = "saint_corgi"
//	item_state = "armadillo_rest"
	icon_living = "saint_corgi"
//	icon_rest = "armadillo_rest"
	icon_dead = "saint_corgi_dead"


/mob/living/simple_mob/animal/space/bear/panda
	name = "space panda"
	desc = "A product of Space China?"
	tt_desc = "U Ursinae aetherius" //...bearspace? Maybe.
	icon_state = "panda"
	icon_living = "panda"
	icon_dead = "panda_dead"
	icon_gib = "panda_gib"
	icon = 'content_arfs/icons/mob/animal_arfs.dmi'

/* Commiting this out for now, cause I can't get the fucking thing to work.
/mob/living/simple_mob/animal/passive/deer
	name = "deer"
	desc = "It's a deer! Might have milk bags"
//	tt_desc = "U Ursinae aetherius" //...bearspace? Maybe.
	icon_state = "deer"
	icon_living = "deer"
	icon_rest = "deer"
	icon_dead = "deer_dead"
	icon = 'content_arfs/icons/mob/animal_arfs.dmi'
*/