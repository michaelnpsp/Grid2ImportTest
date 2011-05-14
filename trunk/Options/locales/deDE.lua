local L =  LibStub:GetLibrary("AceLocale-3.0"):NewLocale("Grid2Options", "deDE")
if not L then return end

L["General Settings"] = "Allgemeine Einstellungen"
L["GRID2_DESC"] = "Wilkommen bei Grid2"

L["Debug"] = "Debug"
L["debugging"] = "debuggen"
L["Module debugging menu."] = "Module debugging Menü"

L["alerts"] = "Alarm"
L["blink"] = "Blink"
L["category"] = "Kategorie"
L["frame"] = "Rahmen"
L["layout"] = "Layout"
L["location"] = "Position"
L["indicator"] = "Indikator"
L["status"] = "Status/Zustand"

L["buff"] = "Buff"
L["debuff"] = "Debuff"

L["icon"] = "icon"
L["square"] = "quadrat"
L["text"] = "text"

--{{{ GridFrame
L["Mouseover Highlight"] = "Rahmen Hervorhebung"
L["Toggle mouseover highlight."] = "Rahmen Hervorhebung (Mouseover Highlight) ein-/ausschalten."

L["Show Tooltip"] = "Zeige Tooltip"
L["Show unit tooltip.  Choose 'Always', 'Never', or 'OOC'."] = "Zeige Einheiten Tooltip. Wähle:'Immer', 'Nie', oder 'OOC'"
L["Always"] = "Immer"
L["Never"] = "Nie"
L["OOC"] = "Ausserhalb des Kampfes 'OOC'"

L["Border Size"] = "Rand Größe"
L["Adjust the border of each unit's frame."] = "Einstellung für den Rand des Einheiten Rahmens"

L["Frame Width"] = "Rahmen Breite"
L["Adjust the width of each unit's frame."] = "Einstellung für die Breite des Einheiten Rahmens"

L["Frame Height"] = "Rahmen Höhe"
L["Adjust the height of each unit's frame."] = "Einstellung für die Höhe des Einheiten Rahmens"

L["Orientation of Frame"] = "Ausrichtung des Rahmens"
L["Set frame orientation."] = "Setzt die Rahmen Ausrichtung"
L["VERTICAL"] = "Vertikal"
L["HORIZONTAL"] = "Horizontal"

L["Orientation of Text"] = "Ausrichtung des Texts"
L["Set frame text orientation."] = "Text Ausrichtung festlegen."
--}}}

L["Options for %s."] = "Optionen für %s-"
L["Toggle debugging for %s."] = "ein-/ausschalten debugging für %s"

L["Show Frame"] = "Rahmen Anzeige"
L["Sets when the Grid is visible: Choose 'Always', 'Grouped', or 'Raid'."] = "Auswahl wenn GRID angezeigt werden soll:'Immer'. 'Gruppe', oder 'Raid'."
L["Always"] = "Immer"
L["Grouped"] = "Gruppe"
L["Raid"] = "Raid"

--{{{ GridLayout
L["Layouts"] = "Layouts"
L["Layouts for each type of groups you're in."] = "Layout für jede Gruppe in der du bist"
L["Layout Settings"] = "Layout Einstellungen"
L["Solo Layout"] = "Solo Layout"
L["Select which layout to use for solo."] = "Auswahl des Layout's welches für Solo genutzt werden soll"
L["Party Layout"] = "Gruppen Layout"
L["Select which layout to use for party."] = "Auswahl des Layout's welches für Gruppe genutzt werden soll"
L["Raid %s Layout"] = "Raid Layout"
L["Select which layout to use for %s person raids."] = "Auswahl Layout für %s Personen Raids"
L["Battleground Layout"] = "Schlachtfeld Layout"
L["Select which layout to use for battlegrounds."] = "Auswahl welches Layout für Schlachtfelder genutzt werden soll"
L["Arena Layout"] = "Arena Layout"
L["Select which layout to use for arenas."] = "Auswahl welches Layout für Arena genutzt werden soll"

L["Show Party in Raid"] = "Zeige deine Gruppe im Raid"
L["Show party/self as an extra group."] = "Zeige 5er Gruppe/selbst als eine extra Gruppe"
L["Show Pets for Party"] = "Zeige die Begleiter in einer 5er Gruppe"
L["Show the pets for the party below the party itself."] = " Zeige Begleiter der 5er Gruppe unter dem Gruppen Fenster"
--}}}

