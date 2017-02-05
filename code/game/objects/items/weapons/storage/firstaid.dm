/* First aid storage
 * Contains:
 *		First Aid Kits
 * 		Pill Bottles
 */

/*
 * First Aid Kits
 */
/obj/item/weapon/storage/firstaid
	name = "first-aid kit"
	desc = "It's an emergency medical kit for those serious boo-boos."
	icon_state = "firstaid"
	throw_speed = 2
	throw_range = 8
	var/empty = 0


/obj/item/weapon/storage/firstaid/fire
	name = "fire first-aid kit"
	desc = "It's an emergency medical kit for when the toxins lab <i>-spontaneously-</i> burns down."
	icon_state = "ointment"
	item_state = "firstaid-ointment"

	New()
		..()
		if (empty) return

		icon_state = pick("ointment","firefirstaid")

		new /obj/item/device/healthanalyzer( src )
		new /obj/item/stack/medical/ointment( src )
		new /obj/item/stack/medical/ointment( src )
		new /obj/item/stack/medical/ointment( src )
		new /obj/item/weapon/reagent_containers/pill/kelotane( src )
		new /obj/item/weapon/reagent_containers/pill/kelotane( src )
		new /obj/item/weapon/storage/syringe_case/burn( src )
		return


/obj/item/weapon/storage/firstaid/regular
	icon_state = "firstaid"

	New()
		..()
		if (empty) return
		new /obj/item/device/healthanalyzer(src)
		new /obj/item/stack/medical/bruise_pack(src)
		new /obj/item/stack/medical/bruise_pack(src)
		new /obj/item/stack/medical/bruise_pack(src)
		new /obj/item/stack/medical/ointment(src)
		new /obj/item/stack/medical/ointment(src)
		new /obj/item/weapon/storage/syringe_case/regular(src)
		return

/obj/item/weapon/storage/firstaid/toxin
	name = "toxin first aid"
	desc = "Used to treat when you have a high amoutn of toxins in your body."
	icon_state = "antitoxin"
	item_state = "firstaid-toxin"

	New()
		..()
		if (empty) return

		icon_state = pick("antitoxin","antitoxfirstaid","antitoxfirstaid2","antitoxfirstaid3")

		new /obj/item/device/healthanalyzer( src )
		new /obj/item/weapon/reagent_containers/syringe/antitoxin( src )
		new /obj/item/weapon/reagent_containers/pill/antitox( src )
		new /obj/item/weapon/reagent_containers/pill/antitox( src )
		new /obj/item/weapon/reagent_containers/pill/antitox( src )
		new /obj/item/weapon/reagent_containers/pill/antitox( src )
		new /obj/item/weapon/storage/syringe_case/tox( src )

		return

/obj/item/weapon/storage/firstaid/o2
	name = "oxygen deprivation first aid"
	desc = "A box full of oxygen goodies."
	icon_state = "o2"
	item_state = "firstaid-o2"

	New()
		..()
		if (empty) return
		new /obj/item/device/healthanalyzer( src )
		new /obj/item/weapon/reagent_containers/pill/dexalin( src )
		new /obj/item/weapon/reagent_containers/pill/dexalin( src )
		new /obj/item/weapon/reagent_containers/pill/dexalin( src )
		new /obj/item/weapon/reagent_containers/pill/dexalin( src )
		new /obj/item/weapon/reagent_containers/hypospray/autoinjector/dexP(src)
		new /obj/item/weapon/storage/syringe_case/oxy( src )
		return

/obj/item/weapon/storage/firstaid/adv
	name = "advanced first-aid kit"
	desc = "Contains advanced medical treatments."
	icon_state = "advfirstaid"
	item_state = "firstaid-advanced"

/obj/item/weapon/storage/firstaid/adv/New()
	..()
	if (empty) return
	new /obj/item/weapon/reagent_containers/hypospray/autoinjector/tricord(src)
	new /obj/item/stack/medical/advanced/bruise_pack(src)
	new /obj/item/stack/medical/advanced/bruise_pack(src)
	new /obj/item/stack/medical/advanced/bruise_pack(src)
	new /obj/item/stack/medical/advanced/ointment(src)
	new /obj/item/stack/medical/advanced/ointment(src)
	new /obj/item/stack/medical/splint(src)
	return

