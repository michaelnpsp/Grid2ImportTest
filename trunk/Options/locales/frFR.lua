﻿local L =  LibStub:GetLibrary("AceLocale-3.0"):NewLocale("Grid2Options", "frFR")
if not L then return end

L["General Settings"] = "Paramètres généraux"
L["GRID2_DESC"] = "Bienvenue sur Grid2"

L["Debug"] = "Debug"
L["debugging"] = "debugging"
L["Module debugging menu."] = "Menu du module de débugging"

L["alerts"] = "Alertes"
L["blink"] = "Clignotement"
L["category"] = "Catégorie"
L["frame"] = "Cadre"
L["layout"] = "Grille"
L["location"] = "Position"
L["indicator"] = "Indicateur"
L["status"] = "Statut"

L["buff"] = "Buff"
L["debuff"] = "Débuff"

L["icon"] = "icône"
L["square"] = "carré"
L["text"] = "texte"

--{{{ GridFrame
L["Frame"] = "Cadre"
L["Options for GridFrame."] = "Options du cadre"

L["Indicators"] = "Indicateurs"
L["Health Bar"] = "Barre de vie"
L["Health Bar Color"] = "Couleur de la barre de vie"
L["Center Text"] = "Texte central"
L["Center Text 2"] = "Texte central 2"
L["Center Icon"] = "Icône central"
L["Top Left Corner"] = "Coin sup. gauche"
L["Top Right Corner"] = "Coin sup. droit"
L["Bottom Left Corner"] = "Coin bas gauche"
L["Bottom Right Corner"] = "Coin bas droit"
L["Frame Alpha"] = "Transparence du cadre"

L["Options for %s indicator."] = "Options de l'indicateur %s."
L["Statuses"] = "Statuts"
L["Toggle status display."] = "Affichage des statuts."

-- Advanced options
L["Enable %s indicator"] = "Autoriser l'indicateur %s"
L["Toggle the %s indicator."] = "Afficher l'indicateur %s."
L["Orientation of Text"] = "Orientation du texte"
L["Set frame text orientation."] = "Orientation du cadre du texte."
--}}}

--{{{ GridLayout
L["Layout"] = "Agencement"
L["Options for GridLayout."] = "Options d'agencement de la grille."


-- Display options
L["Pet color"] = "Couleur du familier"
L["Set the color of pet units."] = "Définis la couleur des familiers."
L["Pet coloring"] = "Coloration du familier"
L["Set the coloring strategy of pet units."] = "Définis la stratégie de coloration des familiers."
L["By Owner Class"] = "Par classe"
L["By Creature Type"] = "Par type de créature"
L["Using Fallback color"] = "Utiliser la couleur secondaire"
L["Colors"] = "Couleurs"
L["Color options for class and pets."] = "Options de couleurs pour les classes et les familiers."
L["Fallback colors"] = "Couleurs secondaires"
L["Color of unknown units or pets."] = "Couleur des unités ou familiers inconnues."
L["Unknown Unit"] = "Unité inconnue"
L["The color of unknown units."] = "La couleur des unités inconnues."
L["Unknown Pet"] = "Familier inconnu"
L["The color of unknown pets."] = "La couleur des  inconnuess inconnus."
L["Class colors"] = "Couleurs des classes"
L["Color of player unit classes."] = "Couleur."
L["Creature type colors"] = "Couleurs des types de créatures"
L["Color of pet unit creature types."] = "Couleurs des  inconnues par types de créature."
L["Color for %s."] = "Couleur pour %s."

-- Advanced options
L["Advanced"] = "Avancé"
L["Advanced options."] = "Options Avancées."
--}}}

--{{{ GridRange
-- used for getting spell range from tooltip
L["(%d+) yd range"] = "portée de (%d+) m"
--}}}

--{{{ GridStatus
L["Status"] = "Statut"
L["Statuses"] = "Statuts"

-- module prototype
L["Status: %s"] = "Statut : %s"
L["Color"] = "Couleur"
L["Color for %s"] = "Couleur pour %s"
L["Priority"] = "Priorité"
L["Priority for %s"] = "Priorité pour %s"
L["Range filter"] = "Filtre de distance"
L["Range filter for %s"] = "Filtre de distance pour %s"
L["Enable"] = "Activer"
L["Enable %s"] = "Activer %s"
--}}}

--{{{ GridStatusAggro
L["Aggro"] = "Aggro"
L["Aggro alert"] = "Alerte d'Aggro"
--}}}