L["Horizontal groups"] = "Horizontale Gruppen"
L["Switch between horzontal/vertical groups."] = "Umschalten zwischen Horizontale/Vertikale Gruppen"
L["Clamped to screen"] = "Am Bildschirm fest machen"
L["Toggle whether to permit movement out of screen."] = "ein-/ausschalten um das Grid2 Fenster über den Bildschirmrand hinaus zu bewegen"
L["Frame lock"] = "Rahmen Lock"
L["Locks/unlocks the grid for movement."] = "Lock/unlock um GRID2 zu bewegen"
L["Click through the Grid Frame"] = "Durch den GRID2 Rahmen klicken"
L["Allows mouse click through the Grid Frame."] = "Erlaubt Mausklick durch den GRID2 Rahmen"

L["Display"] = "Anzeige"
L["Padding"] = "Padding"
L["Adjust frame padding."] = "Einstellung für das Rahmen Padding"
L["Spacing"] = "Abstand"
L["Adjust frame spacing."] = "Einstellung für den Rahmen Abstand"
L["Scale"] = "Größe"
L["Adjust Grid scale."] = "Einstellung der Grid2 größen Scalierung"

L["Alpha"] = "Alpha"
L["Border"] = "Rand"
L["Adjust border color and alpha."] = "Einstellung der Randfarbe und Alpha"
L["Adjust the border size of the indicator."] = "Einstellung Rand Größe für den Indikator"
L["Background"] = "Hintergrund"
L["Adjust background color and alpha."] = "Einstellung der Hintergrundfarbe und Alpa"
L["Reverse Cooldown"] = "Cooldown umdrehen"
L["Set cooldown to become darker over time instead of lighter."] = "Einstellung das der CD über Zeit dunkler anstatt Heller wird" 

--role
-- L["MAIN_ASSIST"] = MAIN_ASSIST
-- L["MAIN_TANK"] = MAIN_TANK

--target
L["Your Target"] = "Mein Ziel"

--threat
L["Not Tanking"] = "Wird nicht getankt"
L["Higher threat than tank."] = "Höhere Bedrohung als Tank"
L["Insecurely Tanking"] = "Unsicheres Tanken"
L["Tanking without having highest threat."] = "Wird getankt ohne die höchste Bedrohung"
L["Securely Tanking"] = "Sicher Getankt"
L["Tanking with highest threat."] = "Wird mit höchster Bedrohung getankt"

--voice
L["Voice Chat"] = "Stem Spricht"

L["Layout Anchor"] = "Layout Ankerpunkt"
L["Sets where Grid is anchored relative to the screen."] = "Einstellung wo GRID relativ zum Bildschirm befestigt'Ankerpunkt' soll"

L["CENTER"] = "Mitte"
L["TOP"] = "Oben"
L["BOTTOM"] = "Unten"
L["LEFT"] = "Links"
L["RIGHT"] = "Rechts"
L["TOPLEFT"] = "Oben Links"
L["TOPRIGHT"] = "Oben Rechts"
L["BOTTOMLEFT"] = "Unten Links"
L["BOTTOMRIGHT"] = "Unten Rechts"

L["corner-top-left"] = "Ecke oben Links"
L["corner-top-right"] = "Ecke oben Rechts"
L["corner-bottom-left"] = "Ecke unten Links"
L["corner-bottom-right"] = "Ecke unten Rechts"
L["side-left"] = "Linke Seite"
L["side-left-top"] = "Linke Seite oben"
L["side-left-bottom"] = "Linke Seite unten"
L["side-right"] = "Rechte Seite"
L["side-right-top"] = "Rechte Seite oben"
L["side-right-bottom"] = "Rechte Seite unten"
L["side-top"] = "Seite oben"
L["side-top-left"] = "Seite oben Links"
L["side-top-right"] = "Seite oben Rechts"
L["side-bottom"] = "Seite unten"
L["side-bottom-left"] = "Linke Seite unten"
L["side-bottom-right"] = "Rechte Seite unten"
L["center"] = "Mitte"
L["center-left"] = "Mitte Links"
L["center-right"] = "Mitte Rechts"
L["center-top"] = "Mitte oben"
L["center-bottom"] = "Mitte unten"

