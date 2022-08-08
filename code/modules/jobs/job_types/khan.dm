/datum/job/khan //do NOT use this for anything, it's just to store faction datums
	department_flag = KHAN
	selection_color = "#ff915e"
	faction = FACTION_KHAN
	exp_type = EXP_TYPE_KHAN
	access = list(ACCESS_KHAN, ACCESS_BAR, ACCESS_MINING, ACCESS_GATEWAY)
	minimal_access = list(ACCESS_KHAN, ACCESS_BAR, ACCESS_MINING, ACCESS_GATEWAY)
	forbids = "THE KHAGANATE DISCOURAGES: Breaking your agreements, Cowardice, Abuse of power or status, Abandoning fellow Khans."
	enforces = "THE KHANATE ENCOURAGES: Bravery, Honor, Displays of strength and/or skill, Brotherhood."

/datum/job/khanleader //do NOT use this for anything, it's just to store faction datums
	department_flag = KHAN
	selection_color = "#ff915e"
	faction = FACTION_KHAN
	exp_type = EXP_TYPE_KHAN
	access = list(ACCESS_KHAN, ACCESS_BAR, ACCESS_CLINIC, ACCESS_GATEWAY, ACCESS_MINT_VAULT, ACCESS_MINING, ACCESS_FORENSICS_LOCKERS, ACCESS_CLONING)
	minimal_access = list(ACCESS_KHAN, ACCESS_BAR, ACCESS_CLINIC, ACCESS_GATEWAY, ACCESS_MINT_VAULT, ACCESS_MINING, ACCESS_FORENSICS_LOCKERS, ACCESS_CLONING)
	forbids = "THE KHAGANATE DISCOURAGES: Breaking your agreements, Cowardice, Abuse of power or status, Abandoning fellow Khans."
	enforces = "THE KHANATE ENCOURAGES: Bravery, Honor, Displays of strength and/or skill, Brotherhood."

/datum/outfit/job/khan //do NOT use this for anything, it's just to store the items given to every khan.
	name = "Great Khan"
	jobtype = /datum/job/khan
	suit = /obj/item/clothing/suit/armor/f13/khan/prospect/citizen
	id = /obj/item/card/id/khantattoo
	ears = /obj/item/radio/headset/headset_khans
	shoes = /obj/item/clothing/shoes/f13/military/khan_pelt
	backpack =	/obj/item/storage/backpack/explorer
	satchel = 	/obj/item/storage/backpack/satchel/explorer
	uniform = /obj/item/clothing/under/f13/khan
	r_hand = /obj/item/book/granter/trait/selection/khan
	r_pocket = /obj/item/flashlight/flare
	l_pocket = /obj/item/storage/survivalkit_khan
	gloves = /obj/item/clothing/gloves/f13/handwraps
	box = null
	backpack_contents = list(
		/obj/item/storage/bag/money/small/khan = 1
		)

/datum/outfit/job/khan/mangudai
	name = "Mangudai"
	jobtype = /datum/job/khan/mangudai
	suit = /obj/item/clothing/suit/armor/f13/khan/mangudai
	head = /obj/item/clothing/head/helmet/f13/khan/mangudai
	gloves = /obj/item/melee/unarmed/brass/spiked
	shoes = /obj/item/clothing/shoes/f13/military/khan

/datum/outfit/job/khan/kipchak
	name = "Kipchak"
	jobtype = /datum/job/khan/kipchak
	suit = /obj/item/clothing/suit/armor/f13/khan/kipchak
	head = /obj/item/clothing/head/helmet/f13/khan/kipchak
	gloves = /obj/item/melee/unarmed/brass/spiked
	shoes = /obj/item/clothing/shoes/f13/military/khan
	backpack_contents = list(
		/obj/item/storage/bag/money/small/khan = 1,
		/obj/item/book/granter/trait/techno  = 1,
		/obj/item/book/granter/trait/trekking  = 1,
		/obj/item/book/granter/trait/iron_fist  = 1,
		/obj/item/book/granter/trait/bigleagues  = 1
		)

/datum/outfit/job/khan/khorchin
	name = "Khorchin"
	jobtype = /datum/job/khan/khorchin
	suit = /obj/item/clothing/suit/armor/f13/khan/khorchin
	head = /obj/item/clothing/head/helmet/f13/khan/khorchin
	gloves = /obj/item/clothing/gloves/khan/war
	shoes = /obj/item/clothing/shoes/f13/military/khan_plated

