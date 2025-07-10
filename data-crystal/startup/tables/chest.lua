ChestAction = {}

ChestUnique = {
	-- Behe Quest
	[5010] = { useKV = true, itemId = 2472, itemPos = { x = 572, y = 265, z = 13 }, reward = { { 3360, 1 } }, questName = "Golden Armor" },
	[5011] = { useKV = true, itemId = 2472, itemPos = { x = 574, y = 265, z = 13 }, reward = { { 3420, 1 } }, questName = "Demon Shield" },
	[5012] = { useKV = true, itemId = 2472, itemPos = { x = 576, y = 265, z = 13 }, reward = { { 3315, 1 }, { 3055, 1 } }, questName = "Guardian Halberd" },
	-- DH Quest
	[5049] = { useKV = true, itemId = 2481, itemPos = { x = 531, y = 688, z = 10 }, reward = { { 3387, 1 } }, questName = "Demon Helmet" },
	[5050] = { useKV = true, itemId = 2481, itemPos = { x = 531, y = 687, z = 10 }, reward = { { 3554, 1 } }, questName = "Steel Boots" },
	[5051] = { useKV = true, itemId = 2481, itemPos = { x = 531, y = 686, z = 10 }, reward = { { 3420, 1 } }, questName = "Demon Shield" },
	-- Karmia City Simples
	[5014] = { useKV = true, itemId = 2480, itemPos = { x = 452, y = 560, z = 9 }, reward = { { 3295, 1 } }, questName = "Bright Sword" },
	[5069] = { useKV = true, itemId = 2472, itemPos = { x = 436, y = 549, z = 7 }, reward = { { 3372, 1 } }, questName = "Brass Legs" },
	[5019] = { useKV = true, itemId = 2472, itemPos = { x = 493, y = 463, z = 8 }, reward = { { 3297, 1 } }, questName = "Serpent Sword" },
	[5021] = { useKV = true, itemId = 2472, itemPos = { x = 493, y = 463, z = 8 }, reward = { { 3269, 1 } }, questName = "Halberd" },
	[5022] = { useKV = true, itemId = 2480, itemPos = { x = 531, y = 578, z = 9 }, reward = { { 3437, 1 } }, questName = "Amazon Shield" },
	[5023] = { useKV = true, itemId = 2480, itemPos = { x = 540, y = 578, z = 9 }, reward = { { 3301, 1 } }, questName = "Broad Sword" },
	[5025] = { useKV = true, itemId = 2472, itemPos = { x = 479, y = 668, z = 8 }, reward = { { 3380, 1 } }, questName = "Noble Armor" },
	[5026] = { useKV = true, itemId = 2472, itemPos = { x = 550, y = 602, z = 9 }, reward = { { 3428, 1 } }, questName = "Tower Shield" },
	[5067] = { useKV = true, itemId = 2482, itemPos = { x = 595, y = 547, z = 6 }, reward = { { 2969, 1 } }, questName = "Key BK Quest" },
	[5068] = { useKV = true, itemId = 2482, itemPos = { x = 595, y = 549, z = 6 }, reward = { { 3357, 1 } }, questName = "Plate Armor" },
	-- Desert City
	[5032] = { useKV = true, itemId = 2482, itemPos = { x = 442, y = 602, z = 8 }, reward = { { 3567, 1 } }, questName = "Blue Robe" },
	[5033] = { useKV = true, itemId = 2482, itemPos = { x = 442, y = 603, z = 8 }, reward = { { 3436, 1 } }, questName = "Medusa Shield" },
	[5034] = { useKV = true, itemId = 2482, itemPos = { x = 442, y = 604, z = 8 }, reward = { { 3333, 1 } }, questName = "Crystal Mace" },
	[5035] = { useKV = true, itemId = 2480, itemPos = { x = 344, y = 569, z = 10 }, reward = { { 3302, 1 } }, questName = "Dragon Lance" },
	[5036] = { useKV = true, itemId = 2480, itemPos = { x = 345, y = 569, z = 10 }, reward = { { 3371, 1 } }, questName = "Knight Legs" },
	[5037] = { useKV = true, itemId = 2480, itemPos = { x = 307, y = 458, z = 8 }, reward = { { 3035, 100 } }, questName = "100 Platinum Coins" },
	[5038] = { useKV = true, itemId = 2480, itemPos = { x = 309, y = 458, z = 8 }, reward = { { 3098, 1 } }, questName = "Ring of Healing" },
	[5043] = { useKV = true, itemId = 2472, itemPos = { x = 254, y = 439, z = 9 }, reward = { { 3394, 1 } }, questName = "Amazon Armor" },
	[5044] = { useKV = true, itemId = 2472, itemPos = { x = 255, y = 439, z = 9 }, reward = { { 3395, 1 } }, questName = "Amazon Helmet" },
	-- Ancient Helmet
	[5039] = { useKV = true, itemId = 1992, itemPos = {x = 279, y = 483, z = 9}, reward = { { 3228, 1 } }, questName = "Helmet Adornment" }, --Omruc
	[5041] = { useKV = true, itemId = 1992, itemPos = {x = 251, y = 507, z = 9}, reward = { { 3227, 1 } }, questName = "Piece of Ancient Helmet" }, --Rehemos
	[5042] = { useKV = true, itemId = 1992, itemPos = {x = 270, y = 503, z = 9}, reward = { { 3226, 1 } }, questName = "Damaged Helmet" }, --Dipthrah
	[5073] = { useKV = true, itemId = 2481, itemPos = {x = 269, y = 528, z = 9}, reward = { { 3225, 1 } }, questName = "Left Horn" }, --Vashresamun
	[5040] = { useKV = true, itemId = 1994, itemPos = {x = 209, y = 498, z = 9}, reward = { { 3223, 1 } }, questName = "Gem Holder" }, --Thalas
	[5074] = { useKV = true, itemId = 1992, itemPos = {x = 229, y = 528, z = 9}, reward = { { 3224, 1 } }, questName = "Right Horn" }, --Morguthis

	-- END
	-- Lost City
	[5015] = { useKV = true, itemId = 2472, itemPos = { x = 568, y = 410, z = 11 }, reward = { { 3370, 1 } }, questName = "Knight Armor" },
	[5016] = { useKV = true, itemId = 2472, itemPos = { x = 569, y = 410, z = 11 }, reward = { { 3280, 1 } }, questName = "Fire Sword" },
	[5017] = { useKV = true, itemId = 2480, itemPos = { x = 480, y = 428, z = 11 }, reward = { { 3418, 1 } }, questName = "Bonelord Shield" },
	[5018] = { useKV = true, itemId = 2480, itemPos = { x = 482, y = 428, z = 11 }, reward = { { 3369, 1 } }, questName = "Warrior Helmet" },
	-- Premmy City
	[5045] = { useKV = true, itemId = 2472, itemPos = { x = 452, y = 722, z = 5 }, reward = { { 3318, 1 } }, questName = "Knight Axe" },
	[5046] = { useKV = true, itemId = 2480, itemPos = { x = 455, y = 755, z = 8 }, reward = { { 3320, 1 } }, questName = "Fire Axe" },
	[5047] = { useKV = true, itemId = 2480, itemPos = { x = 449, y = 804, z = 12 }, reward = { { 3434, 1 } }, questName = "Vampire Shield" },
	[5048] = { useKV = true, itemId = 2480, itemPos = { x = 443, y = 804, z = 12 }, reward = { { 3302, 1 } }, questName = "Dragon Lance" },
	[5058] = { useKV = true, itemId = 2481, itemPos = { x = 394, y = 706, z = 10 }, reward = { { 2338, 1 } }, questName = "Piece of Ancient Helmet" },
	[5059] = { useKV = true, itemId = 2472, itemPos = { x = 334, y = 788, z = 10 }, reward = { { 3429, 1 } }, questName = "Black Shield" },
	[5060] = { useKV = true, itemId = 2472, itemPos = { x = 336, y = 788, z = 10 }, reward = { { 3368, 1 } }, questName = "Winged Helmet" },
	-- Tiquanda
	[5052] = { useKV = true, itemId = 2480, itemPos = { x = 526, y = 457, z = 9 }, reward = { { 3323, 1 } }, questName = "Dwarven Axe" },
	[5053] = { useKV = true, itemId = 2481, itemPos = { x = 556, y = 438, z = 9 }, reward = { { 3079, 1 } }, questName = "Boots of Haste" },
	[5054] = { useKV = true, itemId = 2481, itemPos = { x = 556, y = 440, z = 9 }, reward = { { 3392, 1 } }, questName = "Royal Helmet" },
	[5055] = { useKV = true, itemId = 2480, itemPos = { x = 632, y = 427, z = 4 }, reward = { { 3317, 1 } }, questName = "Barbarian Axe" },
	[5056] = { useKV = true, itemId = 2480, itemPos = { x = 635, y = 427, z = 4 }, reward = { { 3576, 1 } }, questName = "Post Officers Hat" },
	[5057] = { useKV = true, itemId = 2480, itemPos = { x = 638, y = 427, z = 4 }, reward = { { 3417, 1 } }, questName = "Shield of Honor" },
	[5066] = { useKV = true, itemId = 2480, itemPos = { x = 620, y = 492, z = 7 }, reward = { { 3071, 1 }, { 3043, 1 } }, questName = "Bag Quest" },
	-- Venore
	[5076] = { useKV = true, itemId = 2480, itemPos = { x = 416, y = 307, z = 11 }, reward = { { 3381, 1 } }, questName = "Crown Armor" },
	[5077] = { useKV = true, itemId = 2480, itemPos = { x = 426, y = 307, z = 11 }, reward = { { 3382, 1 } }, questName = "Crown Legs" },
	[5063] = { useKV = true, itemId = 2472, itemPos = { x = 387, y = 323, z = 7 }, reward = { { 3322, 1 } }, questName = "Dragon Hammer" },
	[5064] = { useKV = true, itemId = 2472, itemPos = { x = 307, y = 346, z = 3 }, reward = { { 3567, 1 } }, questName = "Blue Robe" },
	[5065] = { useKV = true, itemId = 2472, itemPos = { x = 309, y = 346, z = 3 }, reward = { { 3281, 1 } }, questName = "Giant Sword" },
	[5080] = { useKV = true, itemId = 2481, itemPos = { x = 303, y = 352, z = 4 }, reward = { { 6579, 1 } }, questName = "Random Addon Doll" },
	[5088] = { useKV = true, itemId = 2481, itemPos = { x = 494, y = 200, z = 10 }, reward = { { 2836, 1 } }, questName = "Holy Tible" },
	-- Folda (bag quest)
	[5081] = { useKV = true, itemId = 2481, itemPos = { x = 238, y = 266, z = 5 }, reward = { { 3031, 42 }, { 3483, 1 } }, questName = "Bag Quest" },
	[5082] = { useKV = true, itemId = 2481, itemPos = { x = 175, y = 278, z = 5 }, reward = { { 401, 1 } }, questName = "Book" },
	[5083] = { useKV = true, itemId = 2481, itemPos = { x = 175, y = 276, z = 5 }, reward = { { 3379, 1 } }, questName = "Crusader Helmet" },
	-- Libera Bay
	[5085] = { useKV = true, itemId = 2482, itemPos = { x = 510, y = 751, z = 5 }, reward = { { 3421, 1 } }, questName = "Dark Shield" },
	[5086] = { useKV = true, itemId = 2472, itemPos = { x = 668, y = 767, z = 9 }, reward = { { 44621, 1 } }, questName = "Dragon Scale Armor" },
	[5087] = { useKV = true, itemId = 2472, itemPos = { x = 657, y = 640, z = 8 }, reward = { { 6131, 1 } }, questName = "Tortoise Shield" },
	-- Barbarian Arena Quest - Greenhorn
	[6220] = {
		itemId = 2472,
		itemPos = { x = 366, y = 196, z = 7 },
		container = 2856,
		reward = { { 2995, 1 }, { 6570, 1 }, { 6574, 1 }, { 6569, 10 }, { 7377, 1 } },
		weight = 25.10,
		storage = Storage.Quest.U8_0.BarbarianArena.RewardGreenhornPresent,
	},
	[6221] = {
		itemId = 2480,
		itemPos = { x = 366, y = 199, z = 7 },
		container = 7342,
		reward = { { 7364, 100 }, { 7365, 100 } },
		weight = 158.00,
		storage = Storage.Quest.U8_0.BarbarianArena.RewardGreenhornBP,
	},
	[6222] = {
		itemId = 2482,
		itemPos = { x = 370, y = 199, z = 7 },
		reward = { { 7392, 1 } },
		weight = 54.00,
		storage = Storage.Quest.U8_0.BarbarianArena.RewardGreenhornWeapons,
	},
	[6223] = {
		itemId = 2482,
		itemPos = { x = 370, y = 197, z = 7 },
		reward = { { 7380, 1 } },
		weight = 45.00,
		storage = Storage.Quest.U8_0.BarbarianArena.RewardGreenhornWeapons,
	},
	[6224] = {
		itemId = 2482,
		itemPos = { x = 370, y = 195, z = 7 },
		reward = { { 7406, 1 } },
		weight = 59.00,
		storage = Storage.Quest.U8_0.BarbarianArena.RewardGreenhornWeapons,
	},
	-- Barbarian Arena Quest - Scrapper
	[6225] = {
		itemId = 2472,
		itemPos = { x = 366, y = 189, z = 7 },
		container = 2856,
		reward = { { 6569, 10 }, { 7375, 1 }, { 6574, 1 }, { 7183, 1 } },
		weight = 25.10,
		storage = Storage.Quest.U8_0.BarbarianArena.RewardScrapperPresent,
	},
	[6226] = {
		itemId = 2480,
		itemPos = { x = 366, y = 192, z = 7 },
		container = 7342,
		reward = { { 7365, 100 }, { 3450, 200 }, { 11605, 1 }, { 11615, 1 } },
		weight = 270.40,
		storage = Storage.Quest.U8_0.BarbarianArena.RewardScrapperBP,
	},
	[6227] = {
		itemId = 2482,
		itemPos = { x = 370, y = 192, z = 7 },
		reward = { { 7415, 1 } },
		weight = 78.00,
		storage = Storage.Quest.U8_0.BarbarianArena.RewardScrapperWeapons,
	},
	[6228] = {
		itemId = 2482,
		itemPos = { x = 370, y = 190, z = 7 },
		reward = { { 7389, 1 } },
		weight = 61.00,
		storage = Storage.Quest.U8_0.BarbarianArena.RewardScrapperWeapons,
	},
	[6229] = {
		itemId = 2482,
		itemPos = { x = 370, y = 188, z = 7 },
		reward = { { 7384, 1 } },
		weight = 35.00,
		storage = Storage.Quest.U8_0.BarbarianArena.RewardScrapperWeapons,
	},
	-- Barbarian Arena Quest - Warlord
	[6230] = {
		itemId = 2472,
		itemPos = { x = 366, y = 182, z = 7 },
		container = 2856,
		reward = { { 6569, 10 }, { 6574, 1 }, { 7372, 1 }, { 5080, 1 } },
		weight = 13.60,
		storage = Storage.Quest.U8_0.BarbarianArena.RewardWarlordPresent,
	},
	[6231] = {
		itemId = 2480,
		itemPos = { x = 366, y = 185, z = 7 },
		container = 7342,
		reward = { { 11603, 1 }, { 11609, 1 }, { 7443, 1 }, { 7440, 1 }, { 6528, 100 } },
		weight = 115.30,
		storage = Storage.Quest.U8_0.BarbarianArena.RewardWarlordBP,
	},
	[6232] = {
		itemId = 2482,
		itemPos = { x = 370, y = 185, z = 7 },
		reward = { { 7429, 1 } },
		weight = 39.00,
		storage = Storage.Quest.U8_0.BarbarianArena.RewardWarlordWeapons,
	},
	[6233] = {
		itemId = 2482,
		itemPos = { x = 370, y = 183, z = 7 },
		reward = { { 7434, 1 } },
		weight = 92.00,
		storage = Storage.Quest.U8_0.BarbarianArena.RewardWarlordWeapons,
	},
	[6234] = {
		itemId = 2482,
		itemPos = { x = 370, y = 181, z = 7 },
		reward = { { 7390, 1 } },
		weight = 50.00,
		storage = Storage.Quest.U8_0.BarbarianArena.RewardWarlordWeapons,
	},
	-- Pits Of Inferno
	-- Arbalest
	[5060] = {
		itemId = 2472,
		itemPos = { x = 553, y = 77, z = 11 },
		reward = { { 5803, 1 } },
		storage = 5060,
	},
	-- Avenger
	[5061] = {
		itemId = 2472,
		itemPos = { x = 551, y = 77, z = 11 },
		reward = { { 6527, 1 } },
		storage = 5060,
	},
	-- Arcane Staff
	[5062] = {
		itemId = 2472,
		itemPos = { x = 549, y = 77, z = 11 },
		reward = { { 3341, 1 } },
		storage = 5060,
	},
	-- Soft Boots
	[5163] = {
		itemId = 2472,
		itemPos = { x = 557, y = 80, z = 11 },
		reward = { { 6529, 1 } },
		storage = 5163,
	},
	-- Stuffed Dragon
	[5064] = {
		itemId = 2472,
		itemPos = { x = 559, y = 80, z = 11 },
		reward = { { 5791, 1 } },
		storage = 5064,
	},
	-- Frozen Starlight
	[5065] = {
		itemId = 2472,
		itemPos = { x = 564, y = 80, z = 11 },
		reward = { { 3249, 1 } },
		storage = 5065,
	},
	-- 100 Platinum Coin
	[5066] = {
		itemId = 2472,
		itemPos = { x = 569, y = 80, z = 11 },
		reward = { { 3035, 100 } },
		storage = 5066,
	},
	-- Backpack Of Holding and stuff
	[5067] = {
		itemId = 2472,
		itemPos = { x = 571, y = 80, z = 11 },
		container = 3253,
		reward = { { 11603, 1 }, { 11609, 1 }, { 11607, 1 }, { 11605, 1 } },
		storage = 5067,
		-- POI END
	},
}