L["charmed"] = "Verzaubert"
L["classcolor"] = "Klassenfarbe"
L["death"] = "Tot"
L["feign-death"] = "Totstellen"
L["healing-impossible"] = "Heilung-nicht möglich"
L["healing-prevented"] = "Verhinderte-Heilung"
L["healing-reduced"] = "Heilung-reduziert"
L["heals-incoming"] = "Eingehende Heilung"
L["health"] = "Heilung"
L["health-deficit"] = "Heilungs-defizit"
L["health-low"] = "Wenig Gesundheit"
L["lowmana"] = "Wenig Mana"
L["mana"] = "Mana"
L["name"] = "Name"
L["offline"] = "Offline"
L["pvp"] = "PvP"
L["range"] = "Reichweite"
L["ready-check"] = "Ready-Check"
L["target"] = "Ziel"
L["threat"] = "Bedrohung"
L["vehicle"] = "Fahrzeug"
L["voice"] = "Stimme"

L["Beast"] = "Bestie"
L["Demon"] = "Dämon"
L["Humanoid"] = "Humanoid"
L["Elemental"] = "Elementar"

L["DEATHKNIGHT"] = "Todesritter"
L["DRUID"] = "Druidin"
L["HUNTER"] = "Jägerin"
L["MAGE"] = "Magierin"
L["PALADIN"] = "Paladin"
L["PRIEST"] = "Priesterin"
L["ROGUE"] = "Schurkin"
L["SHAMAN"] = "Schamanin"
L["WARLOCK"] = "Hexenmeisterin"
L["WARRIOR"] = "Kriegerin"

--Class Layer
L["deathknight"] = "Todesritter"
L["druid"] = "Druide"
L["hunter"] = "Jäger"
L["mage"] = "Magier"
L["paladin"] = "Paladin"
L["priest"] = "Priester"
L["rogue"] = "Schurke"
L["shaman"] = "Schamane"
L["warlock"] = "Hexenmeister"
L["warrior"] = "Krieger"

L["Opacity"] = "Durchsichtigkeit"
L["Set the opacity."] = "Einstellung der Durchsichtigkeit"

