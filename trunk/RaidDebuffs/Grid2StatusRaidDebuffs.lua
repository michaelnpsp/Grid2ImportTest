
local BZ = LibStub("LibBabble-Zone-3.0"):GetLookupTable()
local spellDB = {
	[BZ["Karazhan"]] = { 37066, 29522, 29511, 30753, 30115, 30843 },
	[BZ["Zul'Aman"]] = { 42389, 43657, 43622, 43299, 43303, 43613, 43501, 43093, 43095, 43150 },
	[BZ["Serpentshrine Cavern"]] = { 39042, 39044, 38235, 38246, 37850, 38023, 38024, 38025, 37676, 37641, 37749, 38280, },
	[BZ["Tempest Keep"]] = { 37123, 37120, 37118, 42783, 37027, 36798, },
	[BZ["Hyjal Summit"]] = { 31249, 31306, 31347, 31341, 31344, 31944, 31972, },
	[BZ["Black Temple"]] = { 34654, 39674, 41150, 41168, 39837, 40239, 40251, 40604, 40481, 40508, 42005, 41303, 41410, 41376, 40860, 41001, 41485, 41472, 41914, 41917, 40585, 40932, },
	[BZ["Sunwell Plateau"]] = { 46561, 46562, 46266, 46557, 46560, 46543, 46427, 45032, 45034, 45018, 46384, 45150, 45855, 45662, 45402, 45717, 45256, 45333, 46771, 45270, 45347, 45348, 45996, 45442, 45641, 45885, 45737, 45740, 45741, },
	[BZ["Naxxramas"]] = {
		--Trash	
		55314,--Strangulate

		--Anub'Rekhan
		28786, 54022,--Locust Swarm (N, H)

		--Grand Widow Faerlina
		28796, 54098,--Poison Bolt Volley (N, H)
		28794, 54099,--Rain of Fire (N, H)

		--Maexxna
		28622,--Web Wrap (NH)
		54121, 28776,--Necrotic Poison (N, H)

		--Noth the Plaguebringer
		29213, 54835,--Curse of the Plaguebringer (N, H)
		29214, 54836,--Wrath of the Plaguebringer (N, H)
		29212,--Cripple (NH)

		--Heigan the Unclean
		29998, 55011,--Decrepit Fever (N, H)
		29310,--Spell Disruption (NH)

		--Grobbulus
		28169,--Mutating Injection (NH)

		--Gluth
		54378,--Mortal Wound (NH)			
		29306,--Infected Wound (NH)

		--Thaddius
		28084, 28085,--Negative Charge (N, H)
		28059, 28062,--Positive Charge (N, H)

		--Instructor Razuvious
		55550,--Jagged Knife (NH)
					
		--Sapphiron
		28522,--Icebolt (NH)
		28542, 55665,--Life Drain (N, H)

		--Kel'Thuzad
		28410,--Chains of Kel'Thuzad (H)
		27819,--Detonate Mana (NH)
		27808,--Frost Blast (NH)
	},
	[BZ["The Eye of Eternity"]] = {
		--Malygos	
		56272, 60072,--Arcane Breath (N, H)
		57407, 60936,--Surge of Power (N, H)
	},
	[BZ["The Obsidian Sanctum"]] = {
		--Trash	
		39647,--Curse of Mending
		58936,--Rain of Fire

		--Sartharion	
		60708,--Fade Armor (N, H)
		57491,--Flame Tsunami (N, H)
	},
	[BZ["Trial of the Crusader"]] = {
		--Gormok the Impaler
		66331, 67477, 67478, 67479,--Impale(10, 25, 10H, 25H)
		66406,--Snobolled!

		--Acidmaw --Dreadscale
		66819, 67609, 67610, 67611,--Acidic Spew (10, 25, 10H, 25H)
		66821, 67635, 67636, 67637,--Molten Spew (10, 25, 10H, 25H)
		66823, 67618, 67619, 67620,--Paralytic Toxin (10, 25, 10H, 25H)
		66869,--Burning Bile

		--Icehowl
		66770, 67654, 67655, 67656,--Ferocious Butt(10, 25, 10H, 25H)
		66689, 67650, 67651, 67652,--Arctic Breathe(10, 25, 10H, 25H)
		66683,--Massive Crash

		--Lord Jaraxxus
		66532, 66963, 66964, 66965,--Fel Fireball (10, 25, 10H, 25H)
		66237, 67049, 67050, 67051,--Incinerate Flesh (10, 25, 10H, 25H)
		66242, 67059, 67060, 67061,--Burning Inferno (10, 25, 10H, 25H)
		66197, 68123, 68124, 68125,--Legion Flame (10, 25, 10H, 25H)
		66199, 68126, 68127, 68128,--Legion Flame (Patch?: 10, 25, 10H, 25H)
		66877, 67070, 67071, 67072,--Legion Flame (Patch Icon?: 10, 25, 10H, 25H)
		66283,--Spinning Pain Spike
		66209,--Touch of Jaraxxus(H)
		66211,--Curse of the Nether(H)
		66333, 66334, 66335, 66336, 68156,--Mistress' Kiss (10H, 25H)

		--Faction Champions
		65812, 68154, 68155, 68156,--Unstable Affliction (10, 25, 10H, 25H)
		--65960,--Blind
		--65801,--Polymorph
		--65543,--Psychic Scream
		--66054,--Hex
		--65809,--Fear

		--The Twin Val'kyr
		67176,--Dark Essence
		67223,--Light Essence
		67282, 67283,--Dark Touch
		67297, 67298,--Light Touch
		67309, 67310, 67311, 67312,--Twin Spike (10, 25, 10H, 25H)

		--Anub'arak
		67574,--Pursued by Anub'arak
		--66240, 67630, 68646, 68647,--Leeching Swarm (10, 25, 10H, 25H)
		66013, 67700, 68509, 68510,--Penetrating Cold (10, 25, 10H, 25H)
		67847, 67721,--Expose Weakness
		66012,--Freezing Slash
		67863,--Acid-Drenched Mandibles(25H)
	},
	[BZ["Ulduar"]] = {
		--Trash
		62310, 62928,--Impale (N, H)
		63612, 63673,--Lightning Brand (N, H)
		63615,--Ravage Armor (NH)
		62283, 62438,--Iron Roots (N, H)
		63169, 63549,--Petrify Joints (N, H)
					
		--Razorscale
		64771,--Fuse Armor (NH)
					
		--Ignis the Furnace Master
		62548, 63476,--Scorch (N, H)
		62680, 63472,--Flame Jet (N, H)
		62717, 63477,--Slag Pot (N, H)
					
		--XT-002
		63024, 64234,--Gravity Bomb (N, H)
		63018, 65121,--Light Bomb (N, H)
					
		--The Assembly of Iron
		61888, 64637,--Overwhelming Power (N, H)
		62269, 63490,--Rune of Death (N, H)
		61903, 63493,--Fusion Punch (N, H)
		61912, 63494,--Static Disruption(N, H)
					
		--Kologarn
		64290, 64292,--Stone Grip (N, H)
		63355, 64002,--Crunch Armor (N, H)
		62055,--Brittle Skin (NH)			
			
		--Hodir
		62469,--Freeze (NH)
		61969, 61990,--Flash Freeze (N, H)
		62188,--Biting Cold (NH)
					
		--Thorim
		62042,--Stormhammer (NH)				
		62130,--Unbalancing Strike (NH)
		62526,--Rune Detonation (NH)
		62470,--Deafening Thunder (NH)
		62331, 62418,--Impale (N, H)
			
		--Freya
		62532,--Conservator's Grip (NH)
		62589, 63571,--Nature's Fury (N, H)
		62861, 62930,--Iron Roots (N, H)

		--Mimiron
		63666,--Napalm Shell (N)
		65026,--Napalm Shell (H)
		62997,--Plasma Blast (N)
		64529,--Plasma Blast (H)
		64668,--Magnetic Field (NH)

		--General Vezax
		63276,--Mark of the Faceless (NH)
		63322,--Saronite Vapors (NH)

		--Yogg-Saron
		63147,--Sara's Anger(NH)
		63134,--Sara's Blessing(NH)
		63138,--Sara's Fervor(NH)
		63830,--Malady of the Mind (H)
		63802,--Brain Link(H)
		63042,--Dominate Mind (H)
		64152,--Draining Poison (H)
		64153,--Black Plague (H)
		64125, 64126,--Squeeze (N, H)
		64156,--Apathy (H)
		64157,--Curse of Doom (H)
		--63050,--Sanity(NH)

		--Algalon
		64412,--Phase Punch
	},
	[BZ["Vault of Archavon"]] = {
		--Koralon	
		67332, 66684,--Flaming Cinder (10, 25)
	},
	[BZ["Icecrown Citadel"]] = {
		--Lord Marrowgar
		70823,--Coldflame
		69065,--Impaled
		70835,--Bone Storm

		--Lady Deathwhisper
		72109,--Death and Decay
		71289,--Dominate Mind
		71204,--Touch of Insignificance
		67934,--Frost Fever
		71237,--Curse of Torpor
		72491,71951,72490,72491,72492,--Necrotic Strike

		--Gunship Battle
		69651,--Wounding Strike

		--Deathbringer Saurfang
		72293,--Mark of the Fallen Champion
		72442,--Boiling Blood
		72449,--Rune of Blood
		72769,--Scent of Blood (heroic)

		--Festergut
		69290,71222,73033,73034,--Blighted Spore
		72272,72273,72274,72276,72277,--Vile Gas?
		73019,73020,73173,73174,--Vile Gas?
		72219,72551,72552,72553,--Gastric Bloat

		--Rotface
		69674,71224,73022,73023,--Mutated Infection

		--Professor Putricide
		70672,72455,72832,72833,--Gaseous Bloat
		70911,72854,72855,72856,--Unbound Plague
		},
}