--{{{ GridStatusAuras
L["Auras"] = "Auras"
L["Debuff type: %s"] = "Type de débuff : %s"
L["Poison"] = "Poison"
L["Disease"] = "Maladie"
L["Magic"] = "Magie"
L["Curse"] = "Malédiction"
L["Ghost"] = "Fantôme"
L["Add new Buff"] = "Ajouter nouveau buff"
L["Adds a new buff to the status module"] = "Ajouter nouveau buff au module de statut"
L["<buff name>"] = "<nom du buff>"
L["Add new Debuff"] = "Ajouter nouveau débuff"
L["Adds a new debuff to the status module"] = "Ajouter nouveau débuff au module de statut"
L["<debuff name>"] = "<nom du débuff>"
L["Delete (De)buff"] = "Effacer (dé)buff"
L["Deletes an existing debuff from the status module"] = "Efface un débuff existant du module de statut"
L["Remove %s from the menu"] = "Retirer %s du menu"
L["Debuff: %s"] = "Débuff : %s"
L["Buff: %s"] = "Buff : %s"
L["Class Filter"] = "Filtre de classe"
L["Show status for the selected classes."] = "Montrer le statut des classes selectionnées"
L["Show on %s."] = "Montrer sur %s"
L["Show if missing"] = "Montrer si manquant"
L["Display status only if the buff is not active."] = "Montrer le statut uniquement si le buff est inactif."
L["Filter Abolished units"] = "Filtrer les unités abolies"
L["Skip units that have an active Abolish buff."] = "Passer les unités qui ont un buff abolis actif."
--}}}

--{{{ GridStatusName
L["Unit Name"] = "Nom de l'unité"
L["Color by class"] = "Couleur de la classe"
--}}}

--{{{ GridStatusMana
L["Mana"] = "Mana"
L["Low Mana"] = "Mana bas"
L["Mana threshold"] = "Seuil de mana"
L["Set the percentage for the low mana warning."] = "Définir le pourcentage d'avertissement de mana bas."
L["Low Mana warning"] = "Avertissement de Mana bas"
--}}}

--{{{ GridStatusHeals
L["Heals"] = "Soins"
L["Incoming heals"] = "Soins entrants"
L["Ignore Self"] = "S'ignorer"
L["Ignore heals cast by you."] = "Ignorer les soins incantés par vous."
L["(.+) begins to cast (.+)."] = "(.+) commence à incanter (.+)."
L["(.+) gains (.+) Mana from (.+)'s Life Tap."] = "(.+) gagne (.+) Mana de (.+)'s connexion."
L["^Corpse of (.+)$"] = "^Corps de (.+)$"
--}}}

--{{{ GridStatusHealth
L["Low HP"] = "Vie basse"
L["DEAD"] = "MORT"
L["GHOST"] = "FANTOME"
L["FD"] = "FD"
L["Offline"] = "Déco."
L["Unit health"] = "Vie de l'unité"
L["Health deficit"] = "Déficit de vie"
L["Low HP warning"] = "Alerte vie basse"
L["Feign Death warning"] = "Alerte Feign Death"
L["Death warning"] = "Alerte mort"
L["Offline warning"] = "Alerte Déco."
L["Health"] = "Vie"
L["Show dead as full health"] = "Montrer les morts en vie pleine"
L["Treat dead units as being full health."] = "Traiter les unités mortes comme si elles étaient full vie."
L["Use class color"] = "Utiliser la couleur de classe"
L["Color health based on class."] = "Couleur de vie basée sur la classe."
L["Health threshold"] = "Seuil de Vie"
L["Only show deficit above % damage."] = "Montre uniquement le déficit supérieur à ce % de dommages."
L["Color deficit based on class."] = "Couleur du déficit basée sur la classe."
L["Low HP threshold"] = "Seuil de vie basse"
L["Set the HP % for the low HP warning."] = "Définis le % de vie pour l'alerte de vie basse."
--}}}