L["<CharacterOnlyString>"] = "<CharacterOnlyString>"
L["+"] = "+"
L["-"] = "-"
L["%d yards"] = "%d Reichweite"
L["Align Point"] = "Ausrichtungs Punkt"
L["Align this point on the indicator"] = "Diesen Punkt am Indikator ausrichten"
L["Align relative to"] = "Ausrichtung relativ zur"
L["Align my align point relative to"] = "Richte meinen Ausrichtungspunkt relativ zu"
L["Available Statuses"] = "Verfügbarer Status"
L["Available statuses you may add"] = "Verfügbarer Status den du dazu fügen möchtest"
L["Blink Threshold"] = "Blink Schwelle"
L["Blink Threshold at which to start blinking the status."] = "Blink Schwelle ab wann der 'Status' Aufblinken soll"
L["Class Filter"] = "Klassen Filter"
L["Create a new category of statuses."] = "Erstelle neue Status Kategorien"
L["Create a new indicator."] = "Erstelle neuen Indikator"
L["Create a new location for an indicator."] = "Erstelle neue Postition für den Indikator"
L["Create a new object"] = "Erstelle eine neues Objekt"
L["Create a new status."] = "Erstelle neuen Status"
L["Current Statuses"] = "Derzeitiger Status"
L["Current statuses in order of priority"] = "Derzeitiger Statur in der Reihenfolge der Priorität"
L["Delete"] = "Löschen"
L["Display status only if the buff is not active."] = "Zeigt den Status nur an wenn der Buff nicht Aktiv ist"
L["Display status only if the buff was cast by you."] = "Zeigt den Status nur an wenn der Buff von dir vergeben wurde"
L["Down"] = "Nach unten"
L["Location"] = "Position"
L["Move the status higher in priority"] = "Status nach oben in der Prioriätenliste"
L["Move the status lower in priority"] = "Status nach unten in der Prioritätenliste"
L["Remove selected status from this indicator"] = "Entferne den Ausgewählten Statu von diesen Indikator"
L["Name"] = "Name"
L["Name of the new indicator"] = "Name des neuen Indikators"
L["Name of the new object"] = "Name des neuen Objekts"
L["New"] = "Neu"
L["New Category"] = "Neue Kategorie"
L["New Indicator"] = "Neuer Indikator"
L["Add a new indicator"] = "Neuen Indikator dazufügen"
L["Indicators"] = "Indikatoren"
L["List of Indicators"] = "Liste von Indikatoren"
L["Order"] = "Anordnung"
L["This is the ordered list of statuses for this indicator"] = "Das ist die geordnete Liste von Statusen von diesem Indikator"
L["New Location"] = "Neue Position"
L["New Status"] = "Neuer Status"
L["Range"] = "Reichweite"
L["Range in yards beyond which the status will be lost."] = "Ausserhalb der Reichweite in Yards, mit welchem der Status aufgehoben wird"
L["Reset"] = "Reset"
L["Reset and ReloadUI."] = "Reset und neu laden der UI"
L["Reset Setup"] = "Reset Setup"
L["Reset current setup and ReloadUI."] = "Reset bestehendes Setup und neu laden UI"
L["Reset Categories"] = "Reset Kategorien"
L["Reset categories to the default list."] = "Reset Kategorien zurück auf Standart Werte"
L["Reset Indicators"] = "Reset Indikatoren"
L["Reset indicators to defaults."] = "Reset Indikatoren auf Standart Werte"
L["Reset Locations"] = "Reset Positionen"
L["Reset locations to the default list."] = "Reset Positionen auf Standart Werte"
L["Reset Statuses"] = "Reset Status"
L["Reset statuses to defaults."] = "Reset Status auf Standart Werte"
L["Reset to defaults."] = "Zurücksetzten auf Standart"
L["Select statuses to display with the indicator"] = "Auswahl Status für Anzeige mit Indiaktor"
L["Select the location of the indicator"] = "Auswahl Position des Indikators"
L["Show duration"] = "Anzeige Dauer"
L["Show if mine"] = "Anzeige ob deins"
L["Show if missing"] = "Anzeige wenn fehlt"
L["Show on %s."] = "Anzeige auf %s"
L["Show stack"] = "Anzeige Stack"
L["Show status for the selected classes."] = "Zeigt den Staus der gewählten Klasse"
L["Show the number of stacks."] = "Anzeige Anzahl der Stacks"
L["Show the time remaining."] = "Anzeige verstrichene Zeit"
L["Threshold"] = "Schwelle"
L["Threshold at which to activate the status."] = "Schwelle ab wann der Status Aktiviert werden soll"
L["Type"] = "Art"
L["Type of indicator"] = "Art des Indikators"
L["Type of indicator to create"] = "Art des Indikators der erstellt werden soll"
L["Up"] = "Auf"
L["X Offset"] = "X Offset"
L["X - Horizontal Offset"] = "X - Horizontal Offset"
L["Y Offset"] = "Y Offset"
L["Y - Vertical Offset"] = "Y - Vertical Offset"

L["Group Anchor"] = "Gruppe Befestigungspunkt"
L["Position and Anchor"] = "Position und Befestigungspunkt"
L["Sets where groups are anchored relative to the layout frame."] = "Setzt fest wo die Gruppen befestigt werden in der Relation zum Layout Rahmen"
L["Resets the layout frame's position and anchor."] = "Resetet die Layout Rahmen Position und Befestigungspunkte"