/datum/outfit/job/khan/kheshig
	name = "Kheshig"
	jobtype = /datum/job/khan/kheshig
	suit = /obj/item/clothing/suit/armor/f13/khan/kheshig
	head = /obj/item/clothing/head/helmet/f13/khan/kheshig
	gloves = /obj/item/melee/unarmed/khangauntlets
	shoes = /obj/item/clothing/shoes/f13/military/khan_plated

/datum/outfit/job/khan/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/set_vrboard/den)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legioncombatarmor)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legioncombathelmet)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legioncombatarmormk2)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legioncombathelmetmk2)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legionsalvaged)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legionsalvaged_ncr)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legionsalvaged_salvaged)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legionsalvagedhelmet)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legionriot_broken)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legionriothelmet_broken)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legionriot_ncr)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legionriothelmet_ncr)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/trail_carbine)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/varmintrifle)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/combatrifle)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/uzi)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/smg10mm)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/gate_khanate)

/datum/outfit/job/khanleader
	name = "Khan Officer"
	jobtype = /datum/job/khanleader
	suit = /obj/item/clothing/suit/armor/khan/prospect/citizen
	id = /obj/item/card/id/khanleadertattoo
	ears = /obj/item/radio/headset/headset_khans
	head = /obj/item/clothing/head/helmet/f13/khan/bandana
	shoes = /obj/item/clothing/shoes/f13/military/khan
	backpack =	/obj/item/storage/backpack/satchel/explorer
	satchel = 	/obj/item/storage/backpack/satchel/old
	uniform = /obj/item/clothing/under/f13/khan
	r_hand = /obj/item/book/granter/trait/selection/khan
	r_pocket = /obj/item/flashlight/flare
	l_pocket = /obj/item/storage/survivalkit_khan
	gloves = /obj/item/melee/unarmed/brass/spiked
	box = null
	backpack_contents = list(
		/obj/item/storage/bag/money/small/khan = 1
		)

/datum/outfit/job/khanleader/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/set_vrboard/den)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legioncombatarmor)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legioncombathelmet)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legioncombatarmormk2)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legioncombathelmetmk2)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legionsalvaged)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legionsalvaged_ncr)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legionsalvaged_salvaged)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legionsalvagedhelmet)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legionriot_broken)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legionriothelmet_broken)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legionriot_ncr)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/legionriothelmet_ncr)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/trail_carbine)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/varmintrifle)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/combatrifle)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/uzi)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/smg10mm)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/gate_khanate)

/datum/outfit/job/khan/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_TRIBAL, src)
	ADD_TRAIT(H, TRAIT_PUGILIST, src)
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	ADD_TRAIT(H, TRAIT_LIFEGIVER, src)
	ADD_TRAIT(H, TRAIT_BIG_LEAGUES, src) //The Khans are a tough people, trained to survive in the wasteland and to defend themselves with whatever they have.

/datum/outfit/job/khanleader/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_TRIBAL, src)
	ADD_TRAIT(H, TRAIT_PUGILIST, src)
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	ADD_TRAIT(H, TRAIT_LIFEGIVER, src)
	ADD_TRAIT(H, TRAIT_BIG_LEAGUES, src)

//=========================================================== LOADOUT DATUMS ===========================================================

//MANGUDAI =================================================================

/datum/outfit/loadout/enforcer
	name = "Enforcer"
	r_hand = /obj/item/twohanded/baseball/spiked
	belt = /obj/item/storage/belt/bandolier
	backpack_contents = list(
		/obj/item/restraints/legcuffs/bola/tactical = 1,
		/obj/item/book/granter/trait/trekking = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 3)

/datum/outfit/loadout/khanskirmisher
	name = "Skirmisher"
	belt = /obj/item/storage/belt/bandolier
	r_hand = /obj/item/gun/ballistic/rifle/repeater/cowboy
	backpack_contents = list(
		/obj/item/ammo_box/tube/a357 = 3,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 1,
		/obj/item/storage/belt/holster = 1)

/datum/outfit/loadout/khanpointman
	name = "Pointman"
	belt = /obj/item/storage/belt/bandolier
	backpack_contents = list(
		/obj/item/book/granter/trait/rifleman = 1,
		/obj/item/reagent_containers/pill/patch/turbo = 2)

//KIPCHAK =================================================================

/datum/outfit/loadout/enforcerplus
	name = "Seasoned Enforcer"
	r_hand = /obj/item/melee/classic_baton/telescopic
	l_hand = /obj/item/flashlight/lantern
	belt = /obj/item/storage/belt/military/alt
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 3,
		/obj/item/restraints/handcuffs = 3,
		/obj/item/restraints/legcuffs/bola/tactical = 3,
		/obj/item/gun/ballistic/automatic/smg/smg10mm = 1,
		/obj/item/ammo_box/magazine/m10mm_adv/ext = 3,
		/obj/item/shovel = 1)

