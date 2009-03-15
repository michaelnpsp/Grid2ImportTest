local L = LibStub("AceLocale-3.0"):GetLocale("Grid2Options")
local media = LibStub("LibSharedMedia-3.0", true)


-- List of indicator types that can be created
local newIndicatorTypes = {}

-- List of creation functions for creatable indicators
local funcCreateIndicatorList = {}

-- List of option creation functions for creatable indicators
local funcCreateOptionsList = {}

function Grid2Options.GetNewIndicatorTypes()
	return newIndicatorTypes
end

function Grid2Options:RegisterIndicators(setupList, indicatorTypeKey, name, funcCreate, funcCreateOptions)
	newIndicatorTypes[indicatorTypeKey] = name
	funcCreateIndicatorList[indicatorTypeKey] = funcCreate
	funcCreateOptionsList[indicatorTypeKey] = funcCreateOptions

	for indicatorKey in pairs(setupList) do
		funcCreateOptions(Grid2.indicators[indicatorKey])
	end
end


function Grid2Options.GetIndicatorStatus(info, statusKey)
	local indicator = info.arg

	for key, status in Grid2:IterateStatuses() do
		if (key == statusKey) then
			return status.indicators[indicator]
		end
	end

	return false
end

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
		end
	end
end

function Grid2Options:AddIndicatorStatusOptions(indicator, options)
	options.statuses = {
	    type = 'multiselect',
		order = 90,
		name = L["Statuses"],
		desc = L["Select statuses to display with the indicator"],
		values = function (info)
			return Grid2Options:GetStatusValues(indicator)
		end,
		get = Grid2Options.GetIndicatorStatus,
		set = Grid2Options.SetIndicatorStatus,
		arg = indicator,
	}
end


local function DeleteIndicator(info)
--[[
	local indicator = info.arg--.locationKey
	local locations = Grid2.db.profile.setup.locations
	locations[locationKey] = nil

	Grid2Frame:UpdateAllFrames()
	local setup = Grid2.db.profile.setup
	Grid2Options:AddSetupLocationOptions(setup, true)
--]]
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

function Grid2Options:AddIndicatorLocationOptions(indicator, options)
	options.location = {
	    type = 'select',
		order = 5,
		name = L["Location"],
		desc = L["Select the location of the indicator"],
	    values = Grid2Options.GetLocationValues,
		get = Grid2Options.GetIndicatorLocation,
		set = function (info, value)
			Grid2Options.SetIndicatorLocation(info, value)
			local location = Grid2Options:GetLocation(value)

			indicator.anchor = location.point
			indicator.anchorRel = location.relPoint
			indicator.offsetx = location.x
			indicator.offsety = location.y
			Grid2Frame:WithAllFrames(function (f) indicator:Layout(f) end)
		end,
		arg = indicator.name,
	}
end


local function AddTextIndicatorOptions(Text)
	local options = {
		textlength = {
			type = "range",
			order = 10,
			name = L["Center Text Length"],
			desc = L["Number of characters to show on Center Text indicator."],
			min = 0,
			max = 20,
			step = 1,
			get = function () return Text.db.profile.textlength end,
			set = function (_, v)
				Text.db.profile.textlength = v
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
				return Text.db.profile.fontSize
			end,
			set = function (_, v)
				Text.db.profile.fontSize = v
				local font = media and media:Fetch('font', Text.db.profile.font) or STANDARD_TEXT_FONT
				Grid2Frame:WithAllFrames(function (f) Text:SetTextFont(f, font, v) end)
			end,
		},
	}

	if Grid2Options.AddMediaOption then
		local fontOption = {
			type = "select",
			order = 70,
			name = L["Font"],
			desc = L["Adjust the font settings"],
			get = function ()
				return Text.db.profile.font
			end,
			set = function (_, v)
				Text.db.profile.font = v
				local font = media:Fetch("font", v)
				local fontsize = Text.db.profile.fontSize
				Grid2Frame:WithAllFrames(function (f) Text:SetTextFont(f, font, fontsize) end)
			end,
		}
		Grid2Options:AddMediaOption("font", fontOption)
		options.font = fontOption
	end
	Grid2Options:AddIndicatorLocationOptions(Text, options)
	Grid2Options:AddIndicatorStatusOptions(Text, options)

	Grid2Options:AddElement("indicator", Text, options)
end