L["Center Text Length"] = "Text Länge Mitte"
L["Number of characters to show on Center Text indicator."] = "Anzahl der Buchstaben die im mittleren Text angezeigt werden."
L["Font Size"] = "Schrift Größe"
L["Adjust the font size."] = "Anpassen der Schrift Größe"
L["Font"] = "Schrift"
L["Adjust the font settings"] = "Anpassen der Schrift Einstellung"
L["Frame Texture"] = "Rahmen Texture"
L["Adjust the texture of each unit's frame."] = "Anpassen der Texture von jedem Einheitenfenster"

L["Size"] = "Größe"
L["Adjust the size of the indicator."] = "Einstellung der Indikator Größe"

L["Blink effect"] = "Blink Effekt"
L["Select the type of Blink effect used by Grid2."] = "Auswahl der Art des Blink Effekts der von GRID2 genutzt werden soll"
L["None"] = "Kein"
L["Blink"] = "Blinkt"
L["Flash"] = "Aufblinken"
L["Blink Frequency"] = "Blink Frequenz"
L["Adjust the frequency of the Blink effect."] = "Stellt die Frequenz des Blink Effekts ein"

L["Color"] = "Farbe"
L["Color %d"] = "Farbe %d"
L["Color for %s."] = "Farbe für %s."
L["Color Charmed Unit"] = "Farbe für verzauberte Einheit"
L["Color Units that are charmed."] = "Farbe für Einheiten die Verzaubert sind"
L["Unit Colors"] = "Einheiten Farbe"
L["Charmed unit Color"] = "Farbe für Verzauberte Einheiten"
L["Default unit Color"] = "Farbe für Standart Einheiten"
L["Default pet Color"] = "Farbe für Standart Begleiter"
L["%s Color"] = "%s Farbe"
L["Show dead as having Full Health"] = "Zeige Tote mit voller Gesundheit an"
L["Default alpha"] = "Standart Alpha"
L["Default alpha value when units are way out of range."] = "Standart Alpha Wert wenn Einheiten ausser Reichweite sind"
L["Update rate"] = "Aktualisierungsrate"
L["Rate at which the range gets updated"] = "Rate mit der die Reichweite aktualisiert werden soll"
L["Invert Bar Color"] = "Invertiere Leisten Farbe"
L["Swap foreground/background colors on bars."] = "Umschalten Vorder/Hintergrund Farbe der Leisten"

L["ready-check"] = "Bereitschafts Check"
L["Delay"] = "Verzögerung"
L["Set the delay until ready check results are cleared."] = "Setzt die Verzögerung nachdem die Bereitschafts Ergebnisse OK sind."
L["Waiting color"] = "Warten Farbe"
L["Color for Waiting."] = "Farbe für Warten"
L["Ready color"] = "Bereitschafts Farbe"
L["Color for Ready."] = "Farbe für Bereit"
L["Not Ready color"] = "Nicht Bereit Farbe"
L["Color for Not Ready."] = "Farbe für nicht Bereit"
L["AFK color"] = "AFK Farbe"
L["Color for AFK."] = "Farbe für AFK"

L["Include player heals"] = "Beinhaltet Spieler Heilung"
L["Display status for the player's heals."] = "Anzeige Status für Spieler Heilung"
L["Type of Heals taken into account"] = "Art welche Heilung genommen wurde"
L["Select the type of healing spell taken into account for the amount of incoming heals calculated."] = "Wähle die Art der Heil Zauber die genommen wurden für die Kalkulation der Menge der einghenden Heilung"
L["Casted heals, both direct and channeled"] = "Gecastete Heilung - Direkt und Kanalisiert"
L["Direct heals only."] = "Nur direkte Heilung"
L["All heals, including casted and HoTs"] = "Alle Heilungen, inklusive gewirkte und Heilung über Zeit"