/datum/outfit/loadout/roadcaptain
	name = "Road Captain"
	neck = /obj/item/storage/belt/holster
	r_hand = /obj/item/gun/ballistic/automatic/pistol/m1911/custom
	l_hand = /obj/item/gun/ballistic/rifle/repeater/trail
	belt = /obj/item/storage/belt
	mask = /obj/item/clothing/mask/gas/welding
	backpack_contents = list(
		/obj/item/pickaxe/drill = 1,
		/obj/item/flashlight/lantern = 1,
		/obj/item/storage/bag/salvage = 1,
		/obj/item/screwdriver/power = 1,
		/obj/item/crowbar/power = 1,
		/obj/item/ammo_box/magazine/m45 = 3,
		/obj/item/ammo_box/tube/m44 = 3,
		/obj/item/weldingtool/hugetank = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 3)

/datum/outfit/loadout/ambusher
	name = "Ambusher"
	glasses = /obj/item/clothing/glasses/night/polarizing
	r_hand = /obj/item/gun/ballistic/automatic/delisle/commando/kipchak
	belt = /obj/item/storage/belt/bandolier
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m9mmds = 2,
		/obj/item/ammo_box/c9mm  = 3,
		/obj/item/melee/onehanded/knife/hunting = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 3)

//KHORCHIN =================================================================

/datum/outfit/loadout/sarge_at_arms
	name = "Sergeant at Arms"
	r_hand = /obj/item/gun/ballistic/rifle/repeater/brush
	belt = /obj/item/storage/belt/bandolier
	head = /obj/item/clothing/head/helmet/f13/khan
	backpack_contents = list(
		/obj/item/ammo_box/tube/c4570/ = 3,
		/obj/item/book/granter/trait/trekking = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 3)

/datum/outfit/loadout/khanpointmanvet
	name = "Veteran Pointman"
	r_hand = /obj/item/gun/ballistic/shotgun/automatic/combat/shotgunlever
	belt = /obj/item/storage/belt/bandolier
	head = /obj/item/clothing/head/helmet/f13/khan
	backpack_contents = list(
		/obj/item/book/granter/trait/rifleman = 1,
		/obj/item/ammo_box/shotgun/buck = 3,
		/obj/item/book/granter/trait/bigleagues = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 3)

/datum/outfit/loadout/protector
	name = "City Defender"
	r_hand = /obj/item/gun/ballistic/automatic/pistol/n99
	l_hand = /obj/item/shield/riot/scrapshield
	belt = /obj/item/storage/belt/bandolier
	head = /obj/item/clothing/head/helmet/f13/khan
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m10mm_adv/simple = 3,
		/obj/item/melee/onehanded/machete/scrapsabre = 1,
		/obj/item/book/granter/trait/bigleagues = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 3)

//KHESHIG ===================================================================

/datum/outfit/loadout/sardaukar
	name = "Glaive Master"
	belt = /obj/item/storage/belt/bandolier
	r_hand = /obj/item/gun/ballistic/automatic/m1garand
	suit = /obj/item/clothing/suit/toggle/labcoat/f13/khan_jacket/coat
	head = /obj/item/clothing/head/helmet/f13/khan
	backpack_contents = list(
		/obj/item/ammo_box/magazine/garand308 = 3,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 3,
		/obj/item/book/granter/trait/bigleagues = 1)

/datum/outfit/loadout/sprayer
	name = "Heavy Gunner"
	belt = /obj/item/storage/belt/bandolier
	r_hand = /obj/item/gun/ballistic/automatic/smg/smg10mm
	suit = /obj/item/clothing/suit/toggle/labcoat/f13/khan_jacket/coat
	head = /obj/item/clothing/head/helmet/f13/khan
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m10mm_adv/ext = 3,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 3,
		/obj/item/book/granter/trait/bigleagues = 1)

/datum/outfit/loadout/pacifier
	name = "Pacifier"
	r_hand = /obj/item/gun/ballistic/automatic/shotgun/riot
	head = /obj/item/clothing/head/helmet/f13/khan/fullhelm
	suit = /obj/item/clothing/suit/toggle/labcoat/f13/khan_jacket/coat
	glasses = /obj/item/clothing/glasses/sunglasses
	backpack_contents = list(
		/obj/item/ammo_box/magazine/d12g = 2,
		/obj/item/ammo_box/shotgun/buck = 2,
		/obj/item/restraints/legcuffs/bola/tactical = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 3)

