local L =  LibStub:GetLibrary("AceLocale-3.0"):NewLocale("Grid2Options", "deDE")
if not L then return end

--{{{ General options
L["GRID2_WELCOME"] = "Welcome to Grid2"
-- L["GRID2_DESC"] = ""

L["General Settings"] = "Allgemeine Einstellungen"

L["statuses"] = "Status"
L["indicators"] = "Indikatoren"

L["Frames"] = "Fenster"
L["frame"] = "Fenster"

-- L["Default Font"] = ""

L["Invert Bar Color"] = "Leistenfarbe umkehren"
L["Swap foreground/background colors on bars."] = "Umschalten Vorder/Hintergrund Farbe der Leisten"

L["Background Color"] = "Hintergrundfarbe"
L["Sets the background color of each unit frame"] = "Wähle die Hintergrundfarbe für alle Einheitenfenster"

L["Mouseover Highlight"] = "Mouseover hervorheben"
L["Toggle mouseover highlight."] = "Mouseover hervorheben ein-/ausschalten."

L["Show Tooltip"] = "Tooltip anzeigen"
L["Show unit tooltip.  Choose 'Always', 'Never', or 'OOC'."] = "Zeige Einheiten Tooltip. Wähle: 'Immer', 'Nie', oder 'OOC'"
L["Always"] = "Immer"
L["Never"] = "Nie"
L["OOC"] = "Außerhalb des Kampfes"

L["Background Texture"] = "Hintergrundtextur"
L["Select the frame background texture."] = "Wähle die Hintergrundtextur des Fensters."

-- L["Inner Border Size"] = ""
-- L["Sets the size of the inner border of each unit frame"] = ""

-- L["Inner Border Color"] = ""
-- L["Sets the color of the inner border of each unit frame"] = ""

L["Frame Width"] = "Fensterbreite"
L["Adjust the width of each unit's frame."] = "Die Breite für alle Einheitenfenster anpassen."

L["Frame Height"] = "Fensterhöhe"
L["Adjust the height of each unit's frame."] = "Die Höhe für alle Einheitenfenster anpassen."

L["Orientation of Frame"] = "Ausrichtung des Fensters"
L["Set frame orientation."] = "Setzt die Rahmen Ausrichtung"
L["VERTICAL"] = "Vertikal"
L["HORIZONTAL"] = "Horizontal"

L["Orientation of Text"] = "Ausrichtung des Textes"
L["Set frame text orientation."] = "Text Ausrichtung festlegen."

L["Show Frame"] = "Fenster anzeigen"
L["Sets when the Grid is visible: Choose 'Always', 'Grouped', or 'Raid'."] = "Wähle wann Grid angezeigt werden soll: Wähle 'Immer', 'Gruppiert', oder 'Schlachtzug'."
L["Always"] = "Immer"
L["Grouped"] = "Gruppe"
L["Raid"] = "Raid"

L["Layout Anchor"] = "Layout Ankerpunkt"
L["Sets where Grid is anchored relative to the screen."] = "Legt fest, wo Grid im Verhältnis zum Bildschirm befestigt werden soll."

L["Horizontal groups"] = "Horizontale Gruppen"
L["Switch between horzontal/vertical groups."] = "Umschalten zwischen Horizontale/Vertikale Gruppen"
L["Clamped to screen"] = "Am Bildschirm fest machen"
L["Toggle whether to permit movement out of screen."] = "ein-/ausschalten um das Grid2 Fenster über den Bildschirmrand hinaus zu bewegen"
L["Frame lock"] = "Fenster sperren"
L["Locks/unlocks the grid for movement."] = "Grid sperren/entsperren zum Bewegen."
L["Click through the Grid Frame"] = "Durch den GRID2 Rahmen klicken"
L["Allows mouse click through the Grid Frame."] = "Erlaubt Mausklick durch den GRID2 Rahmen"

L["Display"] = "Anzeige"
L["Padding"] = "Füllung"
L["Adjust frame padding."] = "Fensterfüllung anpassen."
L["Spacing"] = "Abstand"
L["Adjust frame spacing."] = "Fensterabstand anpassen."
L["Scale"] = "Größe"
L["Adjust Grid scale."] = "Skalierung von Grid anpassen."

L["Group Anchor"] = "Gruppen Ankerpunkt"
L["Position and Anchor"] = "Position und Ankerpunkt"
L["Sets where groups are anchored relative to the layout frame."] = "Legt fest, wo die Gruppen im Verhältnis zum Bildschirm befestigt werden soll."
L["Resets the layout frame's position and anchor."] = "Die Fensterpositionen und Ankerpunkte des Layout zurücksetzen."

--blink
L["Misc"] = "Sonstige"
L["blink"] = "Blink"
L["Blink effect"] = "Blink Effekt"
L["Select the type of Blink effect used by Grid2."] = "Auswahl der Art des Blink Effekts der von GRID2 genutzt werden soll"
L["None"] = "Keine"
L["Blink"] = "Blinkt"
L["Flash"] = "Aufblinken"
L["Blink Frequency"] = "Blink Frequenz"
L["Adjust the frequency of the Blink effect."] = "Stellt die Frequenz des Blink Effekts ein"

-- text formatting
-- L["Text Formatting"] = ""
-- L["Duration Format"] = ""
-- L["Examples:\n(%d)\n%d seconds"] = ""
-- L["Duration+Stacks Format"] = ""
-- L["Examples:\n%d/%s\n%s(%d)"] = ""
-- L["Display tenths of a second"] = ""
-- L["When duration<1sec"] = ""

-- misc
-- L["Blizzard Raid Frames"] = ""
-- L["Hide Blizzard Raid Frames on Startup"] = ""

-- debugging & maintenance
L["debugging"] = "Fehlerbehebung"
L["Module debugging menu."] = "Module debugging Menü"
L["Debug"] = "Debug"
L["Reset"] = "Reset"
L["Reset and ReloadUI."] = "Zurücksetzen und ReloadUI"
L["Reset Setup"] = "Setup zurücksetzen"
L["Reset current setup and ReloadUI."] = "Aktuelle Setup zurücksetzen und UI neu laden."
L["Reset Indicators"] = "Reset Indikatoren"
L["Reset indicators to defaults."] = "Indikatoren auf Standard zurücksetzen."
L["Reset Locations"] = "Positionen zurücksetzen"
L["Reset locations to the default list."] = "Positionen zur Standardliste zurücksetzen."
L["Reset to defaults."] = "Auf Standard zurücksetzen."
L["Reset Statuses"] = "Status zurücksetzen"
L["Reset statuses to defaults."] = "Status auf Standard zurücksetzen."

L["Warning! This option will delete all settings and profiles, are you sure ?"] = "Warnung! Diese Option wird alle Einstellungen Profile entfernen! Bist Du sicher?"

L["About"] = "Über"

--{{{ Layouts options
L["Layout"] = "Layout"
L["Layouts"] = "Layouts"
L["layout"] = "Layout"
L["Layouts for each type of groups you're in."] = "Layouts für jede Art von Gruppen, in den Du dich befindest."
L["Layout Settings"] = "Layout Einstellungen"
L["Solo Layout"] = "Solo Layout"
L["Select which layout to use for solo."] = "Wähle, welches Layout für Solo verwendet werden soll."
L["Party Layout"] = "Gruppen Layout"
L["Select which layout to use for party."] = "Wähle, welches Layout für Gruppen verwendet werden soll."
L["Raid %s Layout"] = "Schlachtzug %s Layout"
L["Select which layout to use for %s person raids."] = "Wähle, welches Layout für %s Schlachtzüge verwendet werden soll."
L["Battleground Layout"] = "Schlachtfeld Layout"
L["Select which layout to use for battlegrounds."] = "Wähle, welches Layout für Schlachtfelder verwendet werden soll."
L["Arena Layout"] = "Arena Layout"
L["Select which layout to use for arenas."] = "Wähle, welches Layout für Arenen verwendet werden soll."
L["Test"] = "Testen"
L["Test the layout."] = "Testet das Layout."
-- L["Select Layout"] = ""
-- L["New Layout Name"] = ""
-- L["Delete selected layout"] = ""
-- L["Refresh"] = ""
-- L["Refresh the Layout"] = ""
-- L["Toggle for vehicle"] = ""
-- L["When the player is in a vehicle replace the player frame with the vehicle frame."] = ""
-- L["Header"] = ""
-- L["Type of units to display"] = ""
-- L["Columns"] = ""
-- L["Maximum number of columns to display"] = ""
-- L["Units/Column"] = ""
-- L["Maximum number of units per column to display"] = ""
-- L["First group"] = ""
-- L["First group to display"] = ""
-- L["Last Group"] = ""
-- L["Last group to display"] = ""
-- L["Group by"] = ""
-- L["Sort by"] = ""
-- L["Action"] = ""
-- L["all"] = ""
-- L["Class"] = ""
-- L["Group"] = ""
-- L["Role"] = ""
L["Name"] = "Name"
-- L["Index"] = ""
-- L["party"] = ""
-- L["raid"] = ""
-- L["partypet"] = ""
-- L["raidpet"] = ""
-- L["Insert"] = ""
-- L["Copy"] = ""

--{{{ Miscelaneous
L["New"] = "Neu"
L["Order"] = "Anordnung"
L["Delete"] = "Löschen"
L["Color"] = "Farbe"
L["Color %d"] = "Farbe %d"
L["Color for %s."] = "Farbe für %s"
L["Font"] = "Schrift"
-- L["Font Border"] = ""
-- L["Thin"] = ""
-- L["Thick"] = ""
-- L["Soft"] = ""
-- L["Sharp"] = ""
L["Adjust the font settings"] = "Die Schrifteinstellungen anpassen."
L["Border Texture"] = "Rahmentextur"
L["Adjust the border texture."] = "Die Rahmentextur anpassen."
L["Border"] = "Rahmen"
L["Border Color"] = "Rahmenfarbe"
L["Background"] = "Hintergrund"
-- L["Enable Background"] = ""
L["Adjust border color and alpha."] = "Rahmenfarbe und Transparenz anpassen."
L["Adjust background color and alpha."] = "Hintergrundfarbe und Transparenz anpassen."
L["Opacity"] = "Durchsichtigkeit"
L["Set the opacity."] = "Die Durchsichtigkeit festlegen."
L["<CharacterOnlyString>"] = "<CharacterOnlyString>"
L["Options for %s."] = "Optionen für %s."
-- L["Delete this element"] = ""

--{{{ Indicator management
L["New Indicator"] = "Neuer Indikator"
-- L["Create Indicator"] = ""
L["Create a new indicator."] = "Neuen Indikator erstellen."
L["Name of the new indicator"] = "Name des neuen Indikators"
-- L["Enable or disable test mode for indicators"] = ""
L["Appearance"] = "Aussehen"
L["Adjust the border size of the indicator."] = "Rahmengröße des Indikators anpassen."
L["Stack Text"] = "Stapel-Text"
L["Disable Stack Text"] = "Stapel-Text deaktivieren"
L["Disable Cooldown"] = "Abklingzeit deaktivieren"
L["Disable the Cooldown Frame"] = "Fenster der Abklingzeit deaktivieren"
L["Reverse Cooldown"] = "Abklingzeit umkehren"
L["Set cooldown to become darker over time instead of lighter."] = "Einstellung das der CD über Zeit dunkler anstatt Heller wird"
L["Cooldown"] = "Abklingzeit"
L["Text Location"] = "Text-Position"
L["Disable OmniCC"] = "OmniCC deaktivieren"
 
L["Type"] = "Art"
L["Type of indicator"] = "Art des Indikators"
L["Type of indicator to create"] = "Art des Indikators der erstellt werden soll"
-- L["Change type"] = ""
-- L["Change the indicator type"] = ""

L["Text Length"] = "Textlänge"
-- L["Maximum number of characters to show."] = ""
L["Font Size"] = "Schriftgröße"
L["Adjust the font size."] = "Die Schriftgröße anpassen."
L["Size"] = "Größe"
L["Adjust the size of the indicator."] = "Die Größe des Indikators anpassen."
-- L["Width"] = ""
-- L["Adjust the width of the indicator."] = ""
-- L["Height"] = ""
-- L["Adjust the height of the indicator."] = ""
-- L["Rectangle"] = ""
-- L["Allows to independently adjust width and height."] = ""
-- L["Use Status Color"] = ""
-- L["Always use the status color for the border"] = ""

L["Frame Texture"] = "Fenstertextur"
-- L["Adjust the frame texture."] = ""

L["Show stack"] = "Zeige Stapel"
L["Show the number of stacks."] = "Zeige Nummer der Stapel an."
L["Show duration"] = "Dauer anzeigen"
L["Show the time remaining."] = "Zeige verbleibende Zeit."
-- L["Show elapsed time"] = ""
-- L["Show the elapsed time."] = ""
L["Show percent"] = "Prozent anzeigen"
L["Show percent value"] = "Prozentwert anzeigen"

L["Orientation of the Bar"] = "Ausrichtung der Leiste"
L["Set status bar orientation."] = "Die Ausrichtung der Statusleiste festlegen."
L["DEFAULT"] = "STANDARD"
-- L["Frame Level"] = ""
L["Bars with higher numbers always show up on top of lower numbers."] = "Leisten mit höheren Nummern, werden immer über denen mit niedriger angezeigt."
L["Bar Width"] = "Leistenbreite"
-- L["Choose zero to set the bar to the same width as parent frame"] = ""
L["Bar Height"] = "Leistenhöhe"
-- L["Choose zero to set the bar to the same height as parent frame"] = ""
-- L["Anchor to"] = ""
-- L["Anchor the indicator to the selected bar."] = ""

L["Border Size"] = "Rahmengröße"
L["Adjust the border of each unit's frame."] = "Rahmen für alle Einheitenfenster anpassen."
L["Border Background Color"] = "Hintergrundfarbe des Rahmens"
L["Adjust border background color and alpha."] = "Die Hintergrundfarbe und Transparenz der Rahmen anpassen."
-- L["Border separation"] = ""
-- L["Adjust the distance between the border and the frame content."] = ""

L["Select statuses to display with the indicator"] = "Auswahl Status für Anzeige mit Indiaktor"
L["Available Statuses"] = "Verfügbarer Status"
L["Available statuses you may add"] = "Verfügbarer Status den du dazu fügen möchtest"
L["Current Statuses"] = "Aktuelle Status"
L["Current statuses in order of priority"] = "Aktuelle Status in der Reihenfolge der Priorität"
L["Move the status higher in priority"] = "Status nach oben in der Prioriätenliste"
L["Move the status lower in priority"] = "Status nach unten in der Prioritätenliste"

L["indicator"] = "Indikator"

-- indicator types
L["icon"] = "Symbol"
L["square"] = "Quadrat"
L["text"] = "Text"
L["bar"] = "Leiste"

-- indicators
L["corner-top-left"] = "Ecke oben Links"
L["corner-top-right"] = "Ecke oben Rechts"
L["corner-bottom-right"] = "Ecke unten Rechts"
L["corner-bottom-left"] = "Ecke unten Links"
L["side-top"] = "Seite oben"
L["side-right"] = "Rechte Seite"
L["side-bottom"] = "Seite unten"
L["side-left"] = "Linke Seite"
L["text-up"] = "Text-Hoch"
L["text-down"] = "Text-Runter"
L["icon-left"] = "Symbol-Links"
L["icon-center"] = "Symbol-Zentriert"
L["icon-right"] = "Symbol-Rechts"

-- locations
L["CENTER"] = "Zentriert"
L["TOP"] = "Oben"
L["BOTTOM"] = "Unten"
L["LEFT"] = "Links"
L["RIGHT"] = "Rechts"
L["TOPLEFT"] = "Oben Links"
L["TOPRIGHT"] = "Oben Rechts"
L["BOTTOMLEFT"] = "Unten Links"
L["BOTTOMRIGHT"] = "Unten Rechts"

L["location"] = "Position"

L["Location"] = "Position"
L["Align my align point relative to"] = "Richte meinen Ausrichtungspunkt relativ zu"
L["Align Point"] = "Ausrichtungs Punkt"
L["Align this point on the indicator"] = "Diesen Punkt am Indikator ausrichten"
L["X Offset"] = "X Offset"
L["X - Horizontal Offset"] = "X - Horizontal Offset"
L["Y Offset"] = "Y Offset"
L["Y - Vertical Offset"] = "Y - Vertical Offset"

--{{{ Statuses
L["-color"] = ":Farbe"
-- L["-mine"] = ""
-- L["-not-mine"] = ""
L["buff-"] = "Stärkungszauber:"
L["debuff-"] = "Schwächungszauber:"
L["color-"] = "Farbe:"

L["status"] = "Status"

L["buff"] = "Stärkungszauber"
L["debuff"] = "Schwächungszauber"
-- L["debuffType"] = ""

-- L["New Buff"] = ""
-- L["New Debuff"] = ""
L["New Color"] = "Neue Farbe"
L["New Status"] = "Neuer Status"
-- L["Delete Status"] = ""
L["Create a new status."] = "Neuen Status erstellen."
-- L["Create Buff"] = ""
-- L["Create Debuff"] = ""
-- L["Create Color"] = ""

L["Threshold"] = "Schwelle"
-- L["Thresholds"] = ""
L["Threshold at which to activate the status."] = "Schwelle ab wann der Status Aktiviert werden soll"

-- L["available statuses"] = ""

-- buff & debuff statuses management
L["Auras"] = "Auren"
L["Buffs"] = "Stärkungszauber"
L["Debuffs"] = "Schwächungszauber"
L["Colors"] = "Farben"
L["Health&Heals"] = "Gesundheit&Heilungen"
L["Mana&Power"] = "Mana&Energie"
L["Combat"] = "Kampf"
-- L["Targeting&Distances"] = ""
L["Raid&Party Roles"] = "Schlachtzug&Gruppen Rollen"
L["Miscellaneous"] = "Verschiedenes"

L["Show if mine"] = "Zeigen, wenn mir"
L["Show if not mine"] = "Zeigen, wenn nicht mir"
L["Show if missing"] = "Zeigen, wenn fehlt"
L["Display status only if the buff is not active."] = "Status nur anzeigen, wenn der Stärkungszauber nicht aktiv ist."
L["Display status only if the buff was cast by you."] = "Status nur anzeigen, wenn der Stärkungszauber von Dir gezaubert wurde."
L["Display status only if the buff was not cast by you."] = "Status nur anzeigen, wenn der Stärkungszauber nicht von Dir gezaubert wurde."
-- L["Color count"] = ""
-- L["Select how many colors the status must provide."] = ""
-- L["You can include a descriptive prefix using separators \"@#>\""] = ""
L["examples: Druid@Regrowth Chimaeron>Low Health"] = "Beispiele: Druide@Nachwachsen Chimaeron>Wenig Gesundheit"
-- L["Threshold to activate Color"] = ""
-- L["Track by SpellId"] = ""
-- L["Track by spellId instead of aura name"] = ""
-- L["Assigned to"] = ""

-- L["Coloring based on"] = ""
-- L["Number of stacks"] = ""
-- L["Remaining time"] = ""

L["Class Filter"] = "Klassen Filter"
L["Show on %s."] = "Zeigt auf %s."

L["Blink Threshold"] = "Blink Schwelle"
L["Blink Threshold at which to start blinking the status."] = "Blink Schwelle ab wann der 'Status' Aufblinken soll"

-- L["Name or SpellId"] = ""
L["Select Type"] = "Typ auswählen"
L["Buff"] = "Stärkungszauber"
L["Debuff"] = "Schwächungszauber"
L["Buffs Group"] = "Stärkungszauber-Gruppen"
L["Debuffs Group"] = "Schwächungszauber-Gruppen"
L["Buffs Group: Defensive Cooldowns"] = "Stärkungszauber-Gruppe: Defensive Abklingzeiten"
L["Debuffs Group: Healing Prevented "] = "Schwächungszauber-Gruppe: Heilung verhindert"
L["Debuffs Group: Healing Reduced"] = "Schwächungszauber-Gruppe: Heilung reduziert"
-- L["Filtered debuffs"] = ""
-- L["Listed debuffs will be ignored."] = ""

-- general statuses
L["name"] = "Name"
L["mana"] = "Mana"
-- L["power"] = ""
-- L["poweralt"] = ""
L["alpha"] = "Transparenz"
L["border"] = "Rahmen"
L["heals"] = "Heilungen"
L["health"] = "Gesundheit"
L["charmed"] = "Verzaubert"
L["afk"] = "AFK"
L["death"] = "Tot"
L["classcolor"] = "Klassenfarbe"
-- L["creaturecolor"] = ""
-- L["friendcolor"] = ""
L["feign-death"] = "Totstellen"
L["heals-incoming"] = "Eingehende Heilung"
L["health-current"] = "Gesundheit-Aktuell"
L["health-deficit"] = "Gesundheits-Defizit"
L["health-low"] = "Wenig Gesundheit"
L["lowmana"] = "Wenig Mana"
L["offline"] = "Offline"
-- L["raid-icon-player"] = ""
-- L["raid-icon-target"] = ""
L["range"] = "Reichweite"
L["ready-check"] = "Bereitschafts Check"
L["role"] = "Rolle"
L["dungeon-role"] = "Dungeon-Rolle"
-- L["leader"] = ""
-- L["master-looter"] = ""
-- L["raid-assistant"] = ""
L["target"] = "Ziel"
L["threat"] = "Bedrohung"
-- L["banzai"] = ""
-- L["banzai-threat"] = ""
L["vehicle"] = "Fahrzeug"
L["voice"] = "Stimme"
L["pvp"] = "PvP"
L["direction"] = "Richtung"
-- L["resurrection"] = ""

L["Curse"] = "Fluch"
L["Poison"] = "Gift"
L["Disease"] = "Krankheit"
L["Magic"] = "Magie"

L["raid-debuffs"] = "Schlachtzug-Schwächungszauber"
-- L["raid-debuffs2"] = ""
-- L["raid-debuffs3"] = ""
-- L["raid-debuffs4"] = ""
-- L["raid-debuffs5"] = ""

-- L["boss-shields"] = ""

-- class specific buffs & debuffs statuses

-- shaman
L["EarthShield"] = "Erdschild"
L["Earthliving"] = "Lebensgeister"
L["Riptide"] = "Springflut"
-- L["ChainHeal"] = ""
-- L["HealingRain"] = ""

-- Druid
L["Rejuvenation"] = "Verjüngung"
L["Lifebloom"] = "Blühendes Leben"
L["Regrowth"] = "Nachwachsen"
L["WildGrowth"] = "Wildwuchs"

-- paladin
L["BeaconOfLight"] = "Flamme des Glaubens"
L["FlashOfLight"] = "Lichtblitz"
L["DivineShield"] = "Gottesschild"
L["DivineProtection"] = "Göttlicher Schutz"
-- L["HandOfProtection"] = ""
-- L["HandOfSalvation"] = ""
L["Forbearance"] = "Vorahnung"

-- priest
L["Grace"] = "Barmherzigkeit"
L["DivineAegis"] = "Göttliche Aegis"
L["InnerFire"] = "Inneres Feuer"
L["PrayerOfMending"] = "Gebet der Besserung"
L["PowerWordShield"] = "Machtwort: Schild"
L["Renew"] = "Erneuerung"
L["WeakenedSoul"] = "Geschwächte Seele"
L["SpiritOfRedemption"] = "Geist der Erlösung"
-- L["CircleOfHealing"] = ""
-- L["PrayerOfHealing"] = ""

-- mage
L["FocusMagic"] = "Magie fokussieren"
L["IceArmor"] = "Eisrüstung"
L["IceBarrier"] = "Eisbarriere"

-- rogue
L["Evasion"] = "Entrinnen"

-- warlock
L["ShadowWard"] = "Schattenzauberschutz"
L["SoulLink"] = "Seelenverbindung"
L["DemonArmor"] = "Dämonenrüstung"
L["FelArmor"] = "Teufelsrüstung"

-- warrior
L["Vigilance"] = "Wachsamkeit"
L["BattleShout"] = "Schlachtruf"
L["CommandingShout"] = "Befehlsruf"
L["ShieldWall"] = "Schildwall"
L["LastStand"] = "Letztes Gefecht"

-- class color, creature color, friend color status
L["%s Color"] = "%s Farbe"
L["Player color"] = "Farbe für Spieler"
L["Pet color"] = "Begleiter Farbe"
L["Color Charmed Unit"] = "Farbe für verzauberte Einheit"
L["Color Units that are charmed."] = "Farbe für Einheiten die Verzaubert sind"
L["Unit Colors"] = "Einheiten Farbe"
L["Charmed unit Color"] = "Farbe für Verzauberte Einheiten"
L["Default unit Color"] = "Farbe für Standard Einheiten"
L["Default pet Color"] = "Farbe für Standard Begleiter"

L["DEATHKNIGHT"] = "Todesritter"
L["DRUID"] = "Druide"
L["HUNTER"] = "Jäger"
L["MAGE"] = "Magier"
L["PALADIN"] = "Paladin"
L["PRIEST"] = "Priester"
L["ROGUE"] = "Schurke"
L["SHAMAN"] = "Schamane"
L["WARLOCK"] = "Hexenmeister"
L["WARRIOR"] = "Krieger"
L["Beast"] = "Bestie"
L["Demon"] = "Dämon"
L["Humanoid"] = "Humanoid"
L["Elemental"] = "Elementar"

-- heal-current status
-- L["Full Health"] = ""
-- L["Medium Health"] = ""
-- L["Low Health"] = ""
L["Show dead as having Full Health"] = "Zeige Tote, als hätten sie volle Gesundheit"
L["Frequent Updates"] = "Häufigere Aktualisierungen"
-- L["Instant Updates"] = ""

-- range status 
L["Range"] = "Reichweite"
L["%d yards"] = "%d Reichweite"
L["Range in yards beyond which the status will be lost."] = "Ausserhalb der Reichweite in Yards, mit welchem der Status aufgehoben wird"
L["Default alpha"] = "Standard Transparenz"
L["Default alpha value when units are way out of range."] = "Standardwert der Transparenz, wenn Einheiten außer Reichweite sind."
L["Update rate"] = "Aktualisierungsrate"
-- L["Rate at which the status gets updated"] = ""

-- ready-check status
L["Delay"] = "Verzögerung"
L["Set the delay until ready check results are cleared."] = "Legt die Verzögerung fest, bis die Ergebnisse des Bereitsschaftscheck verschwinden."
L["Waiting color"] = "Warten Farbe"
L["Color for Waiting."] = "Farbe für Warten"
L["Ready color"] = "Bereitschafts Farbe"
L["Color for Ready."] = "Farbe für Bereit"
L["Not Ready color"] = "Farbe für Nicht Bereit"
L["Color for Not Ready."] = "Farbe für nicht Bereit"
L["AFK color"] = "AFK Farbe"
L["Color for AFK."] = "Farbe für AFK"

-- heals-incoming status 
L["Include player heals"] = "Beinhaltet Spieler Heilung"
L["Display status for the player's heals."] = "Anzeige Status für Spieler Heilung"
-- L["Minimum value"] = ""
-- L["Incoming heals below the specified value will not be shown."] = ""

--target status
L["Your Target"] = "Dein Ziel"

--threat status
L["Not Tanking"] = "Wird nicht getankt"
L["Higher threat than tank."] = "Höhere Bedrohung als Tank"
L["Insecurely Tanking"] = "Unsicheres Tanken"
L["Tanking without having highest threat."] = "Wird getankt ohne die höchste Bedrohung"
L["Securely Tanking"] = "Sicher Getankt"
L["Tanking with highest threat."] = "Wird mit höchster Bedrohung getankt"
-- L["Disable Blink"] = ""

-- voice status
L["Voice Chat"] = "Voice Chat"

-- raid debuffs
L["General"] = "Allgemein"
L["Advanced"] = "Erweitert"
-- L["Enabled raid debuffs modules"] = ""
L["Enabled"] = "Aktiviert"
L["Enable All"] = "Alle aktivieren"
L["Disable All"] = "Alle deaktivieren"
L["Copy to Debuffs"] = "Kopiere zu Schwächungszauber"
L["Select module"] = "Modul auswählen"
L["Select instance"] = "Instanz auswählen"
L["Cataclysm"] = "Cataclysm"
L["The Lich King"] = "The Lich King"
L["The Burning Crusade"] = "The Burning Crusade"
L["New raid debuff"] = "Neuer Schlachtzug-Schwächungszauber"
L["Type the SpellId of the new raid debuff"] = "Tippe die Spell-ID des neuen Schlachtzug-Schwächungszauber ein"
L["Create raid debuff"] = "Schlachtzug-Schwächungszauber erstellen"
L["Delete raid debuff"] = "Schlachtzug-Schwächungszauber entfernen"

-- direction
L["Out of Range"] = "Außer Reichweite"
L["Display status for units out of range."] = "Zeige Status für Einheiten die außer Reichweite sind."
L["Visible Units"] = "Sichtbare Einheiten"
L["Display status for units less than 100 yards away"] = "Zeige Status für Einheiten die weniger als 100 Meter entfernt sind"
L["Dead Units"] = "Tote Einheiten"
L["Display status only for dead units"] = "Zeige Status nur für tote Einheiten"

-- resurrection
-- L["Casting resurrection"] = ""
-- L["A resurrection spell is being casted on the unit"] = ""
L["Resurrected"] = "Wiederbelebt"
-- L["A resurrection spell has been casted on the unit"] = ""
		
-- power
-- L["Mana"] = ""
-- L["Rage"] = ""
-- L["Focus"] = ""
-- L["Energy"] = ""
-- L["Runic Power"] = ""

-- shields status
-- L["shields"] = ""
-- L["Maximum shield amount"] = ""
-- L["Maximum shield amount value. Only used by bar indicators."] = ""
-- L["Normal"] = ""
-- L["Medium"] = ""
-- L["Low"] = ""
-- L["Normal shield color"] = ""
-- L["Medium shield color"] = ""
-- L["Low shield color"] = ""
-- L["Low shield threshold"] = ""
-- L["The value below which a shield is considered low."] = ""
-- L["Medium shield threshold"] = ""
-- L["The value below which a shield is considered medium."] = ""
-- L["Custom Shields"] = ""
-- L["Type shield names separated by commas."] = ""

-- boss-shields status
-- L["Supported debuffs"] = ""

-- role related statuses
-- L["Hide in combat"] = ""
-- L["Hide Damagers"] = ""

-- status descriptions
-- L["highlights your target"] = ""
-- L["hostile casts against raid members"] = ""
-- L["advanced threat detection"] = ""
-- L["arrows pointing to each raid member"] = ""
-- L["display remaining amount of heal absorb shields"] = ""

-- aoe heals
-- L["aoe-"] = ""
-- L["neighbors"] = ""
-- L["highlighter"] = ""
-- L["OutgoingHeals"] = ""

-- L["AOE Heals"] = ""
-- L["Highlight status"] = ""
-- L["Autodetect"] = ""
-- L["Select the status the Highlighter will use."] = ""
-- L["Mouse Enter Delay"] = ""
-- L["Delay in seconds before showing the status."] = ""
-- L["Mouse Leave Delay"] = ""
-- L["Delay in seconds before hiding the status."] = ""
-- L["Min players"] = ""
-- L["Minimum players to enable the status."] = ""
-- L["Radius"] = ""
-- L["Max distance of nearby units."] = ""
-- L["Health deficit"] = ""
-- L["Minimum health deficit of units to enable the status."] = ""
-- L["Keep same targets"] = ""
-- L["Try to keep same heal targets solutions if posible."] = ""
-- L["Max solutions"] = ""
-- L["Maximum number of solutions to display."] = ""
-- L["Hide on cooldown"] = ""
-- L["Hide the status while the spell is on cooldown."] = ""
-- L["Show overlapping heals"] = ""
-- L["Show heal targets even if they overlap with other heals."] = ""
-- L["Show only in combat"] = ""
-- L["Enable the statuses only in combat."] = ""
-- L["Show only in raid"] = ""
-- L["Enable the statuses only in raid."] = ""
-- L["Active time"] = ""
-- L["Show the status for the specified number of seconds."] = ""
-- L["Spells"] = ""
-- L["You can type spell IDs or spell names."] = ""

-- Import/export profiles module
L["Import/export options"] = "Optionen importieren/exportieren"
L["Import profile"] = "Profil importieren"
L["Export profile"] = "Profil exportieren"
-- L["Network sharing"] = ""
L["Accept profiles from other players"] = "Profile von anderen Spielern akzeptieren"
L["Type player name"] = "Spielernamen eingeben"
L["Send current profile"] = "Aktuelles Profil senden"
L["Profile import/export"] = "Profile importieren/exportieren"
-- L["Paste here a profile in text format"] = ""
L["Press CTRL-V to paste a Grid2 configuration text"] = "Drücke STRG-V um den Grid2 Konfigurationstext einzufügen"
L["This is your current profile in text format"] = "Dies ist Dein aktuelles Profil im Textformat"
L["Press CTRL-C to copy the configuration to your clipboard"] = "Drücke STRG-C um die Konfiguration in die Zwischenablage zu kopieren"
L["Progress"] = "Fortschritt"
L["Data size: %.1fKB"] = "Datengröße: %.1fKB"
L["Transmision progress: %d%%"] = "Fortschritt der Übertragung: %d%%"
L["Transmission completed"] = "Übertragung abgeschlossen"
L["\"%s\" has sent you a profile configuration. Do you want to activate received profile ?"] = "\"%s\" hat Dir eine Profil-Konfiguration gesendet. Willst Du das erhaltene Profil aktivieren?"
-- L["Include Custom Layouts"] = ""

-- Open manager
-- L["Options management"] = ""
-- L["Load options on demand (requires UI reload)"] = ""
-- L["OPTIONS_ONDEMAND_DESC"] = ""
