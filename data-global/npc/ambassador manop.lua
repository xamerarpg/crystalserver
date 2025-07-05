local internalNpcName = "Ambassador Manop"
local npcType = Game.createNpcType(internalNpcName)

local npcConfig = {}
npcConfig.name = internalNpcName
npcConfig.description = internalNpcName
npcConfig.health = 100
npcConfig.maxHealth = 100
npcConfig.walkInterval = 0
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 1816,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 81,
	lookAddons = 1,
}

npcConfig.flags = {
	floorchange = false,
}

npcConfig.voices = {
	interval = 15000,
	chance = 50,
	{ text = "Harmony. Enlightenment. Power." },
}

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)

local MONK_QUEST = "the_way_of_the_monk_quest"

local function hasAllShrines(player)
        local kv = player:questKV(MONK_QUEST):scoped("shrines")
        return kv:get("firstShrine") and kv:get("secondShrine") and kv:get("thirdShrine") and kv:get("fourthShrine")
end

local function creatureSayCallback(npc, creature, msgType, msg)
	local player = Player(creature)
	if not player then
		return false
	end

	local playerId = player:getId()
	msg = msg:lower()

	if msg == "bye" or msg == "farewell" then
		npcHandler:say("May the Three-Fold Path guide your steps.", npc, creature)
		npcHandler:resetNpc(creature)
		return true
	end

	if msg == "hi" or msg == "hello" then
                local kv = player:questKV(MONK_QUEST)
                if (kv:get("questline") or 0) < 1 then
                        npcHandler:say("I welcome you, traveller of fate's unsearchable roads. On behalf of the {Merudri}, let this be an invitation from a humble guide along the way of enlightenment.", npc, creature)
                        npcHandler:setTopic(playerId, 1)
                elseif hasAllShrines(player) then
			npcHandler:say("Congratulations, fortunate {seeker}. You are one step closer to becoming a true warrior {monk} and ready to leave this island. Let me hold you on your path.", npc, creature)
			npcHandler:setTopic(playerId, 3)
		else
			npcHandler:say("I am glad you take your acquaintance, {seeker}. You must have a lot of questions for which I would gladly prove answers. If you are interested in joining us as a true warrior {monk}, just ask.", npc, creature)
			npcHandler:setTopic(playerId, 0)
		end
		return true
	end

	if msg == "invitation" and npcHandler:getTopic(playerId) == 1 then
		npcHandler:say("Your path has led you to an ambassador of the Merudri. I am Manop and will do my best to explain you our {purpose}, legacy and role in it. Shall I continue?", npc, creature)
		npcHandler:setTopic(playerId, 2)
		return true
	end

	if msg == "yes" and npcHandler:getTopic(playerId) == 2 then
		npcHandler:say("I am glad you take your acquaintance, {seeker}. You must have a lot of questions for which I would gladly prove answers. If you are interested in joining us as a true warrior {monk}, just ask.", npc, creature)
                kv:set("questline", 1)
                kv:set("questlog", 1)
                player:setStorageValue(Storage.Quest.U15_00.TheWayOfTheMonk.Questline, 1)
                player:setStorageValue(Storage.Quest.U15_00.TheWayOfTheMonk.Questlog, 1)
		npcHandler:setTopic(playerId, 0)
		return true
	end

	if msg == "seeker" and npcHandler:getTopic(playerId) == 3 then
		npcHandler:say({
			"Like an orphan, fate has put your soul gently on the doorstep of a new world. You will view this reality with different eyes.",
			"You will change your ways to adapt as you follow the Three-Fold Path. It has guided the most powerful warriors across countless planes of existence to a higher state of consciousness.",
			"If you accept, I will send you to our temple in the Blue Valley as a MONK.",
		}, npc, creature)
		npcHandler:setTopic(playerId, 4)
		return true
	end

	if msg == "yes" and npcHandler:getTopic(playerId) == 4 then
		if player:getLevel() < 8 then
			npcHandler:say("You need to reach at least level 8 before you can become a monk.", npc, creature)
			return true
		end
		player:setTown(Town(32))
		player:setVocation(9)
		player:teleportTo(Position(33614, 31494, 7))
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		player:addItem(50257, 1)
		player:addItem(50195, 1)
		player:addItem(50171, 1)
                kv:set("questline", 2)
                kv:set("questlog", 2)
                player:setStorageValue(Storage.Quest.U15_00.TheWayOfTheMonk.Questline, 2)
                player:setStorageValue(Storage.Quest.U15_00.TheWayOfTheMonk.Questlog, 2)
		npcHandler:say("You are now a pilgrim on the Three-Fold Path. Welcome to the Blue Valley, Seeker.", npc, creature)
		npcHandler:setTopic(playerId, 0)
		return true
	end

	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcType.onThink = function(npc, interval)
	npcHandler:onThink(npc, interval)
end
npcType.onAppear = function(npc, creature)
	npcHandler:onAppear(npc, creature)
end
npcType.onDisappear = function(npc, creature)
	npcHandler:onDisappear(npc, creature)
end
npcType.onMove = function(npc, creature, fromPos, toPos)
	npcHandler:onMove(npc, creature, fromPos, toPos)
end
npcType.onSay = function(npc, creature, msgType, msg)
	npcHandler:onSay(npc, creature, msgType, msg)
end
npcType.onCloseChannel = function(npc, creature)
	npcHandler:onCloseChannel(npc, creature)
end

npcType:register(npcConfig)