//STEWARD ==================================================================

/datum/outfit/loadout/privileged
	name = "Privileged"
	suit = /obj/item/clothing/suit/toggle/labcoat/f13/khan_jacket/coat/goji
	glasses = /obj/item/clothing/glasses/wraith_spectacles
	head = /obj/item/clothing/head/collectable/petehat/gang
	r_hand = /obj/item/gun/ballistic/revolver/colt357/lucky
	l_hand = /obj/item/twohanded/baseball/louisville
	neck = /obj/item/storage/belt/holster
	backpack_contents = list(
		/obj/item/ammo_box/a357 = 3,
		/obj/item/clipboard = 1,
		/obj/item/pen = 1,
		/obj/item/folder = 1)

/datum/outfit/loadout/taxcollector
	name = "Tax Collector"
	glasses = /obj/item/clothing/glasses/sunglasses
	r_hand = /obj/item/gun/ballistic/revolver/hunting
	neck = /obj/item/storage/belt/holster
	backpack_contents = list(
		/obj/item/ammo_box/c4570 = 3,
		/obj/item/twohanded/baseball = 1,
		/obj/item/clipboard = 1,
		/obj/item/pen = 1,
		/obj/item/folder = 1)

//NOYAN ====================================================================

/datum/outfit/loadout/bigboss
	name = "Big Boss"
	belt =/obj/item/storage/belt/bandolier
	r_hand = /obj/item/gun/ballistic/automatic/pistol/deagle/elcapitan
	head = /obj/item/clothing/head/helmet/f13/khan/fullhelm
	suit = /obj/item/clothing/suit/toggle/labcoat/f13/khan_jacket/coat
	glasses = /obj/item/clothing/glasses/sunglasses
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m14mm = 3,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 3,
		/obj/item/book/granter/trait/bigleagues = 1)

/datum/outfit/loadout/ironfist
	name = "Iron Fist"
	gloves = /obj/item/melee/powerfist/f13
	belt = /obj/item/storage/belt/bandolier
	head = /obj/item/clothing/head/helmet/f13/khan/fullhelm
	suit = /obj/item/clothing/suit/toggle/labcoat/f13/khan_jacket/coat
	glasses = /obj/item/clothing/glasses/sunglasses
	backpack_contents = list(
		/obj/item/restraints/legcuffs/bola/tactical = 1,
		/obj/item/book/granter/trait/iron_fist  = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 3,
		/obj/item/book/granter/trait/bigleagues = 1)

/datum/outfit/loadout/peopleleader
	name = "People's leader"
	r_hand = /obj/item/gun/ballistic/revolver/revolver45
	head = /obj/item/clothing/head/helmet/f13/khan/fullhelm
	suit = /obj/item/clothing/suit/toggle/labcoat/f13/khan_jacket/coat
	glasses = /obj/item/clothing/glasses/sunglasses
	neck = /obj/item/storage/belt/holster
	backpack_contents = list(
		/obj/item/ammo_box/c45rev = 3,
		/obj/item/restraints/legcuffs/bola/tactical = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 3,
		/obj/item/book/granter/trait/bigleagues = 1)

//=========================================================== JOBS ===========================================================

/datum/job/khan/mangudai
	title = "Mangudai"
	flag = F13MANGUDAI
	faction = FACTION_KHAN
	total_positions = 12
	spawn_positions = 12
	description = "You are a Mangudai, a warrior of the Great Khans who has passed the Trial of Position within the arena and earned their place. While your combat skills are to be respected, remember your position as a soldier - protect the Khan Fortress and Bighorn, show loyalty, and you may find chances yet to prove your greater worth."
	supervisors = "the Khagan, the Noyan, and your Kipchak"
	selection_color = "#ff915e"
	exp_type = EXP_TYPE_KHAN
	outfit = /datum/outfit/job/khan

	loadout_options = list(
		/datum/outfit/loadout/enforcer,
		/datum/outfit/loadout/khanskirmisher,
		/datum/outfit/loadout/khandrug,
		)

/datum/job/khan/kipchak
	title = "Kipchak"
	flag = F13KIPCHAK
	faction = FACTION_KHAN
	total_positions = 4
	spawn_positions = 4
	description = "You are a Kipchak, a warrior of the Great Khans who has demonstrated prowess beyond the domain of a Mangudai. While you remain a humble soldier, greater duties may be entrusted upon you - such as leadership of small scouting parties or the collection of tribute. Your specialty may be policing, prospecting, or ambushing."
	supervisors = "the Noyan and Khanate"
	selection_color = "#ff915e"
	exp_requirements = 60
	exp_type = EXP_TYPE_KHAN
	outfit = /datum/outfit/job/khan

	loadout_options = list(
		/datum/outfit/loadout/roadcaptain,
		/datum/outfit/loadout/expforeman,
		/datum/outfit/loadout/ambusher,
		)