/obj/item/weapon/storage/firstaid/rad
	name = "radiation first-aid kit"
	desc = "Contains treatment for radiation exposure"
	icon_state = "purplefirstaid"

/obj/item/weapon/storage/firstaid/rad/New()
	..()
	if (empty) return
	new /obj/item/weapon/reagent_containers/hypospray/autoinjector/Dylovene(src)
	new /obj/item/weapon/reagent_containers/pill/russianRed(src)
	new /obj/item/weapon/reagent_containers/pill/russianRed(src)
	new /obj/item/weapon/reagent_containers/pill/russianRed(src)
	new /obj/item/weapon/reagent_containers/pill/russianRed(src)
	new /obj/item/weapon/reagent_containers/hypospray/autoinjector/Dylovene(src)
	new /obj/item/weapon/reagent_containers/hypospray/autoinjector/Bicard(src)
	new /obj/item/weapon/reagent_containers/hypospray/autoinjector/Bicard(src)
	return

	/*
 * Syringe Case
 */


/obj/item/weapon/storage/syringe_case
	name = "syringe case"
	desc = "It's an medical case for storing syringes and bottles."
	icon_state = "syringe_case"
	throw_speed = 2
	throw_range = 8
	storage_slots = 3
	w_class = 2.0
	can_hold = list("/obj/item/weapon/reagent_containers/pill","/obj/item/weapon/reagent_containers/glass/bottle","/obj/item/weapon/paper","/obj/item/weapon/reagent_containers/syringe","/obj/item/weapon/reagent_containers/hypospray/autoinjector")

/obj/item/weapon/storage/syringe_case/regular

	New()
		..()
		new /obj/item/weapon/reagent_containers/syringe( src )
		new /obj/item/weapon/reagent_containers/glass/bottle/inaprovaline( src )
		new /obj/item/weapon/reagent_containers/glass/bottle/spaceacillin( src )

/obj/item/weapon/storage/syringe_case/burn

	New()
		..()
		new /obj/item/weapon/reagent_containers/syringe( src )
		new /obj/item/weapon/reagent_containers/glass/bottle/kelotane( src )
		new /obj/item/weapon/reagent_containers/glass/bottle/spaceacillin( src )

/obj/item/weapon/storage/syringe_case/tox

	New()
		..()
		new /obj/item/weapon/reagent_containers/syringe( src )
		new /obj/item/weapon/reagent_containers/glass/bottle/antitoxin( src )
		new /obj/item/weapon/reagent_containers/glass/bottle/antitoxin( src )

/obj/item/weapon/storage/syringe_case/oxy

	New()
		..()
		new /obj/item/weapon/reagent_containers/syringe( src )
		new /obj/item/weapon/reagent_containers/glass/bottle/inaprovaline( src )
		new /obj/item/weapon/reagent_containers/glass/bottle/dexalin( src )

/*
 * Pill Bottles
 */


/obj/item/weapon/storage/pill_bottle
	name = "pill bottle"
	desc = "It's an airtight container for storing medication."
	icon_state = "pill_canister"
	icon = 'icons/obj/chemical.dmi'
	item_state = "contsolid"
	w_class = 2.0
	can_hold = list("/obj/item/weapon/reagent_containers/pill","/obj/item/weapon/dice","/obj/item/weapon/paper")
	allow_quick_gather = 1
	use_to_pickup = 1
	storage_slots = 14
	use_sound = null

/obj/item/weapon/storage/pill_bottle/kelotane
	name = "\improper Kelotane pill bottle"
	desc = "Contains pills used to treat burns."

	New()
		..()
		new /obj/item/weapon/reagent_containers/pill/kelotane( src )
		new /obj/item/weapon/reagent_containers/pill/kelotane( src )
		new /obj/item/weapon/reagent_containers/pill/kelotane( src )
		new /obj/item/weapon/reagent_containers/pill/kelotane( src )
		new /obj/item/weapon/reagent_containers/pill/kelotane( src )
		new /obj/item/weapon/reagent_containers/pill/kelotane( src )
		new /obj/item/weapon/reagent_containers/pill/kelotane( src )