--{{{ GridFrame
L["Mouseover Highlight"] = "Activer la surbrillance au survol"
L["Toggle mouseover highlight."] = "Active ou non la surbrillance lors du passage de la souris."

L["Show Tooltip"] = "Afficher tooltip"
L["Show unit tooltip.  Choose 'Always', 'Never', or 'OOC'."] = "Afficher le tooltip de l'unité. Choisir 'Toujours', 'Jamais', ou 'OOC'."
L["Always"] = "Toujours"
L["Never"] = "Jamais"
L["OOC"] = "OOC"

L["Border Size"] = "Taille de la bordure"
L["Adjust the border of each unit's frame."] = "Ajuster la bordure de chaque cadre d'unité."

L["Frame Width"] = "Largeur du cadre"
L["Adjust the width of each unit's frame."] = "Ajuster la largeur de chaque cadre d'unité."

L["Frame Height"] = "Hauteur du cadre"
L["Adjust the height of each unit's frame."] = "Ajuster la hauteur de chaque cadre d'unité."

L["Orientation of Frame"] = "Orientation du cadre"
L["Set frame orientation."] = "Sélectionner l'orientation du cadre."
L["VERTICAL"] = "VERTICAL"
L["HORIZONTAL"] = "HORIZONTAL"

L["Orientation of Text"] = "Orientation du texte"
L["Set frame text orientation."] = "Détermine l'orientation du texte de la grille."
--}}}

L["Options for %s."] = "Options de %s."
L["Toggle debugging for %s."] = "Afficher le debugging pour %s."

L["Show Frame"] = "Afficher Cadre"
L["Sets when the Grid is visible: Choose 'Always', 'Grouped', or 'Raid'."] = "Configure la visibilité de Grid : Choisir 'Toujours', 'Groupé', ou 'Raid'."
L["Always"] = "Toujours"
L["Grouped"] = "Groupé"
L["Raid"] = "Raid"

--{{{ GridLayout
L["Layouts"] = "Agencements"
L["Layouts for each type of groups you're in."] = "Agencements pour chaque type de groupe dans lequel vous êtes."
L["Layout Settings"] = "Paramètres d'agencement"
L["Solo Layout"] = "Agencement Solo"
L["Select which layout to use for solo."] = "Choisir l'agencement à utiliser en Solo."
L["Party Layout"] = "Agencement de groupe"
L["Select which layout to use for party."] = "Choisir l'agencement à utiliser en Groupe."
L["Raid %s Layout"] = "Agencement de Raid %s"
L["Select which layout to use for %s person raids."] = "Choisir l'agencement à utiliser en Raid %s."
L["Battleground Layout"] = "Agencement de Champ de Bataille"
L["Select which layout to use for battlegrounds."] = "Choisir l'agencement à utiliser en Champ de Bataille."
L["Arena Layout"] = "Agencement d'Arène"
L["Select which layout to use for arenas."] = "Choisir l'agencement à utiliser en Arène."

L["Show Party in Raid"] = "Montrer le groupe en raid"
L["Show party/self as an extra group."] = "Montrer groupe/soi-même comme un groupe à part."
L["Show Pets for Party"] = "Montrer les familiers du groupe"
L["Show the pets for the party below the party itself."] = "Montrer les familiers du groupe sous le groupe."
--}}}

L["Horizontal groups"] = "Groupes Horizontaux"
L["Switch between horzontal/vertical groups."] = "Inverser Groupes Horizontaux/Verticaux."
L["Clamped to screen"] = "Restreindre à l'écran"
L["Toggle whether to permit movement out of screen."] = "Cocher pour interdire les mouvements hors de l'écran."
L["Frame lock"] = "Verrouiller le cadre"
L["Locks/unlocks the grid for movement."] = "Verrouiller/Deverrouiller la grille."
L["Click through the Grid Frame"] = "Cliquer au travers de la grille"
L["Allows mouse click through the Grid Frame."] = "Autoriser le clic au travers de la grille."

L["Display"] = "Affichage"
L["Padding"] = "Remplissage"
L["Adjust frame padding."] = "Ajuste le remplissage du cadre."
L["Spacing"] = "Espacement"
L["Adjust frame spacing."] = "Ajuster l'espacement des cadres."
L["Scale"] = "Agrandissement"
L["Adjust Grid scale."] = "Ajuster l'agrandissement."

L["Alpha"] = "Alpha"
L["Border"] = "Bordure"
L["Adjust border color and alpha."] = "Ajuster la couleur de la bordure et de l'Alpha."
L["Adjust the border size of the indicator."] = "Ajuster la taille de la bordure de l'indicateur."
L["Background"] = "Fond"
L["Adjust background color and alpha."] = "Ajuster la couleur du fond et de l'Alpha."
L["Reverse Cooldown"] = "Compte à Rebours inversé"
L["Set cooldown to become darker over time instead of lighter."] = "Paramètre le CD pour devenir plus sombre suivant le temps écoulé au lieu de plus clair."