/datum/job/khan/khorchin
	title = "Khorchin"
	flag = F13KHORCHIN
	faction = FACTION_KHAN
	total_positions = 4
	spawn_positions = 4
	description = "You are a Khorchin, an experienced warrior of the Great Khans who has proven their worth to the Khanate several times over. Your lamellar armor was forged for your person, and you shall find ample instruments of warfare at your disposal. Duties of greater prestige shall be given to you, from protecting Bighorn from lawbreakers to serving on diplomatic missions and expeditions. In times of war, you are also the Khanate's shock cavalry."
	supervisors = "the Noyan and Khanate"
	selection_color = "#ff915e"
	exp_requirements = 150
	exp_type = EXP_TYPE_KHAN
	outfit = /datum/outfit/job/khan

	loadout_options = list(
		/datum/outfit/loadout/fighter,
		/datum/outfit/loadout/guard,
		/datum/outfit/loadout/protector,
		)


/datum/job/khan/kheshig
	title = "Kheshig"
	flag = F13KHESHIG
	faction = FACTION_KHAN
	total_positions = 6 // Kheshigs are not permitted to leave Bighorn under normal circumstances
	spawn_positions = 6
	description = "You are a Kheshig, a veteran soldier of the Great Khans who has displayed a degree of combat mastery in service to the Khanate considered second to none, save for your Khan. More than anything, you are a living exemplar of the unbreakable will of the Khanate, both in conducting its defense and, if need be, delivering its fearsome retribution. You are expected to remain in the city at all times."
	supervisors = "the Khan and Khagan"
	selection_color = "#ff915e"
	exp_requirements = 500
	exp_type = EXP_TYPE_KHAN
	outfit = /datum/outfit/job/khan

	loadout_options = list(
		/datum/outfit/loadout/veteran,
		/datum/outfit/loadout/sprayer,
		/datum/outfit/loadout/pacifier,
		)


/datum/job/khan/steward
	title = "Steward"
	flag = F13STEWARD
	head_announce = list("Security")
	faction = FACTION_KHAN
	total_positions = 1
	spawn_positions = 1
	description = "You are a Steward, a veteran of the Great Khans now serving its interests through negotiations and book-keeping. While dialogue and paperwork may be less exciting than the battlefield, you are instrumental in securing the financial and political wellbeing of the Khanate in this region. You are expected to lead in the absence of a Noyan."
	enforces = "You have control over the First Bank of Bighorn, a valuable asset in generating profit. Some ideas - distributing loans, handling the collection of tribute, establishing a chem distribution ring, and working with another faction - perhaps against another. But don't unnecessarily endanger the Khanate, and listen to the Noyan!"
	supervisors = "the Noyan and Khanate"
	selection_color = "#ff915e"
	exp_requirements = 750
	exp_type = EXP_TYPE_KHAN
	outfit = /datum/outfit/job/khanleader

	loadout_options = list(
		/datum/outfit/loadout/taxcollector,
		/datum/outfit/loadout/privileged,
		)


/datum/job/khan/noyan
	title = "Noyan"
	flag = F13NOYAN
	head_announce = list("Security")
	faction = FACTION_KHAN
	total_positions = 1
	spawn_positions = 1
	description = "You are a Noyan, a ranking officer of the Khanate in charge of the local territory. You serve with the authority of the Khagan themselves, and answer only to them - every Khanate warrior within the region is under your command. Maintain control of Bighorn from your mighty Fortress. Work closely with the Steward if present - an invaluable financial and political adviser."
	enforces = "While you command great respect, you are nevertheless expected to keep the interests of the Khanate central. Put down dissent, but expect rapid and justified rebellion amongst your Khans if you begin unnecessarily endangering the interests of the Khanate. Mangudai and Kipchaks make good guards and scouts: Khorchins and Kheshigs are a more formidable military garrison."
	supervisors = "the Khagan and Khanate"
	selection_color = "#ff915e"
	req_admin_notify = 1
	exp_requirements = 1000
	exp_type = EXP_TYPE_KHAN
	outfit = /datum/outfit/job/khanleader

	loadout_options = list(
		/datum/outfit/loadout/ironfist,
		/datum/outfit/loadout/peopleleader,
		/datum/outfit/loadout/bigboss,
		)