--{{{ GridFrame
L["Frame"] = "Rahmen"
L["Options for GridFrame."] = "Optionen für den Grid2 Rahmen"

L["Indicators"] = "Indikatoren"
L["Health Bar"] = "Gesundheitsleiste"
L["Health Bar Color"] = "Farbe der Gesundheitsleiste"
L["Center Text"] = "Center Text"
L["Center Text 2"] = "Center Text 2"
L["Center Icon"] = "Center Icon"
L["Top Left Corner"] = "Ecke oben Links"
L["Top Right Corner"] = "Ecke oben Rechts"
L["Bottom Left Corner"] = "Ecke unten Links"
L["Bottom Right Corner"] = "Ecke unten Rechts"
L["Frame Alpha"] = "Frame/Rahmen Alpha"

L["Options for %s indicator."] = "Optionen für %s Indikator"
L["Statuses"] = "Status/Zustand"
L["Toggle status display."] = "Einschalten/Ausschalten Status Display"
--}}}

-- Display options
L["Pet color"] = "Begleiter Farbe"
L["Set the color of pet units."] = "Setze eine Farbe für die Begleiter Einheiten"
L["Pet coloring"] = "Begleiter Farbanpassung"
L["Set the coloring strategy of pet units."] = "Legt fest, wie die Begleiter eingefÃ¤rbt werden."
L["By Owner Class"] = "Nach Besitzer Klasse"
L["By Creature Type"] = "Nach Kreatur Art"
L["Using Fallback color"] = "Benutze Rücksicherungs Farbe"
L["Colors"] = "Farben"
L["Color options for class and pets."] = "Farb Optionen für Klassen und Begleiter"
L["Fallback colors"] = "Rücksicherungs Farben"
L["Color of unknown units or pets."] = "Farbe für unbekannte Einheiten oder Begleiter"
L["Unknown Unit"] = "Unbekannte Einheit"
L["The color of unknown units."] = "Farbe für unbekannte Einheiten"
L["Unknown Pet"] = "Unbekannte Begleiter"
L["The color of unknown pets."] = "Farbe für unbekannte Begleiter"
L["Class colors"] = "Klassen Farben"
L["Color of player unit classes."] = "Farbe für Spieler Einheit Klassen"
L["Creature type colors"] = "Kreaturen Typ Farbe"
L["Color of pet unit creature types."] = "Farbe der Begleiter Einheiten und Art"
L["Color for %s."] = "Farbe für %s"

--{{{ GridStatus
L["Status"] = "Status/Zustand"
L["Statuses"] = "Statuse/Zustände"

-- module prototype
L["Status: %s"] = "Status %s"
L["Color"] = "Farbe"
L["Color for %s"] = "Farbe für %s"
L["Priority"] = "Priorität"
L["Priority for %s"] = "Priorität für %s"
L["Range filter"] = "Reichweiten Filter"
L["Range filter for %s"] = "Reichweiten Filter für %s"
L["Enable"] = "Aktiviert"
L["Enable %s"] = "Aktiviere %s"
--}}}

--{{{ GridStatusAggro
L["Aggro"] = "Bedrohung"
L["Aggro alert"] = "Bedrohungs Alarm"
--}}}

--{{{ GridStatusAuras
L["Auras"] = "Auren"
L["Debuff type: %s"] = "Debuff Art %s"
L["Poison"] = "Gift"
L["Disease"] = "Krankheit"
L["Magic"] = "Magie"
L["Curse"] = "Fluch"
L["Ghost"] = "Geist"
L["Add new Buff"] = "Neuen Buff hizufügen"
L["Adds a new buff to the status module"] = "Fügt einen neuen Buff zum Status Module"
L["<buff name>"] = "<Buff Name>"
L["Add new Debuff"] = "Fügt einen neuen Debuff hinzu"
L["Adds a new debuff to the status module"] = "Fügt einen neuen Debuff zum Status Modul hinzu"
L["<debuff name>"] = "Debuff Name"
L["Delete (De)buff"] = "Lösche (De)Buff"
L["Deletes an existing debuff from the status module"] = "Löscht einen existierenden Debuff aus dem Status Modul"
L["Remove %s from the menu"] = "Entfernt %s aus dem Menue"
L["Debuff: %s"] = "Debuff: %s"
L["Buff: %s"] = "Buff: %s"
L["Class Filter"] = "Klassen Filter"
L["Show status for the selected classes."] = "Zeigt den Status der ausgewählten Klassen"
L["Show on %s."] = "Zeigt auf %s."
L["Show if missing"] = "Zeige an ob fehlt"
L["Display status only if the buff is not active."] = "Anzeige Status nur wenn Buff nicht Aktiv"
L["Filter Abolished units"] = "Filter aufhebbarer Einheiten"
L["Skip units that have an active Abolish buff."] = "Überspringe Einheiten mit aktiven aufhebbarem Buff"
--}}}