--role
-- L["MAIN_ASSIST"] = MAIN_ASSIST
-- L["MAIN_TANK"] = MAIN_TANK

--target
L["Your Target"] = "Votre Cible"

--threat
L["Not Tanking"] = "Ne tank pas"
L["Higher threat than tank."] = "Menace plus élevée que le Tank"
L["Insecurely Tanking"] = "Tanking dangeureux"
L["Tanking without having highest threat."] = "Tank sans avoir la menace la plus élevée."
L["Securely Tanking"] = "Tanking sûr"
L["Tanking with highest threat."] = "Tank avec la menace la plus élevée."

--voice
L["Voice Chat"] = "Chat Vocal"

L["Layout Anchor"] = "Ancre de la grille"
L["Sets where Grid is anchored relative to the screen."] = "Configure ou Grid sera ancré sur l'écran"

L["CENTER"] = "CENTRE"
L["TOP"] = "HAUT"
L["BOTTOM"] = "BAS"
L["LEFT"] = "GAUCHE"
L["RIGHT"] = "DROITE"
L["TOPLEFT"] = "HAUT GAUCHE"
L["TOPRIGHT"] = "HAUT DROIT"
L["BOTTOMLEFT"] = "BAS GAUCHE"
L["BOTTOMRIGHT"] = "BAS DROIT"

L["corner-top-left"] = "coin-haut-gauche"
L["corner-top-right"] = "coin-haut-droit"
L["corner-bottom-left"] = "coin-bas-gauche"
L["corner-bottom-right"] = "coin-bas-droit"
L["side-left"] = "côté-gauche"
L["side-left-top"] = "côté-gauche-haut"
L["side-left-bottom"] = "côté-gauche-bas"
L["side-right"] = "côté-droit"
L["side-right-top"] = "côté-droit-haut"
L["side-right-bottom"] = "côté-droit-bas"
L["side-top"] = "côté-haut"
L["side-top-left"] = "côté-haut-gauche"
L["side-top-right"] = "côté-haut-droit"
L["side-bottom"] = "côté-bas"
L["side-bottom-left"] = "côté-bas-gauche"
L["side-bottom-right"] = "côté-bas-droit"
L["center"] = "centre"
L["center-left"] = "centre-gauche"
L["center-right"] = "centre-droit"
L["center-top"] = "centre-haut"
L["center-bottom"] = "centre-bas"

L["charmed"] = "charmé"
L["classcolor"] = "couleur-de-classe"
L["death"] = "mort"
L["feign-death"] = "feign-death"
L["healing-impossible"] = "soin-impossible"
L["healing-prevented"] = "soin-empêché"
L["healing-reduced"] = "soin-réduit"
L["heals-incoming"] = "soins-entrant"
L["health"] = "vie"
L["health-deficit"] = "déficit-de-vie"
L["health-low"] = "vie-basse"
L["lowmana"] = "mana-basse"
L["mana"] = "mana"
L["name"] = "nom"
L["offline"] = "déco"
L["pvp"] = "pvp"
L["range"] = "distance"
L["ready-check"] = "appel"
L["target"] = "cible"
L["threat"] = "menace"
L["vehicle"] = "véhicule"
L["voice"] = "voix"

L["Beast"] = "Bête"
L["Demon"] = "Démon"
L["Humanoid"] = "Humanoide"
L["Elemental"] = "Elémentaire"

L["DEATHKNIGHT"] = "Chevalier de la mort"
L["DRUID"] = "Druide"
L["HUNTER"] = "Hunt"
L["MAGE"] = "Mage"
L["PALADIN"] = "Paladin"
L["PRIEST"] = "Prêtre"
L["ROGUE"] = "Voleur"
L["SHAMAN"] = "Shaman"
L["WARLOCK"] = "Démoniste"
L["WARRIOR"] = "Guerrier"

--Account Layer
L["account"] = "Compte"

--Class Layer
L["deathknight"] = "DK"
L["druid"] = "druide"
L["hunter"] = "chasseur"
L["mage"] = "mage"
L["paladin"] = "paladin"
L["priest"] = "prêtre"
L["rogue"] = "voleur"
L["shaman"] = "chaman"
L["warlock"] = "démoniste"
L["warrior"] = "guerrier"

--Spec Layer
L["tree"] = "Arbre"
L["holy1"] = "Sacré 1"
L["holy2"] = "Sacré 2"
L["resto"] = "Resto"