local function AddBarIndicatorOptions(Bar)
	local options = {
		orientation = {
			type = "select",
			order = 10,
			name = L["Orientation of Frame"],
			desc = L["Set frame orientation."],
			get = function ()
				return Bar.db.profile.orientation
			end,
			set = function (_, v)
				Bar.db.profile.orientation = v
				Grid2Frame:WithAllFrames(function (f) Bar:SetOrientation(f) end)
			end,
			values={["VERTICAL"] = L["VERTICAL"], ["HORIZONTAL"] = L["HORIZONTAL"]}
		},
	}

	if Grid2Options.AddMediaOption then
		local textureOption = {
			type = "select",
			order = 70,
			name = L["Frame Texture"],
			desc = L["Adjust the texture of each unit's frame."],
			get = function (info)
				local v = Bar.db.profile.texture
				for i, t in ipairs(info.option.values) do
					if v == t then return i end
				end
			end,
			set = function (info, v)
				v = info.option.values[v]
				Bar.db.profile.texture = v
				local texture = media:Fetch("statusbar", v)
				Grid2Frame:WithAllFrames(function (f) Bar:SetTexture(f, texture) end)
			end,
		}
		Grid2Options:AddMediaOption("statusbar", textureOption)
		options.texture = textureOption
	end

	Grid2Options:AddElement("indicator", Bar, options)
end

local function AddBorderIndicatorOptions(Border)
	local options = {}
	Grid2Options:AddIndicatorStatusOptions(Border, options)

	Grid2Options:AddElement("indicator", Border, options)
end

local function AddIconIndicatorOptions(Icon)
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
				return Icon.db.profile.iconSize
			end,
			set = function (_, v)
				Icon.db.profile.iconSize = v
				Grid2Frame:WithAllFrames(function (f) Icon:SetIconSize(f, v) end)
			end,
		},
	}
	Grid2Options:AddIndicatorLocationOptions(Icon, options)
	Grid2Options:AddIndicatorStatusOptions(Icon, options)

	Grid2Options:AddElement("indicator", Icon, options)
end

local function AddSquareIndicatorOptions(Square)
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
				return Square.db.profile.cornerSize
			end,
			set = function (_, v)
				Square.db.profile.cornerSize = v
				Grid2Frame:WithAllFrames(function (f) Square:SetSize(f, v) end)
			end,
		},
	}
	Grid2Options:AddIndicatorLocationOptions(Square, options)
	Grid2Options:AddIndicatorStatusOptions(Square, options)

	Grid2Options:AddElement("indicator", Square, options)
end

local function AddBarColorIndicatorOptions(BarColor)
	Grid2Options:AddElement("indicator", BarColor, {
		invert = {
			type = "toggle",
			order = 12,
			name = L["Invert Bar Color"],
			desc = L["Swap foreground/background colors on bars."],
			get = function ()
				return BarColor.db.profile.invertBarColor
			end,
			set = function (_, v)
				BarColor.db.profile.invertBarColor = v
				Grid2Frame:WithAllFrames(function (f) BarColor:Update(f, f.unit) end)
			end,
		},
	})
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
		local location = Grid2Options:GetLocation(newIndicatorLocation)
		local info = {5, location.point, location.relPoint, location.x, location.y}

		Grid2Options:RegisterIndicatorLocation(newIndicatorName, newIndicatorLocation)

		local createFunc = funcCreateIndicatorList[newIndicatorType]
		local indicator = createFunc(Grid2, newIndicatorName, unpack(info))
		Grid2Frame:WithAllFrames(function (f)
			indicator:Create(f)
			indicator:Layout(f)
		end)

		Grid2.db.profile.setup.indicators[newIndicatorType][newIndicatorName] = info

		local funcCreateOptions = funcCreateOptionsList[newIndicatorType]
		funcCreateOptions(indicator)
	end
end

local function NewIndicatorDisabled()
	newIndicatorName = Grid2Options:GetValidatedName(newIndicatorName)
	if (newIndicatorName and newIndicatorName ~= "") then
		local indicators = Grid2.db.profile.setup.indicators
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
		newIndicatorLocation = {
		    type = 'select',
			order = 5,
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
	Grid2Options:AddElementGroup("indicator", options, reset)
end


function Grid2Options:AddSetupIndicatorsOptions(setup, reset)
	AddIndicatorsGroup(reset)

	local indicators = setup.indicators
	for indicatorKey in pairs(indicators.Bars) do
		AddBarIndicatorOptions(Grid2.indicators[indicatorKey])
		AddBarColorIndicatorOptions(Grid2.indicators[indicatorKey.."-color"])
	end

	AddBorderIndicatorOptions(Grid2.indicators.border)

	Grid2Options:RegisterIndicators(indicators.square, "square", L["Square"], Grid2.CreateSquareIndicator, AddSquareIndicatorOptions)
	Grid2Options:RegisterIndicators(indicators.icon, "icon", L["Icon"], Grid2.CreateIconIndicator, AddIconIndicatorOptions)
	Grid2Options:RegisterIndicators(indicators.text, "text", L["Text"], Grid2.CreateTextIndicator, AddTextIndicatorOptions)
end

Grid2Options:AddSetupIndicatorsOptions(Grid2.db.profile.setup)