/obj/item/weapon/storage/pill_bottle/antitox
	name = "\improper Dylovene pill bottle"
	desc = "Contains pills used to counter toxins."

	New()
		..()
		new /obj/item/weapon/reagent_containers/pill/antitox( src )
		new /obj/item/weapon/reagent_containers/pill/antitox( src )
		new /obj/item/weapon/reagent_containers/pill/antitox( src )
		new /obj/item/weapon/reagent_containers/pill/antitox( src )
		new /obj/item/weapon/reagent_containers/pill/antitox( src )
		new /obj/item/weapon/reagent_containers/pill/antitox( src )
		new /obj/item/weapon/reagent_containers/pill/antitox( src )

/obj/item/weapon/storage/pill_bottle/inaprovaline
	name = "\improper Inaprovaline pill bottle"
	desc = "Contains pills used to stabilize patients."

	New()
		..()
		new /obj/item/weapon/reagent_containers/pill/inaprovaline( src )
		new /obj/item/weapon/reagent_containers/pill/inaprovaline( src )
		new /obj/item/weapon/reagent_containers/pill/inaprovaline( src )
		new /obj/item/weapon/reagent_containers/pill/inaprovaline( src )
		new /obj/item/weapon/reagent_containers/pill/inaprovaline( src )
		new /obj/item/weapon/reagent_containers/pill/inaprovaline( src )
		new /obj/item/weapon/reagent_containers/pill/inaprovaline( src )

/obj/item/weapon/storage/pill_bottle/tramadol
	name = "\improper Tramadol pill bottle"
	desc = "Contains pills used to relieve pain."

	New()
		..()
		new /obj/item/weapon/reagent_containers/pill/tramadol( src )
		new /obj/item/weapon/reagent_containers/pill/tramadol( src )
		new /obj/item/weapon/reagent_containers/pill/tramadol( src )
		new /obj/item/weapon/reagent_containers/pill/tramadol( src )
		new /obj/item/weapon/reagent_containers/pill/tramadol( src )
		new /obj/item/weapon/reagent_containers/pill/tramadol( src )
		new /obj/item/weapon/reagent_containers/pill/tramadol( src )
		new /obj/item/weapon/reagent_containers/pill/tramadol( src )
		new /obj/item/weapon/reagent_containers/pill/tramadol( src )
		new /obj/item/weapon/reagent_containers/pill/tramadol( src )
		new /obj/item/weapon/reagent_containers/pill/tramadol( src )
		new /obj/item/weapon/reagent_containers/pill/tramadol( src )
		new /obj/item/weapon/reagent_containers/pill/tramadol( src )
		new /obj/item/weapon/reagent_containers/pill/tramadol( src )

/obj/item/weapon/storage/pill_bottle/spaceacillin
	name = "\improper Antibiotic pill bottle"
	desc = "Contains pills used to treat infected wounds."

	New()
		..()
		new /obj/item/weapon/reagent_containers/pill/spaceacillin( src )
		new /obj/item/weapon/reagent_containers/pill/spaceacillin( src )
		new /obj/item/weapon/reagent_containers/pill/spaceacillin( src )
		new /obj/item/weapon/reagent_containers/pill/spaceacillin( src )
		new /obj/item/weapon/reagent_containers/pill/spaceacillin( src )
		new /obj/item/weapon/reagent_containers/pill/spaceacillin( src )
		new /obj/item/weapon/reagent_containers/pill/spaceacillin( src )
		new /obj/item/weapon/reagent_containers/pill/spaceacillin( src )
		new /obj/item/weapon/reagent_containers/pill/spaceacillin( src )
		new /obj/item/weapon/reagent_containers/pill/spaceacillin( src )
		new /obj/item/weapon/reagent_containers/pill/spaceacillin( src )
		new /obj/item/weapon/reagent_containers/pill/spaceacillin( src )
		new /obj/item/weapon/reagent_containers/pill/spaceacillin( src )
		new /obj/item/weapon/reagent_containers/pill/spaceacillin( src )