L["Layer"] = "Calque"
L["Layer level.  Higher layers (like Class or Spec) supercede lower ones like Account."] = "Niveau de calque. Les calques de plus haut niveau (comme classe ou spé) prennent le dessus sur les plus bas comme le compte."

L["Opacity"] = "Opacité"
L["Set the opacity."] = "Régle l'opacité"

L["<CharacterOnlyString>"] = "<CharacterOnlyString>"
L["+"] = "+"
L["-"] = "-"
L["%d yards"] = "%d mètres"
L["Align Point"] = "Point d'alignement"
L["Align this point on the indicator"] = "Aligner ce point sur l'indicateur"
L["Align relative to"] = "Alignement par rapport à "
L["Align my align point relative to"] = "Aligner le point d'alignement par rapport à "
L["Available Statuses"] = "Statuts disponibles"
L["Available statuses you may add"] = "Statuts disponibles que vous pouvez ajouter"
L["Blink Threshold"] = "Seuil de clignotement"
L["Blink Threshold at which to start blinking the status."] = "Seuil pour lequel le clignotement du statut commencera."
L["Class Filter"] = "Filtre de classe"
L["Create a new category of statuses."] = "Créer une nouvelle catégorie de statuts."
L["Create a new indicator."] = "Créer un nouvel indicateur."
L["Create a new location for an indicator."] = "Créer un nouvel emplacement d'indicateur."
L["Create a new object"] = "Créer un nouvel objet."
L["Create a new status."] = "Créer un nouveau statut."
L["Current Statuses"] = "Statuts actuels"
L["Current statuses in order of priority"] = "Statuts actuels par ordre de priorité"
L["Delete"] = "Effacer"
L["Display status only if the buff is not active."] = "Afficher le statut uniquement si le buff n'est pas actif."
L["Display status only if the buff was cast by you."] = "Afficher le statut uniquement si le buff est le votre."
L["Down"] = "Bas"
L["Location"] = "Emplacement"
L["Move the status higher in priority"] = "Bouger le statut en priorité plus haute"
L["Move the status lower in priority"] = "Bouger le statut en priorité plus basse"
L["Remove selected status from this indicator"] = "Retirer le statut séléctionné de cet indicateur"
L["Name"] = "Nom"
L["Name of the new indicator"] = "Nom du nouvel indicateur"
L["Name of the new object"] = "Nom du nouvel objet."
L["New"] = "Nouveau"
L["New Category"] = "Nouvelle Catégorie"
L["New Indicator"] = "Nouvel Indicateur"
L["Add a new indicator"] = "Ajoute un nouvel indicateur"
L["Indicators"] = "Indicateurs"
L["List of Indicators"] = "Liste des indicateurs"
L["Order"] = "Ordre"
L["This is the ordered list of statuses for this indicator"] = "Ceci est la liste ordonnée des statuts pour cet indicateur"
L["New Location"] = "Nouvel Emplacement"
L["New Status"] = "Nouveau Statut"
L["Range"] = "Distance"
L["Range in yards beyond which the status will be lost."] = "Distance en mètres au-dessus de laquelle le statut sera perdu."
L["Reset"] = "Réinitialiser"
L["Reset and ReloadUI."] = "RAZ et reloadUI."
L["Reset Setup"] = "RAZ Setup"
L["Reset current setup and ReloadUI."] = "RAZ paramètres et ReloadUI."
L["Reset Categories"] = "RAZ des catégories"
L["Reset categories to the default list."] = "Catégories par défaut."
L["Reset Indicators"] = "RAZ des indicateurs"
L["Reset indicators to defaults."] = "Indicateurs par défaut."
L["Reset Locations"] = "RAZ des emplacements"
L["Reset locations to the default list."] = "Emplacements par défaut."
L["Reset Statuses"] = "RAZ des Statuts"
L["Reset statuses to defaults."] = "Statuts par défaut."
L["Reset to defaults."] = "RAZ"
L["Select statuses to display with the indicator"] = "Sélectionner les statuts à afficher avec l'indicateur"
L["Select the location of the indicator"] = "Sélectionner l'emplacement de l'indicateur"
L["Show duration"] = "Montrer durée"
L["Show if mine"] = "Montrer si le mien"
L["Show if missing"] = "Montrer si manquant"
L["Show on %s."] = "Montrer sur %s."
L["Show stack"] = "Montrer stack"
L["Show status for the selected classes."] = "Montrer le statut pour les classes sélectionnées."
L["Show the number of stacks."] = "Montrer le nombre de stacks."
L["Show the time remaining."] = "Montrer le temps restant."
L["Threshold"] = "Seuil"
L["Threshold at which to activate the status."] = "Seuil d'activation du statut."
L["Type"] = "Type"
L["Type of indicator"] = "Type d'indicateur"
L["Type of indicator to create"] = "Type d'indicateur à créer"
L["Up"] = "Haut"
L["X Offset"] = "Décalage en X"
L["X - Horizontal Offset"] = "X - Décalage horizontal"
L["Y Offset"] = "Décalage en Y"
L["Y - Vertical Offset"] = "Y - Décalage vertical"

