-- Common chest reward
-- You just need to add a new table in the data/startup/tables/chest.lua file
-- This script will pull everything from there

local AttributeTable = {
	[6013] = { text = [[Hardek * ... Noodles ****]] },
	[6112] = { text = [[... the dream master retreated ... sharing, they can't neglect that.]] },
	[6183] = { text = [[Looks like the fox is out! ... Signed: the horned fox]] },
}

local achievementTable = {
	-- [chestUniqueId] = "Achievement name",
	-- Annihilator
	[6085] = "Annihilator",
	[6086] = "Annihilator",
	[6087] = "Annihilator",
	[6088] = "Annihilator",
}

local function playerAddItem(params, item)
	local player = params.player
	if not checkWeightAndBackpackRoom(player, params.weight, params.message) then
		return false
	end

	if params.key then
		local itemType = ItemType(params.itemid)
		if itemType:isKey() or itemType:getId(21392) then
			local keyItem = player:addItem(params.itemid, params.count)
			keyItem:setActionId(params.storage)
		end
	else
		local addItem = player:addItem(params.itemid, params.count)
		local attribute = AttributeTable[item.uid]
		if attribute then
			addItem:setAttribute(ITEM_ATTRIBUTE_TEXT, attribute.text)
		end
		local achievement = achievementTable[item.uid]
		if achievement then
			player:addAchievement(achievement)
		end
	end

	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, params.message .. ".")
	if params.useKV then
		player:questKV(params.questName):set("completed", true)
		if params.timer then
			player:questKV(params.questName):set("params.questName", os.time() + params.time * 3600)
		end
	else
		player:setStorageValue(params.storage, 1)
		if params.timer then
			player:setStorageValue(params.timer, os.time() + params.time * 3600)
		end
	end
	return true
end

local function playerAddContainerItem(params, item)
	local player = params.player
	local reward = params.containerReward
	local attribute = AttributeTable[item.uid]
	local achievement = achievementTable[item.uid]
	for i = 1, #params.items do
		local rewardEntry = params.items[i]
		local itemid = rewardEntry[1]
		local count = rewardEntry[2]
		local addedItem = reward:addItem(itemid, count)
		if attribute and addedItem then
			addedItem:setAttribute(ITEM_ATTRIBUTE_TEXT, attribute.text)
		end
	end
	-- JEDEN komunikat!
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a " .. getItemName(params.itemBagName) .. ".")
	if achievement then
		player:addAchievement(achievement)
	end
	if params.useKV then
		player:questKV(params.questName):set("completed", true)
		if params.timer then
			player:questKV(params.questName):set("params.questName", os.time() + params.time * 3600)
		end
	else
		player:setStorageValue(params.storage, 1)
		if params.timer then
			player:setStorageValue(params.timer, os.time() + params.time * 3600)
		end
	end
	return true
end

local questReward = Action()

function questReward.onUse(player, item, fromPosition, itemEx, toPosition)
	local setting = ChestUnique[item.uid]
	if not setting then
		return true
	end

	if setting.weight then
		local message = "You have found a " .. getItemName(setting.container) .. "."
		local backpack = player:getSlotItem(CONST_SLOT_BACKPACK)
		if not backpack or backpack:getEmptySlots(true) < 1 then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, message .. " But you have no room to take it.")
			return true
		end
		if (player:getFreeCapacity() / 100) < setting.weight then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, message .. ". Weighing " .. setting.weight .. " oz, it is too heavy for you to carry.")
			return true
		end
	end

	if setting.useKV then
		if player:questKV(setting.questName):get("completed") then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The " .. getItemName(setting.itemId) .. " is empty.")
			return true
		end
		if setting.timerStorage and player:questKV(setting.questName):get("timer") and player:questKV(setting.questName):get("timer") > os.time() then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The " .. getItemName(setting.itemId) .. " is empty.")
			return true
		end
	else
		if player:getStorageValue(setting.storage) >= 1 then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The " .. getItemName(setting.itemId) .. " is empty.")
			return true
		end
		if setting.timerStorage and player:getStorageValue(setting.timerStorage) > os.time() then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The " .. getItemName(setting.itemId) .. " is empty.")
			return true
		end
	end

	if setting.randomReward then
		local randomReward = math.random(#setting.randomReward)
		setting.reward[1][1] = setting.randomReward[randomReward][1]
		setting.reward[1][2] = setting.randomReward[randomReward][2]
	end

	if setting.container then
		local container = player:addItem(setting.container)
		local addContainerItemParams = {
			player = player,
			items = setting.reward,
			weight = setting.weight,
			storage = setting.storage,
			action = setting.keyAction,
			itemBagName = setting.container,
			containerReward = container,
			questName = setting.questName,
			useKV = setting.useKV,
		}
		if not playerAddContainerItem(addContainerItemParams, item) then
			return true
		end
	else
		for i = 1, #setting.reward do
			local itemid = setting.reward[i][1]
			local count = setting.reward[i][2]
			local itemDescriptions = getItemDescriptions(itemid)
			local itemArticle = itemDescriptions.article
			local itemName = itemDescriptions.name

			local addItemParams = {
				player = player,
				itemid = itemid,
				count = count,
				weight = getItemWeight(itemid) * count,
				storage = setting.storage,
				key = setting.isKey,
				timer = setting.timerStorage,
				time = setting.time,
				questName = setting.questName,
				useKV = setting.useKV,
			}

			if count > 1 and ItemType(itemid):isStackable() then
				if itemDescriptions.plural then
					itemName = itemDescriptions.plural
				end
				addItemParams.message = "You have found " .. count .. " " .. itemName
			elseif ItemType(itemid):getCharges() > 0 then
				addItemParams.message = "You have found " .. itemArticle .. " " .. itemName
				if not ItemType(itemid):isRune() then
					addItemParams.weight = getItemWeight(itemid)
				end
			else
				addItemParams.message = "You have found " .. itemArticle .. " " .. itemName
			end

			if not playerAddItem(addItemParams, item) then
				return true
			end
		end
	end

	return true
end

for uniqueRange = 5000, 9000 do
	questReward:uid(uniqueRange)
end

for uniqueRange = 10000, 12000 do
	questReward:uid(uniqueRange)
end

questReward:register()

local questCount = 0
for _ in pairs(ChestUnique) do
	questCount = questCount + 1
end

logger.info("Loaded " .. questCount .. " quests.")