local GSRD = Grid2:NewModule("StatusRaidDebuffs")
local status = Grid2.statusPrototype:new("raid-debuffs")
local frame = CreateFrame("Frame")
local spells = {}

function GSRD:UpdateZoneSpells(zone)
	wipe(spells)
	local zone = zone or GetRealZoneText()
	local db = spellDB[zone]
	if db then
		for _, spellId in ipairs(db) do
			local name = GetSpellInfo(spellId)
			if name then
				local found
				for _, s in ipairs(spells) do
					if s == name then
						found = true
						break
					end
				end
				if not found then
					spells[#spells + 1] = name
				end
			end
		end
	end
	if #spells == 0 then
		frame:UnregisterEvent("UNIT_AURA")
	else
		frame:RegisterEvent("UNIT_AURA")
	end
end


status.defaultDB = {
	profile = {
		color1 = { r = .5, g = .5, b = .5, a = 1 },
	}
}


function status:OnEnable()
	frame:RegisterEvent("ZONE_CHANGED_NEW_AREA")
	GSRD:UpdateZoneSpells()
end

function status:OnDisable()
	frame:UnregisterEvent("ZONE_CHANGED_NEW_AREA")
end

local states = {}
local textures = {}
local counts = {}
local types = {}
local durations = {}
local expirations = {}

function status:IsActive(unit)
	return states[unit]
end

function status:GetIcon(unit)
	return textures[unit]
end

function status:GetColor(unit)
	return 1, 0, 0
end

function status:GetCount(unit)
	return counts[unit]
end

function status:GetDuration(unit)
	return durations[unit]
end

function status:GetExpirationTime(unit)
	return expirations[unit]
end

local UnitDebuff = UnitDebuff
local ipairs = ipairs
frame:SetScript("OnEvent", function (self, event, ...)
	if event == "UNIT_AURA" then
		local unit = ...
		local spellIndex
		local auraIndex
		local index = 1
		while true do
			local name = UnitDebuff(unit, index)
			if not name then break end
			for i, n in ipairs(spells) do
				if name == n then
					if not spellIndex or i < spellIndex then
						auraIndex = index
						spellIndex = i
					end
					break
				end
			end
			index = index + 1
		end
		if spellIndex then
			local p_state = states[unit]
			local p_texture = textures[unit]
			local p_count = counts[unit]
			local p_type = types[unit]
			local p_duration = durations[unit]
			local p_expiration = expirations[unit]

			local n_state, n_texture, n_count, n_expiration, n_duration, _
			n_state = true
			_, _, n_texture, n_count, n_type, n_duration, n_expiration = UnitDebuff(unit, auraIndex)

			if
				p_state ~= n_state or
				p_texture ~= n_texture or
				p_count ~= n_count or
				p_type ~= n_type or
				p_duration ~= n_duration or
				p_expiration ~= n_expiration
			then
				states[unit] = n_state
				textures[unit] = n_texture
				counts[unit] = n_count
				types[unit] = n_type
				durations[unit] = n_duration
				expirations[unit] = n_expiration
				status:UpdateIndicators(unit)
			end
		elseif states[unit] then
			states[unit] = nil
			status:UpdateIndicators(unit)
		end
	else
		GSRD:UpdateZoneSpells()
	end
end)

Grid2:RegisterStatus(status, { "icon" })



-- Hook the loading of options so our associated lod options get loaded at the right time.
local prev_LoadOptions = Grid2.LoadOptions
function Grid2:LoadOptions(...)
	prev_LoadOptions(self, ...)

	local Grid2StatusRaidDebuffsOptions = Grid2Options.plugins["Grid2StatusRaidDebuffsOptions"]
	if (Grid2StatusRaidDebuffsOptions) then
		return
	end
	if (not IsAddOnLoaded("Grid2StatusRaidDebuffsOptions")) then
		LoadAddOn("Grid2StatusRaidDebuffsOptions")
	end
end

-- Hook GetCurrentSetup to blend in default options.
local prev_GetCurrentSetup = Grid2.GetCurrentSetup
function Grid2:GetCurrentSetup(...)
	local setup, class = prev_GetCurrentSetup(self, ...)
	if (not setup.Grid2StatusRaidDebuffs) then
		Grid2:LoadOptions()

		local Grid2StatusRaidDebuffsOptions = Grid2Options.plugins["Grid2StatusRaidDebuffsOptions"]
		if (Grid2StatusRaidDebuffsOptions) then
			Grid2StatusRaidDebuffsOptions:MakeDefaultSetup(setup, class)
		end
		setup.Grid2StatusRaidDebuffs = true
	end

	return setup, class
end

--[[
/dump Grid2.db.profile.setup.status["icon-center"]
/dump Grid2.db.profile.setup.status["corner-bottomright"]
/dump Grid2.statuses["raid-debuffs"]
--]]
