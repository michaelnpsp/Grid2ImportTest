local L =  LibStub:GetLibrary("AceLocale-3.0"):NewLocale("Grid2Options", "ruRU")
if not L then return end

--{{{ General options
L["GRID2_DESC"] = "Добро пожаловать в Grid2"

L["General Settings"] = "Основные настройки"

L["statuses"] = "Статус"
-- L["indicators"] = ""

L["Frames"] = "Фреймы"
L["frame"] = "Фрейм"

L["Invert Bar Color"] = "Обратить цвет панели"
L["Swap foreground/background colors on bars."] = "Меняет местами окраску передниего плана/заднего на панели."

L["Background Color"] = "Фоновй цвет"
L["Sets the background color of each unit frame"] = "Установить цвет фона для каждого фрейма"

L["Mouseover Highlight"] = "Выделение при наведении мышки."
L["Toggle mouseover highlight."] = "Вкл/Выкл выделение при наведении курсора мыши."

L["Show Tooltip"] = "Показать подсказки"
L["Show unit tooltip.  Choose 'Always', 'Never', or 'OOC'."] = "Показывать подсказку единицы.  Выберите 'Всегда', 'Никогда', или 'Вне боя'."
L["Always"] = "Всегда"
L["Never"] = "Никогда"
L["OOC"] = "Вне боя"

L["Background Texture"] = "Фоновая текстура"
L["Select the frame background texture."] = "Выбрать фоновую текстуру фрейма"

L["Inner Border Size"] = "Размер внутренней рамки"
L["Sets the size of the inner border of each unit frame"] = "Установить размер внутренней рамки для каждого фрейма"

L["Inner Border Color"] = "Цвет внутренней рамки"
L["Sets the color of the inner border of each unit frame"] = "Установить цвет внутренней рамки для каждого фрейма"

L["Frame Width"] = "Ширина области"
L["Adjust the width of each unit's frame."] = "Регулировка ширины области."

L["Frame Height"] = "Высота области"
L["Adjust the height of each unit's frame."] = "Регулировка высоты области."

L["Orientation of Frame"] = "Ориентация области"
L["Set frame orientation."] = "Настрйока ориентации области."
L["VERTICAL"] = "ВЕРТИКАЛЬНО"
L["HORIZONTAL"] = "ГОРИЗОНТАЛЬНО"

L["Orientation of Text"] = "Ориентация текста"
L["Set frame text orientation."] = "Установить ориентацию текста фреймов"

L["Show Frame"] = "Показать Область"
L["Sets when the Grid is visible: Choose 'Always', 'Grouped', or 'Raid'."] = "Установить отображение Gridа: 'Всегда', 'Группа' или 'Рейд'."
L["Always"] = "Всегда"
L["Grouped"] = "Группа"
L["Raid"] = "Рейд"

L["Layout Anchor"] = "Нахождение якоря"
L["Sets where Grid is anchored relative to the screen."] = "Настривает где якорь Grid будет находиться на экране."

L["Horizontal groups"] = "Группы горизонтально"
L["Switch between horzontal/vertical groups."] = "Переключить между группы вертикально/горизонтально."
L["Clamped to screen"] = "В пределах экрана"
L["Toggle whether to permit movement out of screen."] = "Не позволять перемещать окно за пределы экрана."
L["Frame lock"] = "Закрепить область"
L["Locks/unlocks the grid for movement."] = "Закрепить/открепить окно для передвижения."
L["Click through the Grid Frame"] = "Выбирать через окно Grid"
L["Allows mouse click through the Grid Frame."] = "Разрешает мышкой кликать сквозь окно Grнid."

L["Display"] = "Отображение"
L["Padding"] = "Заполнение"
L["Adjust frame padding."] = "Настройка заполнения области."
L["Spacing"] = "Промежуток"
L["Adjust frame spacing."] = "Настройка промежутка фрейма."
L["Scale"] = "Масштаб"
L["Adjust Grid scale."] = "Настройка масштаба Gridа."

L["Group Anchor"] = "Якорь группы"
L["Position and Anchor"] = "Позиция и якорь"
L["Sets where groups are anchored relative to the layout frame."] = "Настройка местоположения якорей групп относительно расположения области."
L["Resets the layout frame's position and anchor."] = "Обновляет позицию области и якоря."

--blink
L["Misc"] = "Разное"
L["blink"] = "Мигание"
L["Blink effect"] = "Эффект мерцания"
L["Select the type of Blink effect used by Grid2."] = "Gвыьерите тип эффекта мерцания для использования в Grid2."
L["None"] = "Нет"
L["Blink"] = "Мерцания"
L["Flash"] = "Вспышка"
L["Blink Frequency"] = "Частота мерцания"
L["Adjust the frequency of the Blink effect."] = "Настройка частоты мерцания."

-- debugging & maintenance
L["debugging"] = "Отлаживание"
L["Module debugging menu."] = "Модуль отладки меню."
L["Debug"] = "Отладка"
L["Reset"] = "Сброс"
L["Reset and ReloadUI."] = "Сброс и перезагрузка UI"
L["Reset Setup"] = "Reset Setup"
L["Reset current setup and ReloadUI."] = "Reset current setup and ReloadUI."
L["Reset Indicators"] = "Сброс индикаторов"
L["Reset indicators to defaults."] = "Сбросить индикаторы на стандартные."
L["Reset Locations"] = "Сброс расположения"
L["Reset locations to the default list."] = "Сбросить расположения на стандартные."
L["Reset to defaults."] = "Сброс значений на стандартные."
L["Reset Statuses"] = "Сброс статусов"
L["Reset statuses to defaults."] = "Сбросить статусы на стандартные."

L["Warning! This option will delete all settings and profiles, are you sure ?"] = "Внимание! Эта опция будет удалена во всех настройках и профилях, вы уверены?"

L["About"] = "Описание"

--{{{ Layouts options
-- L["Layout"] = ""
L["Layouts"] = "Расположение"
L["layout"] = "Расположение"
L["Layouts for each type of groups you're in."] = "Расположение для каждого типа групп при нахождении в."
L["Layout Settings"] = "Настройки расположения"
L["Solo Layout"] = "Соло Расположение"
L["Select which layout to use for solo."] = "Выбирает расположение для соло."
L["Party Layout"] = "Расположение группы"
L["Select which layout to use for party."] = "Выбирает расположение для группы."
L["Raid %s Layout"] = "Расположение рейда в %sчел"
L["Select which layout to use for %s person raids."] = "Выбирает расположение для рейда в %sчел."
L["Battleground Layout"] = "Расположение для полей битв"
L["Select which layout to use for battlegrounds."] = "Выбирает расположение для полей битв."
L["Arena Layout"] = "Расположение для арены"
L["Select which layout to use for arenas."] = "Выбирает расположение для арен."
-- L["Test"] = ""
-- L["Test the layout."] = ""

--{{{ Miscelaneous
L["Name"] = "Название"
L["New"] = "Новый"
L["Order"] = "Порядок"
L["Delete"] = "Удалить"
L["Color"] = "Цвет"
L["Color %d"] = "Цвет %d"
L["Color for %s."] = "Цвет для %s."
L["Font"] = "Шрифт"
L["Adjust the font settings"] = "Настройки шрифта."
-- L["Border Texture"] = ""
-- L["Adjust the border texture."] = ""
L["Border"] = "Граница"
-- L["Border Color"] = ""
L["Background"] = "Фон"
L["Background Color"] = "Фоновй цвет"
L["Adjust border color and alpha."] = "Настройка цвет границы и прозрачность."
L["Adjust background color and alpha."] = "Настройка цвета фона и прозрачности."
L["Opacity"] = "Непрозрачность"
L["Set the opacity."] = "Установка непрозрачности"
L["<CharacterOnlyString>"] = "<CharacterOnlyString>"
L["Options for %s."] = " Опции для %s."

--{{{ Indicator management
L["New Indicator"] = "Новый индикатор"
L["Create a new indicator."] = "Создать новый индикатор."
L["Name of the new indicator"] = "Название нового индикатора"
L["Enable Test Mode"] = "Включить тестовый режим"
L["Disable Test Mode"] = "Отключить тестовый режим"
L["Appearance"] = "Вид true"
L["Adjust the border size of the indicator."] = "Настройка размера границ индикатора."
-- L["Stack Text"] = ""
-- L["Disable Stack Text"] = ""
-- L["Disable Cooldown"] = ""
-- L["Disable the Cooldown Frame"] = ""
L["Reverse Cooldown"] = "Перевернуть восстановление"
L["Set cooldown to become darker over time instead of lighter."] = "Установить для восстановления темную окрску по прошествию времени, вместо светлой."
L["Cooldown"] = "Восстановление"
-- L["Text Location"] = ""
-- L["Disable OmniCC"] = ""
 
L["Type"] = "Тип"
L["Type of indicator"] = "Тип индикатора"
L["Type of indicator to create"] = "Тип создаваемого индикатора"

L["Text Length"] = "Длина текста"
L["Maximum number of characters to show."] = "Максимальное число отображаемх символов"
L["Font Size"] = "Размер шрифта"
L["Adjust the font size."] = "Настривает размер шрифта."
L["Size"] = "Размер"
L["Adjust the size of the indicator."] = "Настрйока размера индикатора."

L["Frame Texture"] = "Текстура области"
L["Adjust the texture of the bar."] = "Настройка текстуры выбранной полосы"

L["Show stack"] = "Показать сумму"
L["Show the number of stacks."] = "Показывает сумму эффкта."
L["Show duration"] = "Длительность"
L["Show the time remaining."] = "Показывать оставшееся время."
-- L["Show percent"] = ""
-- L["Show percent value"] = ""

L["Orientation of the Bar"] = "Ориентация полосы"
L["Set status bar orientation."] = "Установить ориентацию полосы статуса"
L["DEFAULT"] = "ПО УМОЛЧАНИЮ"
L["Frame Level"] = "Уровень фрейма"
L["Bars with higher numbers always show up on top of lower numbers."] = "Полоса с наибольшим номером всегда отображается поверх меньших номеров"
L["Bar Width"] = "Ширина полосы"
L["Choose zero to set the bar to the same width as parent frame"] = "Выберите 0, чтобы установить ширину полосы равную родительской"
L["Bar Height"] = "Высота полосы"
L["Choose zero to set the bar to the same height as parent frame"] = "Выберите 0, чтобы установить высоту полосы равную родительской"

L["Border Size"] = "Размер края"
L["Adjust the border of each unit's frame."] = "Регулировка края области."
L["Border Background Color"] = "Цвет фона рамки"
L["Adjust border background color and alpha."] = "Регулировка цвета и прозрачности фона рамки"

L["Select statuses to display with the indicator"] = "Выберите статусы которые будут отображаться на индикаторе."
L["+"] = "+"
L["-"] = "-"
L["Available Statuses"] = "Доступные статусы"
L["Available statuses you may add"] = "Доступные статусы которые вы можете добавить на индикатор"
L["Current Statuses"] = "Текущие статусы"
L["Current statuses in order of priority"] = "Текущий статус в индикаторе, в порядке очередности"
L["Move the status higher in priority"] = "Переместитт статус выше по приоритету"
L["Move the status lower in priority"] = "Переместитт статус ниже по приоритету"

L["indicator"] = "Индикатор"

-- indicator types
L["icon"] = "Иконка"
L["square"] = "Квадрат"
L["text"] = "Текст"
L["bar"] = "Полоса"

-- indicators
L["corner-top-left"] = "в верхнем левом углу"
L["corner-top-right"] = "в верхнем правом углу"
L["corner-bottom-right"] = "в нижнем правом углу"
L["corner-bottom-left"] = "в нижнем левом углу"
L["side-top"] = "по краю вверху"
L["side-right"] = "по краю справа"
L["side-bottom"] = "по краю внизу"
L["side-left"] = "по краю слева"
L["text-up"] = "текст сверху"
L["text-down"] = "текст снизу"
L["icon-left"] = "иконка слева"
L["icon-center"] = "иконка в центре"
L["icon-right"] = "иконка справа"

-- locations
L["CENTER"] = "ЦЕНТР"
L["TOP"] = "ВЕРХ"
L["BOTTOM"] = "ОСНОВАНИЕ"
L["LEFT"] = "СЛЕВА"
L["RIGHT"] = "СПРАВА"
L["TOPLEFT"] = "ВВЕРХУ СЛЕВА"
L["TOPRIGHT"] = "ВВЕРХУ СПРАВА"
L["BOTTOMLEFT"] = "СНИЗУ СЛЕВА"
L["BOTTOMRIGHT"] = "СНИЗУ СПРАВА"

L["location"] = "Расположение"

L["Location"] = "Расположение"
L["Align my align point relative to"] = "Выровнять мою точки относительн к"
L["Align Point"] = "Точка выравнивания"
L["Align this point on the indicator"] = "Выравнивание данной точки на индикаторе"
L["X Offset"] = "Смещение по Х"
L["X - Horizontal Offset"] = "Х - смещение по горизонтале"
L["Y Offset"] = "Смещение по У"
L["Y - Vertical Offset"] = "У - смещение по вертикале"

--{{{ Statuses
L["-color"] = ":цвет"
L["-mine"] = ":моё"
L["-not-mine"] = ":не моё"
L["buff-"] = "бафф: "
L["debuff-"] = "дебафф: "
-- L["color-"] = ""

L["status"] = "Статус"

L["buff"] = "Бафф"
L["debuff"] = "Дебафф"

-- L["New Color"] = ""
L["New Status"] = "Новый статус"
L["Create a new status."] = "Создать новый статус."

L["Threshold"] = "Порог"
L["Threshold at which to activate the status."] = "Порог, при котором активируется статус."

-- buff & debuff statuses management
-- L["Auras"] = ""
L["Buffs"] = "Баффы"
L["Debuffs"] = "Дебаффы"
-- L["Colors"] = ""
-- L["Health&Heals"] = ""
-- L["Mana&Power"] = ""
-- L["Combat"] = ""
-- L["Targeting&Distances"] = ""
-- L["Raid&Party Roles"] = ""
-- L["Miscellaneous"] = ""

L["Show if mine"] = "Показать если моё"
L["Show if not mine"] = "Показать если НЕ моё"
L["Show if missing"] = "Показывать если пропущен"
L["Display status only if the buff is not active."] = "Показывать статус только если баффы не активны."
L["Display status only if the buff was cast by you."] = "Показывать статус только если баффы применяются на вас"
L["Display status only if the buff was not cast by you."] = "Показывать статус только если баффы применяются НЕ на вас"
L["Color count"] = "Свет счетчика"
L["Select how many colors the status must provide."] = "Выберие, сколько цветов должен поддерживать статус"
L["You can include a descriptive prefix using separators \"@#>\""] = "Вы можете включить описательную приставку, используя разделители \"@#>\""
L["examples: Druid@Regrowth Chimaeron>Low Health"] = "Например: Druid@Regrowth Chimaeron>Low Health"

L["Class Filter"] = "Фильтр классов"
L["Show on %s."] = "Показать на %s."

L["Blink Threshold"] = "Порог мерцания"
L["Blink Threshold at which to start blinking the status."] = "Порог мерцания, при котором будет начинать мерцание статуса."

-- L["Select Type"] = ""
-- L["Buff"] = ""
-- L["Debuff"] = ""
-- L["Buffs Group"] = ""
-- L["Debuffs Group"] = ""
-- L["Buffs Group: Defensive Cooldowns"] = ""
-- L["Debuffs Group: Healing Prevented "] = ""
-- L["Debuffs Group: Healing Reduced"] = ""

-- general statuses
L["name"] = "название"
L["mana"] = "мана"
-- L["poweralt"] = ""
L["alpha"] = "прозрачность"
L["border"] = "граница"
L["heals"] = "исцеление"
L["health"] = "здоровье"
L["charmed"] = "зачарованн"
L["afk"] = "афк"
L["death"] = "труп"
L["classcolor"] = "цвет-класса"
-- L["creaturecolor"] = ""
-- L["friendcolor"] = ""
L["feign-death"] = "притворяется"
L["heals-incoming"] = "входящее-исцеление"
L["health-current"] = "здоровье-текущее"
L["health-deficit"] = "нехватка-здоровья"
L["health-low"] = "мало-здоровья"
L["lowmana"] = "мало-маны"
L["offline"] = "вне-сети"
L["raid-icon-player"] = "рейд-иконка игрока"
L["raid-icon-target"] = "рейд-иконка цели"
L["range"] = "радиус"
L["ready-check"] = "проверка-готовности"
L["role"] = "роль"
-- L["dungeon-role"] = ""
-- L["leader"] = ""
-- L["master-looter"] = ""
-- L["raid-assistant"] = ""
L["target"] = "цель"
L["threat"] = "угроза"
-- L["banzai"] = ""
L["vehicle"] = "транспорт"
L["voice"] = "голос"
L["pvp"] = "pvp"
-- L["direction"] = ""
-- L["resurrection"] = ""

L["Curse"] = "Проклятье"
L["Poison"] = "Яд"
L["Disease"] = "Болезнь"
L["Magic"] = "Магия"

L["raid-debuffs"] = "рейд-дебаффы"

-- class specific buffs & debuffs statuses

-- shaman
L["EarthShield"] = "Щит земли"
L["Earthliving"] = "Жизнь Земли"
L["Riptide"] = "Быстрина"

-- Druid
L["Rejuvenation"] = "Омоложение"
L["Lifebloom"] = "Жизнецвет"
L["Regrowth"] = "Восстановление"
L["WildGrowth"] = "Буйный рост"

-- paladin
L["BeaconOfLight"] = "Частица Света"
L["FlashOfLight"] = "Вспышка Света"
L["DivineShield"] = "Божественный щит"
L["DivineProtection"] = "Божественная защита"
L["HandOfProtection"] = "Длань защиты"
L["HandOfSalvation"] = "Длань спасения"
L["Forbearance"] = "Воздержанность"

-- priest
L["Grace"] = "Милость"
L["DivineAegis"] = "Божественное покровительство"
L["InnerFire"] = "Внутренний огонь"
L["PrayerOfMending"] = "Молитва восстановления"
L["PowerWordShield"] = "Слово силы: Щит"
L["Renew"] = "Обновление"
L["WeakenedSoul"] = "Ослабленная душа"
L["SpiritOfRedemption"] = "Дух воздаяния"

-- mage
L["FocusMagic"] = "Магическая концентрация"
L["IceArmor"] = "Ледяной доспех"
L["IceBarrier"] = "Ледяная преграда"

-- rogue
L["Evasion"] = "Ускользание"

-- warlock
L["ShadowWard"] = "Заслон от темной магии"
L["SoulLink"] = "Родство душ"
L["DemonArmor"] = "Демонический доспех"
L["FelArmor"] = "Доспех Скверны"

-- warrior
L["Vigilance"] = "Бдительность"
L["BattleShout"] = "Боевой крик"
L["CommandingShout"] = "Командирский крик"
L["ShieldWall"] = "Глухая оборона"
L["LastStand"] = "Ни шагу назад"

-- class color, creature color, friend color status
L["%s Color"] = "%s цвет"
-- L["Player color"] = ""
-- L["Pet color"] = ""
L["Color Charmed Unit"] = "Цвет Околдованных Игроков"
L["Color Units that are charmed."] = "Цвет для игроков попавший под разные отрицательные дебаффы и контроль."
L["Unit Colors"] = "Цвет игроков"
L["Charmed unit Color"] = "цвет околодованных игроков"
L["Default unit Color"] = "Цвета игроков по умолчанию"
L["Default pet Color"] = "Цвета питомцев по умолчанию"

L["DEATHKNIGHT"] = "Рыцарь смерти"
L["DRUID"] = "Друид"
L["HUNTER"] = "Охотница"
L["MAGE"] = "Маг"
L["PALADIN"] = "Паладин"
L["PRIEST"] = "Жрица"
L["ROGUE"] = "Разбойница"
L["SHAMAN"] = "Шаманка"
L["WARLOCK"] = "Чернокнижница"
L["WARRIOR"] = "Воин"
L["Beast"] = "Животное"
L["Demon"] = "Демон"
L["Humanoid"] = "Гуманоид"
L["Elemental"] = "Элементаль"

-- heal-current status
L["Show dead as having Full Health"] = "Показывать мертвого как полным здоровьем"
-- L["Frequent Updates"] = ""

-- range status 
L["Range"] = "Расстояние"
L["%d yards"] = "%d м."
L["Range in yards beyond which the status will be lost."] = "Диапозон вметрах выдя  за который статус будет утерян."
L["Default alpha"] = "Прозрачность по умолчанию"
L["Default alpha value when units are way out of range."] = "Прозрачность по умолчанию в зависимости от дапозона"
L["Update rate"] = "Частота обновления"
-- L["Rate at which the status gets updated"] = ""

-- ready-check status
L["Delay"] = "Задержка"
L["Set the delay until ready check results are cleared."] = "Установка задержки перед очисткой результатов проверки гтовности."
L["Waiting color"] = "Цвет ожидания"
L["Color for Waiting."] = "Цвет обозначающий ожидание"
L["Ready color"] = "Цвет готовности"
L["Color for Ready."] = "Цвет обозначающий готовность."
L["Not Ready color"] = "Цвет не готовности"
L["Color for Not Ready."] = "Цвет обозначающий не готовность."
L["AFK color"] = "Цвет AFK"
L["Color for AFK."] = "Цвет обозначающий отсутствие."

-- heals-incoming status 
L["Include player heals"] = "Включая исцеления игрока"
L["Display status for the player's heals."] = "Показывать статус исчелений игрока"
L["Minimum value"] = "Минимальное значение"
L["Incoming heals below the specified value will not be shown."] = "Входящий хил ниже указанного значения показан не будет"

--role status
L["MAIN_ASSIST"] = MAIN_ASSIST
L["MAIN_TANK"] = MAIN_TANK

--target status
L["Your Target"] = "Ваша Цель"

--threat status
L["Not Tanking"] = "Не танкуется"
L["Higher threat than tank."] = "Высший уровень угрозы чем у танка."
L["Insecurely Tanking"] = "Ненадёжное танкование"
L["Tanking without having highest threat."] = "Танкование без наивысшего уровня угрозы."
L["Securely Tanking"] = "Надёжное танкование"
L["Tanking with highest threat."] = "Танкование с наивысшим уровнем угрозы."

-- voice status
L["Voice Chat"] = "Голосовой чат"

-- raid debuffs
L["General"] = "Основные"
L["Advanced"] = "Дополнительные"
L["Enabled raid debuffs modules"] = "Включить модуль рейд-дебаффов"
L["Enabled"] = "Включить"
L["Enable All"] = "Включить все"
L["Disable All"] = "Отключить все"
L["Copy to Debuffs"] = "Копировать дебафф"
L["Select module"] = "Выберите расширение"
L["Select instance"] = "Выберите образец"
L["Cataclysm"] = "Катаклизм"
L["The Lich King"] = "ВоТЛК"
L["The Burning Crusade"] = "БК"
L["New raid debuff"] = "Новый рейд-дебафф"
L["Type the SpellId of the new raid debuff"] = "Определите SpellId (Ид заклинания) для нового рейд-дебаффа"
L["Create raid debuff"] = "Создать рейд-дебафф"
L["Delete raid debuff"] = "Удалить рейд-дебафф"

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
L["Import/export options"] = "Настройки Импорта/Экспорта"
L["Import profile"] = "Импорт профиля"
L["Export profile"] = "Экспорт профиля"
L["Network sharing"] = "<Network sharing>"
L["Accept profiles from other players"] = "Скопировать профиль с другого персонажа"
L["Type player name"] = "Определите имя персонажа"
L["Send current profile"] = "Отправить текущий профиль"
L["Profile import/export"] = "Профиль Импорта/Экспорта"
L["Paste here a profile in text format"] = "Вставить сюда профиль в текстовом формате"
L["Press CTRL-V to paste a Grid2 configuration text"] = "Нажмите CTRL-V для вставки текста настроек Grid2"
L["This is your current profile in text format"] = "Это ваш текущий профиль с текстовом формате"
L["Press CTRL-C to copy the configuration to your clipboard"] = "Нажмите CTRL-С на вашей клавиатуре для копирования настроек профиля"
-- L["Progress"] = ""
-- L["Data size: %.1fKB"] = ""
-- L["Transmision progress: %d%%"] = ""
-- L["Transmission completed"] = ""
L["\"%s\" has sent you a profile configuration. Do you want to activate received profile ?"] = "\"%s\" послал вам профиль настроек. Хотите активировать полученный профиль?"