--{{{ GridStatusName
L["Unit Name"] = "Einheiten Name"
L["Color by class"] = "Farbe bei Klasse"
--}}}

--{{{ GridStatusMana
L["Mana"] = "Mana"
L["Low Mana"] = "Wenig Mana"
L["Mana threshold"] = "Mana Grenzwert"
L["Set the percentage for the low mana warning."] = "Setze die Prozente für die wenig Mana Warnung"
L["Low Mana warning"] = "Wenig Mana Warnung"
--}}}

--{{{ GridStatusHeals
L["Heals"] = "Heilung"
L["Incoming heals"] = "Eingehende Heilung"
L["Ignore Self"] = "Ignoriere Selbst"
L["Ignore heals cast by you."] = "Ignoriere eigene gewirkte Heilungen"
L["(.+) begins to cast (.+)."] = "(.+) Beginnt zu casten (.+)."
L["(.+) gains (.+) Mana from (.+)'s Life Tap."] = "(.+) gewinnt (.+) Mana von (.+)'s Life Tap."
L["^Corpse of (.+)$"] = "^Körper von .+)$"
--}}}

--{{{ GridStatusHealth
L["Low HP"] = "Wenig HP"
L["DEAD"] = "Tot"
L["GHOST"] = "Geist"
L["FD"] = "Totstellen"
L["Offline"] = "Offline"
L["Unit health"] = "Einheit Heilung"
L["Health deficit"] = "Heilungs defizit"
L["Low HP warning"] = "Wenig HP Warnung"
L["Feign Death warning"] = "Totstellen Warnung"
L["Death warning"] = "Todes Warnung"
L["Offline warning"] = "Offline Warnung"
L["Health"] = "Gesundheit"
L["Show dead as full health"] = "Zeige Tote mit voller Gesundheit"
L["Treat dead units as being full health."] = "Behandle Tote Einheiten als hätten sie volle Gesundheit."
L["Use class color"] = "Benutze Klassen Farbe"
L["Color health based on class."] = "Gesundheitsanzeige Farbe basierend auf Klasse"
L["Health threshold"] = "Gesundheits Grenzwert"
L["Only show deficit above % damage."] = "Zeige nur Defizit über % Schaden"
L["Color deficit based on class."] = "Farben defizit basierend auf Klasse"
L["Low HP threshold"] = "Grenzwert wenig Gesundheit"
L["Set the HP % for the low HP warning."] = "Setzt die Gesundheit % für die wenig Gesundheit Warnung"
--}}}

-- raid debuffs
L["General"]= true
L["Advanced"]= true
L["Enabled raid debuffs modules"]= true
L["Enabled"]= true
L["Enable All"]= true
L["Disable All"]= true
L["Copy to Debuffs"]= true
L["Select module"]= true
L["Select instance"]= true
L["Cataclysm"]= true
L["The Lich King"]= true
L["The Burning Crusade"] = true
L["New raid debuff"] = true
L["Type the SpellId of the new raid debuff"] = true
L["Create raid debuff"] = true
L["Delete raid debuff"] = true

-- Import/export profiles module
L["Import/export options"]= true
L["Import profile"]= true
L["Export profile"]= true
L["Network sharing"]= true
L["Accept profiles from other players"]= true
L["Type player name"]= true
L["Send current profile"]= true
L["Profile import/export"]= true
L["Paste here a profile in text format"]= true
L["Press CTRL-V to paste a Grid2 configuration text"]= true
L["This is your current profile in text format"]= true
L["Press CTRL-C to copy the configuration to your clipboard"]= true
L["Progress"]= true
L["Data size: %.1fKB"]= true
L["Transmision progress: %d%%"]= true
L["Transmission completed"]= true
L["\"%s\" has sent you a profile configuration. Do you want to activate received profile ?"]= true
