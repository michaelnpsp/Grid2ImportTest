local L =  LibStub:GetLibrary("AceLocale-3.0"):NewLocale("Grid2Options", "zhTW")
if not L then return end

--{{{ General options
L["GRID2_DESC"] = "歡迎來到Grid2"

L["General Settings"] = "一般設置"

-- L["statuses"] = ""
-- L["indicators"] = ""

-- L["Frames"] = ""
L["frame"] = "frame"

L["Invert Bar Color"] = "反轉顏色"
L["Swap foreground/background colors on bars."] = "反轉提示條上背景/前景的顏色。"

-- L["Background Color"] = ""
-- L["Sets the background color of each unit frame"] = ""

L["Mouseover Highlight"] = "啟用滑鼠懸停高亮"
L["Toggle mouseover highlight."] = "啟用/禁用滑鼠懸停高亮。"

L["Show Tooltip"] = "顯示提示訊息"
L["Show unit tooltip.  Choose 'Always', 'Never', or 'OOC'."] = "顯示單位框架的提示訊息。選擇“總是”，“不顯示”或“非戰鬥”。"
L["Always"] = "總是"
L["Never"] = "不顯示"
L["OOC"] = "非戰斗"

-- L["Background Texture"] = ""
-- L["Select the frame background texture."] = ""

-- L["Inner Border Size"] = ""
-- L["Sets the size of the inner border of each unit frame"] = ""

-- L["Inner Border Color"] = ""
-- L["Sets the color of the inner border of each unit frame"] = ""

L["Frame Width"] = "框架寬度"
L["Adjust the width of each unit's frame."] = "調整個體框架的寬度。"

L["Frame Height"] = "框架高度"
L["Adjust the height of each unit's frame."] = "調整個體框架的高度。"

L["Orientation of Frame"] = "框架方向"
L["Set frame orientation."] = "設定框架方向。"
L["VERTICAL"] = "豎直"
L["HORIZONTAL"] = "水平"

L["Orientation of Text"] = "文字排列方式"
L["Set frame text orientation."] = "設定框架中文字排列方式。"

L["Show Frame"] = "顯示框架"
L["Sets when the Grid is visible: Choose 'Always', 'Grouped', or 'Raid'."] = "選擇什麼時候顯示 Grid：'總是'，'組隊'或'團隊'。"
L["Always"] = "總是"
L["Grouped"] = "組隊"
L["Raid"] = "團隊"

L["Layout Anchor"] = "佈局錨點"
L["Sets where Grid is anchored relative to the screen."] = "設定螢幕中 Grid 的錨點。"

L["Horizontal groups"] = "橫向排列隊伍"
L["Switch between horzontal/vertical groups."] = "選擇橫向/豎向排列隊伍。"
L["Clamped to screen"] = "限制在螢幕內"
L["Toggle whether to permit movement out of screen."] = "打開/關閉是否允許把框架移到超出螢幕的位置。"
L["Frame lock"] = "鎖定框架"
L["Locks/unlocks the grid for movement."] = "鎖定/解鎖 Grid 框架來讓其移動。"
L["Click through the Grid Frame"] = "透過 Grid 框架點擊"
L["Allows mouse click through the Grid Frame."] = "是否允許滑鼠透過 Grid 框架點擊。"

L["Display"] = "顯示"
L["Padding"] = "填白"
L["Adjust frame padding."] = "調整框架填白。"
L["Spacing"] = "空隙"
L["Adjust frame spacing."] = "調整框架空隙。"
L["Scale"] = "縮放"
L["Adjust Grid scale."] = "調整框架縮放。"

L["Group Anchor"] = "隊伍錨點"
L["Position and Anchor"] = "位置與錨點"
L["Sets where groups are anchored relative to the layout frame."] = "設定佈局中隊伍的錨點。"
L["Resets the layout frame's position and anchor."] = "重置佈局框架的位置和錨點。"

--blink
-- L["Misc"] = ""
L["blink"] = "blink"
L["Blink effect"] = "閃爍效果"
L["Select the type of Blink effect used by Grid2."] = "選擇 Grid2 閃爍效果。"
L["None"] = "無"
L["Blink"] = "閃爍"
L["Flash"] = "閃光"
L["Blink Frequency"] = "閃爍頻率"
L["Adjust the frequency of the Blink effect."] = "調整閃爍效果頻率。"

-- debugging & maintenance
L["debugging"] = "除錯"
L["Module debugging menu."] = "除錯模組菜單。"
L["Debug"] = "除錯"
L["Reset"] = "重設"
L["Reset and ReloadUI."] = "重設且重載UI"
-- L["Reset Setup"] = ""
-- L["Reset current setup and ReloadUI."] = ""
-- L["Reset Indicators"] = ""
-- L["Reset indicators to defaults."] = ""
L["Reset Locations"] = "重設地區"
L["Reset locations to the default list."] = "重設地區至預設清單"
L["Reset to defaults."] = "重設至預設設定"
L["Reset Statuses"] = "重設狀態"
L["Reset statuses to defaults."] = "重設狀態至預設清單"

-- L["Warning! This option will delete all settings and profiles, are you sure ?"] = ""

-- L["About"] = ""

--{{{ Layouts options
-- L["Layout"] = ""
L["Layouts"] = "佈局"
L["layout"] = "layout"
L["Layouts for each type of groups you're in."] = "你所在組的佈局類型。"
L["Layout Settings"] = "佈局設置"
L["Solo Layout"] = "單人佈局"
L["Select which layout to use for solo."] = "選擇使用哪個單人佈局。"
L["Party Layout"] = "隊伍佈局"
L["Select which layout to use for party."] = "選擇使用哪個隊伍佈局。"
L["Raid %s Layout"] = "團隊佈局 %s Layout"
L["Select which layout to use for %s person raids."] = "選擇使用%s人團隊佈局。"
L["Battleground Layout"] = "戰場佈局"
L["Select which layout to use for battlegrounds."] = "選擇使用哪個戰場佈局。"
L["Arena Layout"] = "競技場佈局"
L["Select which layout to use for arenas."] = "選擇使用哪個競技場佈局。"
-- L["Test"] = ""
-- L["Test the layout."] = ""

--{{{ Miscelaneous
L["Name"] = "名稱"
-- L["New"] = ""
L["Order"] = "命令"
L["Delete"] = "刪除"
L["Color"] = "顏色"
L["Color %d"] = "顏色 %d"
L["Color for %s."] = "%s的顏色。"
L["Font"] = "字型"
L["Adjust the font settings"] = "調整字型設定"
-- L["Border Texture"] = ""
-- L["Adjust the border texture."] = ""
L["Border"] = "邊框"
-- L["Border Color"] = ""
L["Background"] = "背景"
-- L["Background Color"] = ""
L["Adjust border color and alpha."] = "調整邊框的顏色和透明度。"
L["Adjust background color and alpha."] = "調整背景顏色和透明度。"
-- L["Opacity"] = ""
-- L["Set the opacity."] = ""
-- L["<CharacterOnlyString>"] = ""
L["Options for %s."] = "%s狀態的選項。"

--{{{ Indicator management
-- L["New Indicator"] = ""
-- L["Create a new indicator."] = ""
-- L["Name of the new indicator"] = ""
-- L["Enable Test Mode"] = ""
-- L["Disable Test Mode"] = ""
-- L["Appearance"] = ""
-- L["Adjust the border size of the indicator."] = ""
L["Reverse Cooldown"] = "反向冷卻"
-- L["Set cooldown to become darker over time instead of lighter."] = ""
-- L["Cooldown"] = ""
-- L["Text Location"] = ""
-- L["Disable OmniCC"] = ""
 
L["Type"] = "類型"
L["Type of indicator"] = "指示器類型"
L["Type of indicator to create"] = "創建指示器類型"

-- L["Text Length"] = ""
-- L["Maximum number of characters to show."] = ""
L["Font Size"] = "字型大小"
L["Adjust the font size."] = "調整字型尺寸。"
L["Size"] = "邊角大小"
L["Adjust the size of the indicator."] = "調整邊角指示器的大小。"

L["Frame Texture"] = "框架材質"
-- L["Adjust the texture of the bar."] = ""

-- L["Show stack"] = ""
-- L["Show the number of stacks."] = ""
-- L["Show duration"] = ""
-- L["Show the time remaining."] = ""
-- L["Show percent"] = ""
-- L["Show percent value"] = ""

-- L["Orientation of the Bar"] = ""
-- L["Set status bar orientation."] = ""
-- L["DEFAULT"] = ""
-- L["Frame Level"] = ""
-- L["Bars with higher numbers always show up on top of lower numbers."] = ""
-- L["Bar Width"] = ""
-- L["Choose zero to set the bar to the same width as parent frame"] = ""
-- L["Bar Height"] = ""
-- L["Choose zero to set the bar to the same height as parent frame"] = ""

L["Border Size"] = "框架邊框"
L["Adjust the border of each unit's frame."] = "Adjust the border of each unit's frame."
-- L["Border Background Color"] = ""
-- L["Adjust border background color and alpha."] = ""

-- L["Select statuses to display with the indicator"] = ""
L["+"] = "+"
L["-"] = "-"
-- L["Available Statuses"] = ""
-- L["Available statuses you may add"] = ""
-- L["Current Statuses"] = ""
-- L["Current statuses in order of priority"] = ""
-- L["Move the status higher in priority"] = ""
-- L["Move the status lower in priority"] = ""

L["indicator"] = "indicator"

-- indicator types
L["icon"] = "icon"
L["square"] = "square"
L["text"] = "text"
-- L["bar"] = ""

-- indicators
L["corner-top-left"] = "corner-top-left"
L["corner-top-right"] = "corner-top-right"
L["corner-bottom-right"] = "corner-bottom-right"
L["corner-bottom-left"] = "corner-bottom-left"
L["side-top"] = "side-top"
L["side-right"] = "side-right"
L["side-bottom"] = "side-bottom"
L["side-left"] = "side-left"
-- L["text-up"] = ""
-- L["text-down"] = ""
-- L["icon-left"] = ""
-- L["icon-center"] = ""
-- L["icon-right"] = ""

-- locations
L["CENTER"] = "中央"
L["TOP"] = "頂部"
L["BOTTOM"] = "底部"
L["LEFT"] = "左側"
L["RIGHT"] = "右側"
L["TOPLEFT"] = "左上"
L["TOPRIGHT"] = "右上"
L["BOTTOMLEFT"] = "左下"
L["BOTTOMRIGHT"] = "右下"

L["location"] = "location"

L["Location"] = "地區"
-- L["Align my align point relative to"] = ""
-- L["Align Point"] = ""
-- L["Align this point on the indicator"] = ""
L["X Offset"] = "X 偏移"
L["X - Horizontal Offset"] = "X - 水平偏移"
L["Y Offset"] = "Y 偏移"
L["Y - Vertical Offset"] = "Y - 垂直偏移"

--{{{ Statuses
-- L["-color"] = ""
-- L["-mine"] = ""
-- L["-not-mine"] = ""
-- L["buff-"] = ""
-- L["debuff-"] = ""
-- L["color-"] = ""

L["status"] = "status"

L["buff"] = "buff"
L["debuff"] = "debuff"

-- L["New Color"] = ""
L["New Status"] = "新狀態"
-- L["Create a new status."] = ""

-- L["Threshold"] = ""
-- L["Threshold at which to activate the status."] = ""

-- buff & debuff statuses management
-- L["Auras"] = ""
-- L["Buffs"] = ""
-- L["Debuffs"] = ""
-- L["Colors"] = ""
-- L["Health&Heals"] = ""
-- L["Mana&Power"] = ""
-- L["Combat"] = ""
-- L["Targeting&Distances"] = ""
-- L["Raid&Party Roles"] = ""
-- L["Miscellaneous"] = ""

-- L["Show if mine"] = ""
-- L["Show if not mine"] = ""
-- L["Show if missing"] = ""
-- L["Display status only if the buff is not active."] = ""
-- L["Display status only if the buff was cast by you."] = ""
-- L["Display status only if the buff was not cast by you."] = ""
-- L["Color count"] = ""
-- L["Select how many colors the status must provide."] = ""
-- L["You can include a descriptive prefix using separators \"@#>\""] = ""
-- L["examples: Druid@Regrowth Chimaeron>Low Health"] = ""

-- L["Class Filter"] = ""
-- L["Show on %s."] = ""

-- L["Blink Threshold"] = ""
-- L["Blink Threshold at which to start blinking the status."] = ""

-- L["Select Type"] = ""
-- L["Buff"] = ""
-- L["Debuff"] = ""
-- L["Buffs Group"] = ""
-- L["Debuffs Group"] = ""
-- L["Buffs Group: Defensive Cooldowns"] = ""
-- L["Debuffs Group: Healing Prevented "] = ""
-- L["Debuffs Group: Healing Reduced"] = ""

-- general statuses
L["name"] = "name"
L["mana"] = "mana"
-- L["poweralt"] = ""
-- L["alpha"] = ""
-- L["border"] = ""
-- L["heals"] = ""
L["health"] = "health"
L["charmed"] = "charmed"
-- L["afk"] = ""
L["death"] = "death"
L["classcolor"] = "classcolor"
-- L["creaturecolor"] = ""
-- L["friendcolor"] = ""
L["feign-death"] = "feign-death"
L["heals-incoming"] = "heals-incoming"
-- L["health-current"] = ""
L["health-deficit"] = "health-deficit"
L["health-low"] = "health-low"
L["lowmana"] = "lowmana"
L["offline"] = "offline"
-- L["raid-icon-player"] = ""
-- L["raid-icon-target"] = ""
L["range"] = "range"
L["ready-check"] = "準備確認"
-- L["role"] = ""
-- L["dungeon-role"] = ""
-- L["leader"] = ""
-- L["master-looter"] = ""
-- L["raid-assistant"] = ""
L["target"] = "target"
L["threat"] = "threat"
-- L["banzai"] = ""
L["vehicle"] = "vehicle"
L["voice"] = "voice"
L["pvp"] = "pvp"
-- L["direction"] = ""
-- L["resurrection"] = ""

-- L["Curse"] = ""
-- L["Poison"] = ""
-- L["Disease"] = ""
-- L["Magic"] = ""

-- L["raid-debuffs"] = ""

-- class specific buffs & debuffs statuses

-- shaman
-- L["EarthShield"] = ""
-- L["Earthliving"] = ""
-- L["Riptide"] = ""

-- Druid
-- L["Rejuvenation"] = ""
-- L["Lifebloom"] = ""
-- L["Regrowth"] = ""
-- L["WildGrowth"] = ""

-- paladin
-- L["BeaconOfLight"] = ""
-- L["FlashOfLight"] = ""
-- L["DivineShield"] = ""
-- L["DivineProtection"] = ""
-- L["HandOfProtection"] = ""
-- L["HandOfSalvation"] = ""
-- L["Forbearance"] = ""

-- priest
-- L["Grace"] = ""
-- L["DivineAegis"] = ""
-- L["InnerFire"] = ""
-- L["PrayerOfMending"] = ""
-- L["PowerWordShield"] = ""
-- L["Renew"] = ""
-- L["WeakenedSoul"] = ""
-- L["SpiritOfRedemption"] = ""

-- mage
-- L["FocusMagic"] = ""
-- L["IceArmor"] = ""
-- L["IceBarrier"] = ""

-- rogue
-- L["Evasion"] = ""

-- warlock
-- L["ShadowWard"] = ""
-- L["SoulLink"] = ""
-- L["DemonArmor"] = ""
-- L["FelArmor"] = ""

-- warrior
-- L["Vigilance"] = ""
-- L["BattleShout"] = ""
-- L["CommandingShout"] = ""
-- L["ShieldWall"] = ""
-- L["LastStand"] = ""

-- class color, creature color, friend color status
L["%s Color"] = "%s顏色"
-- L["Player color"] = ""
-- L["Pet color"] = ""
L["Color Charmed Unit"] = "高亮被魅惑單位"
L["Color Units that are charmed."] = "高亮顯示被魅惑單位。"
L["Unit Colors"] = "單位顏色"
L["Charmed unit Color"] = "被魅惑單位顏色"
L["Default unit Color"] = "默認單位顏色"
L["Default pet Color"] = "默認寵物顏色"

L["DEATHKNIGHT"] = "死亡騎士"
L["DRUID"] = "德魯伊"
L["HUNTER"] = "獵人"
L["MAGE"] = "法師"
L["PALADIN"] = "聖騎士"
L["PRIEST"] = "牧師"
L["ROGUE"] = "盜賊"
L["SHAMAN"] = "薩滿"
L["WARLOCK"] = "術士"
L["WARRIOR"] = "戰士"
L["Beast"] = "野獸"
L["Demon"] = "惡魔"
L["Humanoid"] = "人型"
L["Elemental"] = "元素"

-- heal-current status
L["Show dead as having Full Health"] = "顯示死亡或生命值全滿"
-- L["Frequent Updates"] = ""

-- range status 
L["Range"] = "距離"
L["%d yards"] = "%d碼"
L["Range in yards beyond which the status will be lost."] = "超出距離以外的狀態都將丟失。"
L["Default alpha"] = "默認透明度"
L["Default alpha value when units are way out of range."] = "當單位超出距離時的默認透明度。"
L["Update rate"] = "更新速度"
-- L["Rate at which the status gets updated"] = ""

-- ready-check status
L["Delay"] = "延遲"
-- L["Set the delay until ready check results are cleared."] = ""
-- L["Waiting color"] = ""
-- L["Color for Waiting."] = ""
-- L["Ready color"] = ""
-- L["Color for Ready."] = ""
-- L["Not Ready color"] = ""
-- L["Color for Not Ready."] = ""
-- L["AFK color"] = ""
-- L["Color for AFK."] = ""

-- heals-incoming status 
-- L["Include player heals"] = ""
-- L["Display status for the player's heals."] = ""
-- L["Minimum value"] = ""
-- L["Incoming heals below the specified value will not be shown."] = ""

--role status
L["MAIN_ASSIST"] = MAIN_ASSIST
L["MAIN_TANK"] = MAIN_TANK

--target status
L["Your Target"] = "你的目標"

--threat status
L["Not Tanking"] = "Not Tanking"
L["Higher threat than tank."] = "Higher threat than tank."
L["Insecurely Tanking"] = "Insecurely Tanking"
L["Tanking without having highest threat."] = "Tanking without having highest threat."
L["Securely Tanking"] = "Securely Tanking"
L["Tanking with highest threat."] = "Tanking with highest threat."

-- voice status
L["Voice Chat"] = "語音"

-- raid debuffs
-- L["General"] = ""
-- L["Advanced"] = ""
-- L["Enabled raid debuffs modules"] = ""
-- L["Enabled"] = ""
-- L["Enable All"] = ""
-- L["Disable All"] = ""
-- L["Copy to Debuffs"] = ""
-- L["Select module"] = ""
-- L["Select instance"] = ""
-- L["Cataclysm"] = ""
-- L["The Lich King"] = ""
-- L["The Burning Crusade"] = ""
-- L["New raid debuff"] = ""
-- L["Type the SpellId of the new raid debuff"] = ""
-- L["Create raid debuff"] = ""
-- L["Delete raid debuff"] = ""

-- direction
-- L["Out of Range"] = ""
-- L["Display status for units out of range."] = ""
-- L["Visible Units"] = ""
-- L["Display status for units less than 100 yards away"] = ""
-- L["Dead Units"] = ""
-- L["Display status only for dead units"] = ""

-- resurrection

-- L["Casting resurrection"] = ""
-- L["A resurrection spell is being casted on the unit"] = ""
-- L["Resurrected"] = ""
-- L["A resurrection spell has been casted on the unit"] = ""
		
-- Import/export profiles module
-- L["Import/export options"] = ""
-- L["Import profile"] = ""
-- L["Export profile"] = ""
-- L["Network sharing"] = ""
-- L["Accept profiles from other players"] = ""
-- L["Type player name"] = ""
-- L["Send current profile"] = ""
-- L["Profile import/export"] = ""
-- L["Paste here a profile in text format"] = ""
-- L["Press CTRL-V to paste a Grid2 configuration text"] = ""
-- L["This is your current profile in text format"] = ""
-- L["Press CTRL-C to copy the configuration to your clipboard"] = ""
-- L["Progress"] = ""
-- L["Data size: %.1fKB"] = ""
-- L["Transmision progress: %d%%"] = ""
-- L["Transmission completed"] = ""
-- L["\"%s\" has sent you a profile configuration. Do you want to activate received profile ?"] = ""
