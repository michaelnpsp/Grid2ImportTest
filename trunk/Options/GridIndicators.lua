local L = LibStub("AceLocale-3.0"):GetLocale("Grid2Options")
local media = LibStub("LibSharedMedia-3.0", true)
local DBL = LibStub:GetLibrary("LibDBLayers-1.0")

local Grid2Options = Grid2Options

-- List of indicator types that can be created
local newIndicatorTypes = {}

function Grid2Options.GetNewIndicatorTypes()
	return newIndicatorTypes
end

function Grid2Options:UpdateIndicator(indicator, morph)
	local baseKey = indicator.name
	local dblData = Grid2.dblData

	local dbx = DBL:GetRuntimeDbx(dblData, "indicators", baseKey)
	if (indicator.UpdateDB) then
		if (morph) then
print("Disable", baseKey, dbx.type)
			Grid2Frame:WithAllFrames(function (f) indicator:Disable(f) end)
			local setupFunc = Grid2.setupFunc[dbx.type]
			if (setupFunc) then
print("UpdateIndicator:", baseKey, dbx.type, dbx.location, self.setupFunc[dbx.type])
				setupFunc(baseKey, dbx)
			else
				print("      *UpdateIndicator Could not find setupFunc for indicator", baseKey)
			end
		else
			indicator:UpdateDB(dbx)
		end
	end
end
--[[
/dump LibStub:GetLibrary("LibDBLayers-1.0"):GetRuntimeDbx(Grid2.dblData, "indicators", "sefsf")
/dump Grid2OptionsDB.objects.indicators.account.sefsf
/dump Grid2OptionsDB.objects.indicators.warrior.sefsf
--]]

function Grid2Options:GetNewStatusPriority(indicator)
	local priority = 99
	
	for key, value in pairs(indicator.priorities) do
--print(key, value)
		priority = math.max(priority, value + 1)
	end
	
--print(priority)
	return priority
end

function Grid2Options:RegisterIndicatorStatus(indicator, status)
	local dblData = Grid2.dblData
	local baseKey = indicator.name
	local statusKey = status.name
	local layer = DBL:GetObjectLayer(Grid2.dblData, "indicators", baseKey)

	local priority = Grid2Options:GetNewStatusPriority(indicator)
	DBL:SetupMapObject(dblData, "statusMap", layer, baseKey, statusKey, priority)
	DBL:FlattenMap(dblData, "statusMap", "indicators", "statuses")

	return priority
end

function Grid2Options:UnregisterIndicatorStatus(indicator, status)
	local dblData = Grid2.dblData
	local baseKey = indicator.name
	local statusKey = status.name
	local layer = DBL:GetObjectLayer(Grid2.dblData, "indicators", baseKey)

	DBL:DeleteMapObject(dblData, "statusMap", layer, baseKey, statusKey)
	DBL:FlattenMap(dblData, "statusMap", "indicators", "statuses")
end


-- Wrapper for indicator:SetStatusPriority that sets priority in setup as well
function Grid2Options:SetStatusPriority(indicator, status, priority)
	local dblData = Grid2.dblData
	local baseKey = indicator.name
	local statusKey = status.name
	local layer = DBL:GetObjectLayer(Grid2.dblData, "indicators", baseKey)

	DBL:SetupMapObject(dblData, "statusMap", layer, baseKey, statusKey, priority, true)
	indicator:SetStatusPriority(status, priority)
end