L["Group Anchor"] = "Ancre des groupes"
L["Position and Anchor"] = "Position et Ancrage"
L["Sets where groups are anchored relative to the layout frame."] = "Défini l'ancrage des groupes par rapport au cadre de la grille."
L["Resets the layout frame's position and anchor."] = "Réinitialise la position et l'ancrage du cadre de la grille."

L["Center Text Length"] = "Longueur du texte central"
L["Number of characters to show on Center Text indicator."] = "Nombre de caractères ࡡfficher sur l'indicateur texte central."
L["Font Size"] = "Taille des caractères."
L["Adjust the font size."] = "Ajuste la taille des caractères."
L["Font"] = "Style"
L["Adjust the font settings"] = "Ajuste les caractèristiques de styles."
L["Frame Texture"] = "Texture du cadre"
L["Adjust the texture of each unit's frame."] = "Ajuste la texture de chaque cadre d'unité."

L["Size"] = "Taille"
L["Adjust the size of the indicator."] = "Ajuste la taille des indicateur."

L["Blink effect"] = "Effet de clignotement"
L["Select the type of Blink effect used by Grid2."] = "Sélectionner le type de clignotement "
L["None"] = "Aucun"
L["Blink"] = "Clignotement"
L["Flash"] = "Flash"
L["Blink Frequency"] = "Fréquence de clignotement"
L["Adjust the frequency of the Blink effect."] = "Ajuste la fréquence de clignotement de l'effet de clignotement."

L["Color"] = "Couleur"
L["Color %d"] = "Couleur %d"
L["Color for %s."] = "Couleur pour %s."
L["Color Charmed Unit"] = "Couleur des Unités Charmées"
L["Color Units that are charmed."] = "Colore des Unités Charmées"
L["Unit Colors"] = "Couleur des unités"
L["Charmed unit Color"] = "Couleur des unités Charmées"
L["Default unit Color"] = "Couleur par défaut des unités"
L["Default pet Color"] = "Couleur par défaut des pets"
L["%s Color"] = "Couleur de %s"
L["Show dead as having Full Health"] = "Montrer les morts comme par étant full vie"
L["Default alpha"] = "Alpha par défaut"
L["Default alpha value when units are way out of range."] = "Valeur par défaut de l'alpha lorsque les unités sont hors de portée"
L["Update rate"] = "Taux de mise à jour"
L["Rate at which the range gets updated"] = "Taux de rafraichissement de la distance"
L["Invert Bar Color"] = "Inverser les couleurs de barre"
L["Swap foreground/background colors on bars."] = "Intervertir les couleurs avant/arrière des barres."

L["ready-check"] = "Appel"
L["Delay"] = "Délai"
L["Set the delay until ready check results are cleared."] = "Timer avant disparition des résultats de l'appel"
L["Waiting color"] = "Couleur d'attente"
L["Color for Waiting."] = "Couleur pour l'attente"
L["Ready color"] = "Couleur ok"
L["Color for Ready."] = "Couleur pour prêt"
L["Not Ready color"] = "Couleur nok"
L["Color for Not Ready."] = "Couleur pour non prêt"
L["AFK color"] = "Couleur d'AFK"
L["Color for AFK."] = "Couleur pour AFK"

L["Include player heals"] = "Inclure les soins du joueur"
L["Display status for the player's heals."] = "Afficher le statut des soins du joueur"
L["Type of Heals taken into account"] = "Type de soins pris en compte"
L["Select the type of healing spell taken into account for the amount of incoming heals calculated."] = "Selectionner le type de soins pris en compte pour le calcul des soins reçus."
L["Casted heals, both direct and channeled"] = "Soins incantés, directs et en chaîne"
L["Direct heals only."] = "Soins directs uniquement."
L["All heals, including casted and HoTs"] = "Tous les soins, incantés et HoTs inclus"