function Grid2Options.GetIndicatorStatus(info, statusKey)
	local indicator = info.arg
	statusKey = statusKey or info[# info]

	for key, status in Grid2:IterateStatuses() do
		if (key == statusKey) then
			return status.indicators[indicator]
		end
	end

	return false
end

function Grid2Options.SetIndicatorStatusCurrent(info, value)
	local indicator = info.arg
	local statusKey = info[# info]

	for key, status in Grid2:IterateStatuses() do
		if (key == statusKey) then
			if (value) then
				local priority = Grid2Options:RegisterIndicatorStatus(indicator, status)
				indicator:RegisterStatus(status, priority)
			else
				indicator:UnregisterStatus(status)
				Grid2Options:UnregisterIndicatorStatus(indicator, status)
			end
			Grid2Frame:WithAllFrames(function (f) indicator:Layout(f) end)
			Grid2Frame:ResetAllFrames()
			Grid2Frame:UpdateAllFrames()

			local parentOption = info.options.args.indicator.args[indicator.name].args.statusesCurrent
			wipe(parentOption.args)
			Grid2Options:AddIndicatorCurrentStatusOptions(indicator, parentOption.args)
		end
	end
end
--/dump Grid2Options.options.Grid2.args.indicator.args.alpha

function Grid2Options.SetIndicatorStatus(info, statusKey, value)
	local indicator = info.arg

	for key, status in Grid2:IterateStatuses() do
		if (key == statusKey) then
			if (value) then
				indicator:RegisterStatus(status, 99)
				Grid2Options:RegisterIndicatorStatus(indicator, status)
			else
				indicator:UnregisterStatus(status)
				Grid2Options:UnregisterIndicatorStatus(indicator, status)
			end
			Grid2Frame:WithAllFrames(function (f) indicator:Layout(f) end)
			Grid2Frame:ResetAllFrames()
			Grid2Frame:UpdateAllFrames()

			local parentOption = info.options.args.indicator.args[indicator.name].args.statusesCurrent
			wipe(parentOption.args)
			Grid2Options:AddIndicatorCurrentStatusOptions(indicator, parentOption.args)
		end
	end
end

local function StatusShiftUp(info, indicator, lowerStatus)
	for index, status in ipairs(indicator.statuses) do
		if (lowerStatus == status) then
			local newIndex = index - 1
			if (newIndex > 0) then
				local higherStatus = indicator.statuses[newIndex]
				local higherPriority = indicator:GetStatusPriority(higherStatus)
				local lowerPriority = indicator:GetStatusPriority(lowerStatus)
--print("StatusShiftUp", lowerPriority, higherPriority, lowerStatus.name, higherStatus.name)
				if (higherPriority == lowerPriority) then
					higherPriority = higherPriority + 1
				end
-- print("StatusShiftUp", lowerPriority, higherPriority, lowerStatus.name, higherStatus.name)
				Grid2Options:SetStatusPriority(indicator, higherStatus, lowerPriority)
				Grid2Options:SetStatusPriority(indicator, lowerStatus, higherPriority)
				DBL:FlattenMap(Grid2.dblData, "statusMap", "indicators", "statuses")

				local parentOption = info.options.args.indicator.args[indicator.name].args.statusesCurrent
				wipe(parentOption.args)
				Grid2Options:AddIndicatorCurrentStatusOptions(indicator, parentOption.args)
			end
			break
		end
	end
end

local function StatusShiftDown(info, indicator, higherStatus)
	for index, status in ipairs(indicator.statuses) do
		if (higherStatus == status) then
			local newIndex = index + 1
			if (newIndex <= # indicator.statuses) then
				local lowerStatus = indicator.statuses[newIndex]
				local higherPriority = indicator:GetStatusPriority(higherStatus)
				local lowerPriority = indicator:GetStatusPriority(lowerStatus)
				if (higherPriority == lowerPriority) then
					lowerPriority = lowerPriority - 1
				end
-- print("StatusShiftDown", lowerPriority, higherPriority, lowerStatus.name, higherStatus.name)
				Grid2Options:SetStatusPriority(indicator, higherStatus, lowerPriority)
				Grid2Options:SetStatusPriority(indicator, lowerStatus, higherPriority)
				DBL:FlattenMap(Grid2.dblData, "statusMap", "indicators", "statuses")

				local parentOption = info.options.args.indicator.args[indicator.name].args.statusesCurrent
				wipe(parentOption.args)
				Grid2Options:AddIndicatorCurrentStatusOptions(indicator, parentOption.args)
			end
			break
		end
	end
end

function Grid2Options:AddIndicatorCurrentStatusOptions(indicator, options)
	local statusKey, order
	if (indicator.statuses) then
		for index, status in ipairs(indicator.statuses) do
			statusKey = status.name
			order = 4 * index
			options[statusKey] = {
				type = "toggle",
				order = order,
				name = status.name,
				desc = L["Select statuses to display with the indicator"],
				get = Grid2Options.GetIndicatorStatus,
				set = Grid2Options.SetIndicatorStatusCurrent,
				arg = indicator,
			}
			options[statusKey .. "U"] = {
			    type = "execute",
				order = order + 1,
				width = "half",
			    name = L["+"],
			    desc = L["Move the status higher in priority"],
				icon = "Interface\\Buttons\\UI-MicroButton-Spellbook-Up",
			    func = function (info)
			    	StatusShiftUp(info, indicator, status)
				end,
				arg = indicator,
			}
			options[statusKey .. "D"] = {
			    type = "execute",
				order = order + 2,
				width = "half",
			    name = L["-"],
			    desc = L["Move the status lower in priority"],
				icon = "Interface\\Buttons\\UI-MicroButton-Spellbook-Down",
			    func = function (info)
			    	StatusShiftDown(info, indicator, status)
				end,
				arg = indicator,
			}
			options[statusKey .. "S"] = {
				type = "header",
				order = order + 3,
				name = "",
			}
		end
	end
end

function Grid2Options:AddIndicatorStatusOptions(indicator, options)
	options.statusesCurrent = {
		type = "group",
		order = 100,
		inline = true,
		name = L["Current Statuses"],
		desc = L["Current statuses in order of priority"],
		args = {},
	}
	Grid2Options:AddIndicatorCurrentStatusOptions(indicator, options.statusesCurrent.args)

	options.statusesAvailable = {
	    type = "multiselect",
		order = 200,
		name = L["Available Statuses"],
		desc = L["Available statuses you may add"],
		values = function (info)
			local statusAvailable = Grid2Options:GetAvailableStatusValues(indicator)
			return statusAvailable
		end,
		get = Grid2Options.GetIndicatorStatus,
		set = Grid2Options.SetIndicatorStatus,
		arg = indicator,
	}
end



local function DeleteIndicator(info)
	local indicator = info.arg
	local baseKey = indicator.name
	local dblData = Grid2.dblData

	-- Remove from options
	local layer = DBL:GetObjectLayer(Grid2.dblData, "indicators", baseKey)
	DBL:DeleteLayerObject(dblData, "indicators", layer, baseKey)
	DBL:FlattenSetupType(dblData, "indicators")
	
	-- Remove from runtime
	--ToDo: Is this enough or does delete / create need to work multiple times for same baseKey?
	for index, status in ipairs(indicator.statuses) do
		indicator:UnregisterStatus(status)
	end
	
	Grid2Frame:ResetAllFrames()
	Grid2Frame:UpdateAllFrames()

	Grid2Options:DeleteElement("indicator", baseKey)
end


function Grid2Options:AddIndicatorDeleteOptions(indicator, options)
	options.delete = {
	    type = "execute",
		order = 83,
	    name = L["Delete"],
	    func = DeleteIndicator,
		arg = indicator,
	}
end



local layerValues
local actualLayers
function Grid2Options.GetIndicatorLayerValues()
	if (not layerValues) then
		layerValues = {}
		actualLayers = {}
		for layer, index in pairs(DBL:GetLayerOrder(Grid2.dblData, "indicators")) do
			local name = L[layer] or layer
			layerValues[index] = name
			actualLayers[index] = layer
		end
	end
	return layerValues
end

function Grid2Options:AddIndicatorLayerOptions(indicator, options)
	local baseKey = indicator.name
	options.layer = {
	    type = 'select',
		order = 5,
		name = L["Layer"],
		desc = L["Layer level.  Higher layers (like Class or Spec) supercede lower ones like Account."],
	    values = Grid2Options.GetIndicatorLayerValues,
		get = function ()
			local layer = DBL:GetObjectLayer(Grid2.dblData, "indicators", baseKey)
			local layerIndex = DBL:GetLayerOrder(Grid2.dblData, "indicators")[layer]
			return layerIndex
		end,
		set = function (info, value)
			local dblData = Grid2.dblData
			local newLayer
			for layer, index in pairs(DBL:GetLayerOrder(dblData, "indicators")) do
				if (index == value) then
					newLayer = layer
				end
			end
			DBL:SetObjectLayer(dblData, "indicators", baseKey, newLayer, indicator.dbx.type)
			DBL:FlattenSetupType(dblData, "indicators")
			Grid2Options:UpdateIndicator(indicator)

			Grid2Frame:WithAllFrames(function (f) indicator:Layout(f) end)
		end,
	}
end



Grid2Options.typeMorphValues = {
	icon = {icon = L["icon"], square = L["square"], text = L["text"]},
	square = {icon = L["icon"], square = L["square"], text = L["text"]},
	text = {icon = L["icon"], square = L["square"], text = L["text"]},
}

function Grid2Options.GetIndicatorTypeValues(info)
	local indicator = info.arg
	local typeKey = indicator.dbx.type
	local typeMorphValues = Grid2Options.typeMorphValues
	
	if (not typeMorphValues[typeKey]) then
		typeMorphValues[typeKey] = {}
		typeMorphValues[typeKey][typeKey] = L[typeKey]
	end
	
	return Grid2Options.typeMorphValues[typeKey]
end

function Grid2Options.GetIndicatorType(info)
	local indicator = info.arg
	
	return indicator.dbx.type
end

local defaultFont = "Friz Quadrata TT"
Grid2Options.typeDefaultValues = {
	icon = {iconSize = 16, fontSize = 8,},
	square = {cornerSize = 5,},
	text = {textlength = 12, fontSize = 8, font = defaultFont,},
}

function Grid2Options.SetIndicatorType(info, value)
	local indicator = info.arg
	local baseKey = indicator.name
	local morph = indicator.dbx.type ~= value
	local dbx = DBL:GetOptionsDbx(Grid2.dblData, "indicators", baseKey)
	
	indicator.dbx.type = value
	dbx.type = value
	for k, v in pairs(Grid2Options.typeDefaultValues[value]) do
		if (not dbx[k]) then
			dbx[k] = v
		end
	end
	
	if (morph) then
		Grid2Frame:WithAllFrames(function (f) indicator:Disable(f) end)
		Grid2:UnregisterIndicator(indicator)
		local setupFunc = Grid2.setupFunc[dbx.type]
print("Disable", baseKey, dbx.type, Grid2.setupFunc[dbx.type], setupFunc)
		if (setupFunc) then
print("UpdateIndicator:", baseKey, dbx.type, dbx.location)
			setupFunc(baseKey, dbx)
		else
			print("      *UpdateIndicator Could not find setupFunc for indicator", baseKey)
		end
		indicator:UpdateDB(dbx)
	end
Grid2Frame:WithAllFrames(function (f) indicator:Layout(f) end)
Grid2Frame:UpdateAllFrames()
Grid2Frame:Reset()
end

function Grid2Options:MakeIndicatorTypeOptions(indicator, options, optionParams)
	local baseKey = indicator.name
	options.type = {
	    type = 'select',
		order = 3,
		name = L["Type"],
		desc = L["Type of indicator"],
	    values = Grid2Options.GetIndicatorTypeValues,
	    get = Grid2Options.GetIndicatorType,
	    set = Grid2Options.SetIndicatorType,
		arg = indicator,
	}
end



local locationValues = {}
function Grid2Options.GetLocationValues()
	wipe(locationValues)
	for baseKey, location in pairs(Grid2.locations) do
		local name = L[location.name] or location.name
		locationValues[baseKey] = name
	end

	return locationValues
end

function Grid2Options:AddIndicatorLocationOptions(indicator, options)
	local baseKey = indicator.name
	options.location = {
	    type = 'select',
		order = 5,
		name = L["Location"],
		desc = L["Select the location of the indicator"],
	    values = Grid2Options.GetLocationValues,
		get = function () return indicator.dbx.location end,
		set = function (info, value)
			indicator.dbx.location = value
			DBL:GetOptionsDbx(Grid2.dblData, "indicators", baseKey).location = value

			local location = Grid2Options:GetLocation(value)
			indicator.anchor = location.point
			indicator.anchorRel = location.relPoint
			indicator.offsetx = location.x
			indicator.offsety = location.y

			Grid2Frame:WithAllFrames(function (f) indicator:Layout(f) end)
		end,
		arg = indicator,
	}
end



local function AddTextIndicatorOptions(indicator)
	local baseKey = indicator.name
	local options = {
		textlength = {
			type = "range",
			order = 10,
			name = L["Center Text Length"],
			desc = L["Number of characters to show on Center Text indicator."],
			min = 0,
			max = 20,
			step = 1,
			get = function () return indicator.dbx.textlength end,
			set = function (_, v)
				indicator.dbx.textlength = v
				DBL:GetOptionsDbx(Grid2.dblData, "indicators", baseKey).textlength = v
				Grid2Frame:UpdateAllFrames()
			end,
		},
		fontsize = {
			type = "range",
			order = 20,
			name = L["Font Size"],
			desc = L["Adjust the font size."],
			min = 6,
			max = 24,
			step = 1,
			get = function ()
				return indicator.dbx.fontSize
			end,
			set = function (_, v)
				indicator.dbx.fontSize = v
				DBL:GetOptionsDbx(Grid2.dblData, "indicators", baseKey).fontSize = v
				local font = media and media:Fetch('font', indicator.dbx.font) or STANDARD_TEXT_FONT
				Grid2Frame:WithAllFrames(function (f) indicator:SetTextFont(f, font, v) end)
			end,
		},
		duration = {
			type = "toggle",
			name = L["Show duration"],
			desc = L["Show the time remaining."],
			order = 80,
			tristate = true,
			get = function ()
				return indicator.dbx.duration
			end,
			set = function (_, v)
				indicator.dbx.duration = v
				DBL:GetOptionsDbx(Grid2.dblData, "indicators", baseKey).duration = v
				Grid2Frame:UpdateAllFrames()
			end,
		}
	}

	if Grid2Options.AddMediaOption then
		local fontOption = {
			type = "select",
			order = 70,
			name = L["Font"],
			desc = L["Adjust the font settings"],
		}
		Grid2Options:AddMediaOption("font", fontOption)
		local values = fontOption.values
		fontOption.get = function ()
			local fontIndex
			for index, handle in ipairs(values) do
				if (indicator.dbx.font == handle) then
					fontIndex = index
					break
				end
			end
			return fontIndex
		end
		fontOption.set = function (_, v)
			local fontHandle = values[v]
			indicator.dbx.font = fontHandle
			DBL:GetOptionsDbx(Grid2.dblData, "indicators", baseKey).font = fontHandle
			local font = media:Fetch("font", fontHandle)
			local fontsize = indicator.dbx.fontSize
			Grid2Frame:WithAllFrames(function (f) indicator:SetTextFont(f, font, fontsize) end)
		end

		options.font = fontOption
	end
	Grid2Options:MakeIndicatorTypeOptions(indicator, options)
	Grid2Options:AddIndicatorLocationOptions(indicator, options)
	Grid2Options:AddIndicatorLayerOptions(indicator, options)
	Grid2Options:AddIndicatorStatusOptions(indicator, options)
	Grid2Options:AddIndicatorDeleteOptions(indicator, options)

	Grid2Options:AddElement("indicator", indicator, options)

	local TextColor = Grid2.indicators[indicator.name .. "-color"]
	if (not TextColor) then
		return
	end

	options = {}
	Grid2Options:AddIndicatorStatusOptions(TextColor, options)

	Grid2Options:AddElement("indicator", TextColor, options)
end

local function AddAlphaIndicatorOptions(indicator)
	local options = {}
	Grid2Options:AddIndicatorLayerOptions(indicator, options)
	Grid2Options:AddIndicatorStatusOptions(indicator, options)

	Grid2Options:AddElement("indicator", indicator, options)
end

local function AddBarIndicatorOptions(indicator)
	local baseKey = indicator.name
	local options = {}

	if Grid2Options.AddMediaOption then
		local textureOption = {
			type = "select",
			order = 70,
			name = L["Frame Texture"],
			desc = L["Adjust the texture of each unit's frame."],
			get = function (info)
				local v = indicator.dbx.texture
				for i, t in ipairs(info.option.values) do
					if v == t then return i end
				end
			end,
			set = function (info, v)
				v = info.option.values[v]
				indicator.dbx.texture = v
				DBL:GetOptionsDbx(Grid2.dblData, "indicators", baseKey).texture = v
				local texture = media:Fetch("statusbar", v)
				Grid2Frame:WithAllFrames(function (f) indicator:SetTexture(f, texture) end)
			end,
		}
		Grid2Options:AddMediaOption("statusbar", textureOption)
		options.texture = textureOption
	end

	Grid2Options:AddElement("indicator", indicator, options)
end

local function AddBorderIndicatorOptions(indicator)
	local options = {}
	Grid2Options:AddIndicatorLayerOptions(indicator, options)
	Grid2Options:AddIndicatorStatusOptions(indicator, options)

	Grid2Options:AddElement("indicator", indicator, options)
end

local function AddIconIndicatorOptions(indicator)
	local baseKey = indicator.name
	local options = {
		iconsize = {
			type = "range",
			order = 10,
			name = L["Icon Size"],
			desc = L["Adjust the size of the center icon."],
			min = 5,
			max = 50,
			step = 1,
			get = function ()
				return indicator.dbx.iconSize
			end,
			set = function (_, v)
				indicator.dbx.iconSize = v
				DBL:GetOptionsDbx(Grid2.dblData, "indicators", baseKey).iconSize = v	-- ToDo: handle nilling out if ancestor matches v
				Grid2Frame:WithAllFrames(function (f) indicator:SetIconSize(f, v) end)
			end,
		},
	}
	Grid2Options:MakeIndicatorTypeOptions(indicator, options)
	Grid2Options:AddIndicatorLocationOptions(indicator, options)
	Grid2Options:AddIndicatorLayerOptions(indicator, options)
	Grid2Options:AddIndicatorStatusOptions(indicator, options)
	Grid2Options:AddIndicatorDeleteOptions(indicator, options)

	Grid2Options:AddElement("indicator", indicator, options)
end

local function AddSquareIndicatorOptions(indicator)
	local baseKey = indicator.name
	local options = {
		size = {
			type = "range",
			order = 10,
			name = L["Size"],
			desc = L["Adjust the size of the indicators."],
			min = 1,
			max = 20,
			step = 1,
			get = function ()
				return indicator.dbx.cornerSize
			end,
			set = function (_, v)
				indicator.dbx.cornerSize = v
				DBL:GetOptionsDbx(Grid2.dblData, "indicators", baseKey).cornerSize = v
				Grid2Frame:WithAllFrames(function (f) indicator:SetSize(f, v) end)
			end,
		},
	}
	Grid2Options:MakeIndicatorTypeOptions(indicator, options)
	Grid2Options:AddIndicatorLocationOptions(indicator, options)
	Grid2Options:AddIndicatorLayerOptions(indicator, options)
	Grid2Options:AddIndicatorStatusOptions(indicator, options)
	Grid2Options:AddIndicatorDeleteOptions(indicator, options)

	Grid2Options:AddElement("indicator", indicator, options)
end

local function AddBarColorIndicatorOptions(indicator)
	local baseKey = indicator.name
	local options = {
		invert = {
			type = "toggle",
			order = 12,
			name = L["Invert Bar Color"],
			desc = L["Swap foreground/background colors on bars."],
			tristate = true,
			get = function ()
				return indicator.dbx.invertBarColor
			end,
			set = function (_, v)
				indicator.dbx.invertBarColor = v
				
				--Apply changes to the bar dbx
				local indicatorKey = indicator.barKey
				DBL:GetOptionsDbx(Grid2.dblData, "indicators", indicatorKey).invertBarColor = v

				Grid2Frame:WithAllFrames(function (f) indicator:Update(f, f.unit) end)
			end,
		},
	}
	Grid2Options:AddIndicatorStatusOptions(indicator, options)
	Grid2Options:AddElement("indicator", indicator, options)
end



local newIndicatorName = ""
local function getNewIndicatorNameValue()
	return newIndicatorName
end

local function setNewIndicatorNameValue(info, customName)
	customName = Grid2Options:GetValidatedName(customName)
	newIndicatorName = customName
end


local newIndicatorType = "square"
local function getNewIndicatorType(info)
	return newIndicatorType
end

local function setNewIndicatorType(info, indicatorType)
	newIndicatorType = indicatorType
end


local newObjectLayerIndex = 1
local function getNewObjectLayer(info)
	return newObjectLayerIndex
end

local function setNewObjectLayer(info, index)
	newObjectLayerIndex = index
end


local newIndicatorLocation = "corner-top-left"
local function getNewIndicatorLocation(info)
	return newIndicatorLocation
end

local function setNewIndicatorLocation(info, indicatorLocation)
	newIndicatorLocation = indicatorLocation
end


local function NewIndicator()
	newIndicatorName = Grid2Options:GetValidatedName(newIndicatorName)
	if (newIndicatorName and newIndicatorName ~= "") then
		local baseKey = newIndicatorName
		local dblData = Grid2.dblData
		local layer = actualLayers[newObjectLayerIndex]
		
		--Create default settings
		--ToDo: this needs to be in a setup list of functions somewhere
		local dbx
		if (newIndicatorType == "square") then
			dbx = {type = "square", level = 9, location = newIndicatorLocation, cornerSize = 5,}
		elseif (newIndicatorType == "icon") then
			dbx = {type = "icon", level = 8, location = newIndicatorLocation, iconSize = 16, fontSize = 8,}
		elseif (newIndicatorType == "text") then
			dbx = {type = "text", level = 6, location = newIndicatorLocation, textlength = 12, fontSize = 8, font = "Friz Quadrata TT",}
		end

		--Create the new object in options settings then flatten so it is copied to runtime settings
		DBL:SetupLayerObject(dblData, "indicators", layer, baseKey, dbx, true)
		DBL:FlattenSetupType(dblData, "indicators")
		
		--Find the flattened dbx
		dbx = DBL:GetRuntimeDbx(dblData, "indicators", baseKey)
		local setupFunc = Grid2.setupFunc[newIndicatorType]
--print("NewIndicator", layer, baseKey, dbx.type)
		local indicator = setupFunc(baseKey, dbx)
		Grid2Frame:WithAllFrames(function (f)
			indicator:Create(f)
			indicator:Layout(f)
		end)

		local funcMakeOptions = Grid2Options.typeMakeOptions[dbx.type]
		if (funcMakeOptions) then
			funcMakeOptions(indicator)
		end
	end
end

local function NewIndicatorDisabled()
	newIndicatorName = Grid2Options:GetValidatedName(newIndicatorName)
	if (newIndicatorName and newIndicatorName ~= "") then
		local indicators = DBL:GetRuntimeSetup(Grid2.dblData, "indicators")

		if (not indicators[newIndicatorName]) then
			return false
		end
	end
	return true
end

function ResetIndicators()
	local setup = Grid2.db.profile.setup
	Grid2:SetupDefaultIndicators(setup)
	Grid2Frame:UpdateAllFrames()
	Grid2Options:AddSetupIndicatorsOptions(setup, true)
end

local function AddIndicatorsGroup(reset)
	local options = {
		newIndicatorName = {
			type = "input",
			order = 1,
			width = "full",
			name = L["Name"],
			desc = L["Name of the new indicator"],
			usage = L["<CharacterOnlyString>"],
			get = getNewIndicatorNameValue,
			set = setNewIndicatorNameValue,
		},
		newIndicatorType = {
		    type = 'select',
			order = 3,
			name = L["Type"],
			desc = L["Type of indicator to create"],
		    values = Grid2Options.GetNewIndicatorTypes,
			get = getNewIndicatorType,
			set = setNewIndicatorType,
		},
		newObjectLayer = {
		    type = 'select',
			order = 5,
			name = L["Layer"],
			desc = L["Layer level.  Higher layers (like Class or Spec) supercede lower ones like Account."],
		    values = Grid2Options.GetIndicatorLayerValues,
			get = getNewObjectLayer,
			set = setNewObjectLayer,
		},
		newIndicatorLocation = {
		    type = 'select',
			order = 7,
			name = L["Location"],
			desc = L["Select the location of the indicator"],
		    values = Grid2Options.GetLocationValues,
			get = getNewIndicatorLocation,
			set = setNewIndicatorLocation,
		},
		newIndicator = {
			type = "execute",
			order = 9,
			name = L["New Indicator"],
			desc = L["Create a new indicator."],
			func = NewIndicator,
			disabled = NewIndicatorDisabled,
		},
		resetIndicatorsHeader = {
			type = "header",
			order = 10,
			name = "",
		},
		resetIndicators = {
			type = "execute",
			order = 11,
			name = L["Reset Indicators"],
			desc = L["Reset indicators to defaults."],
			func = ResetIndicators,
		},
	}
	Grid2Options:AddElementGroup("indicator", options, 50, reset)
end

--No options for the indicator
function Grid2Options:MakeNoIndicatorOptions()
end


function Grid2Options:AddCreatableOptionHandler(typeKey, name, funcMakeOptions, optionParams)
	newIndicatorTypes[typeKey] = name
	self:AddOptionHandler(typeKey, funcMakeOptions, optionParams)
end


function Grid2Options:MakeIndicatorOptions(dblData, reset)
	local objects = DBL:GetOptionsObjects(dblData, "indicators")
	
	AddIndicatorsGroup(reset)

	self:AddOptionHandler("alpha", AddAlphaIndicatorOptions)
	self:AddOptionHandler("bar", AddBarIndicatorOptions)
	self:AddOptionHandler("bar-color", AddBarColorIndicatorOptions)
	self:AddOptionHandler("border", AddBorderIndicatorOptions)

	self:AddCreatableOptionHandler("icon", L["icon"], AddIconIndicatorOptions)
	self:AddCreatableOptionHandler("square", L["square"], AddSquareIndicatorOptions)
	self:AddCreatableOptionHandler("text", L["text"], AddTextIndicatorOptions)
	self:AddOptionHandler("text-color", Grid2Options.MakeNoIndicatorOptions)

	local setup = DBL:GetRuntimeSetup(dblData, "indicators")
	for baseKey, layer in pairs(setup) do
		local indicator = Grid2.indicators[baseKey]
--print("MakeIndicatorOptions", layer, baseKey)
		local dbx = objects[layer][baseKey]
		if (dbx) then
			local funcMakeOptions = Grid2Options.typeMakeOptions[dbx.type]
			if (funcMakeOptions) then
				funcMakeOptions(indicator)
			else
				print("    **MakeIndicatorOptions no funcMakeOptions for", layer, baseKey, dbx.type)
			end
		else
			print("    **MakeIndicatorOptions no dbx for", layer, baseKey)
		end
	end
end

