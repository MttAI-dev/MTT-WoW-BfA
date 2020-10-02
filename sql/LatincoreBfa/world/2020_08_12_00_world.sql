DELETE FROM `page_text_locale` WHERE (`ID`=7432 AND `locale`='esES') OR (`ID`=7431 AND `locale`='esES') OR (`ID`=7430 AND `locale`='esES');
INSERT INTO `page_text_locale` (`ID`, `Text`, `locale`, `VerifiedBuild`) VALUES
(7432, '<Parece que alguien dejó este tubo de pergamino aquí con mucho cuidado. Quizás el dueño esté cerca...>', 'esES', 29297),
(7431, '<Parece que alguien mojó este pergamino con un líquido antes de pegarlo al árbol. Lo que estaba escrito ya no se puede leer, ha perdido su valor.>', 'esES', 29297),
(7430, '<Si alguna vez hubo algo de valor en esta bolsa, alguien se lo ha llevado.>', 'esES', 29297);

DELETE FROM `playerchoice_locale` WHERE `ChoiceId` IN (509, 535, 533, 537, 529);
INSERT INTO `playerchoice_locale` (`ChoiceId`, `Locale`, `Question`, `VerifiedBuild`) VALUES
(509, 'esES', '', 29297),
(535, 'esES', '', 29297),
(533, 'esES', '', 29297),
(537, 'esES', '', 29297),
(529, 'esES', '� �hGastar |cFFFFFFFF8', 29297);

DELETE FROM `playerchoice_response_locale` WHERE (`ChoiceId`=509 AND `ResponseId`=0) OR (`ChoiceId`=509 AND `ResponseId`=1445) OR (`ChoiceId`=535 AND `ResponseId`=118529) OR (`ChoiceId`=535 AND `ResponseId`=1716) OR (`ChoiceId`=535 AND `ResponseId`=1715) OR (`ChoiceId`=540 AND `ResponseId`=118529) OR (`ChoiceId`=540 AND `ResponseId`=1787) OR (`ChoiceId`=539 AND `ResponseId`=118529) OR (`ChoiceId`=539 AND `ResponseId`=1739) OR (`ChoiceId`=531 AND `ResponseId`=1681) OR (`ChoiceId`=540 AND `ResponseId`=1784) OR (`ChoiceId`=533 AND `ResponseId`=118529) OR (`ChoiceId`=533 AND `ResponseId`=1704) OR (`ChoiceId`=537 AND `ResponseId`=118529) OR (`ChoiceId`=537 AND `ResponseId`=1728) OR (`ChoiceId`=531 AND `ResponseId`=1682) OR (`ChoiceId`=529 AND `ResponseId`=1670) OR (`ChoiceId`=540 AND `ResponseId`=1783) OR (`ChoiceId`=537 AND `ResponseId`=1727);
INSERT INTO `playerchoice_response_locale` (`ChoiceId`, `ResponseId`, `Locale`, `Header`, `Subheader`, `ButtonTooltip`, `Answer`, `Description`, `Confirmation`, `VerifiedBuild`) VALUES
(509, 0, 'esES', 'e Arathi cerca.La Horda controla Ar\'gorok y las Tierras Altas de Arathi. Los espías mortacechadores informan que la Alianza está organizando su propia campaña de guerra en Arathi.�6%)Ҭ��B(Ir a la batallaLa batalla por Costa OscuraAsedioRecompensa por ganar:Lucha junto a tus aliados para expulsar a la Alia', 'nza de Costa Oscura.Frentes de batalla', '', 'llaBatalla por StromgardePatrullar¡Derrota monstruos poco comunes y fuerzas enemigas en las Tierras Altas de Arathi por la posibilidad de obtener recompensas especiales! Se ha abierto un portal a las Tierras Altas d', '', '', 29297),
(509, 1445, 'esES', '', '', '', '', '', '', 29297),
(535, 118529, 'esES', ' de infligir una gran cantidad de daño a las defensas enemigas.��&�$�\`Aportar |cFFFF202010|TINTERFACE\\ICONS\\INV_TRADESKILLITEM_01.BLP:15:15:5|tContribuye a la construcción de Talleres de la Peste.\n\nOtorga acceso a los Lanzañublos renegados, vehículos de asedio poderosos capaces de infligir una gran cantidad de daño a las defensas enemigas.Construir Talleres de la Peste', '', '', 'FF202010|TINTERFACE\\ICONS\\INV_INGOT_IRON.BLP:15:15:5|tContribuye a la construcción de Talleres de la Peste.\n\nOtorga acceso a los Lanzañublos renegados, vehículos de asedio poderosos capaces', '', '', 29297),
(535, 1716, 'esES', '', '', '', '', '', '', 29297),
(535, 1715, 'esES', '', '', '', '', '', '', 29297),
(540, 118529, 'esES', '1.BLP:15:15:5|tPoder rebosanteNo puedes controlar más de este poder.$�$��\'�Ofrecer |cFFFF20201 |TINTERFACE\\ICONS\\INV_MISC_LESSERESSENCE.BLP:15:15:0:0|t|hAbominaciónUna monstruosidad vil capaz de debilitar los ataques enemigos y potenciar la autosanación en grandes grupos de enemigos.&�$��\'�Ofrecer |cFFFF20201 |TINTERFACE\\ICONS\\INV_MISC_LESSERESSENCE.BLP:15:15:0:0|t|hAlma en penaUna manipulado', 'ra incorpórea de la magia capaz de infligir dolor a los enemigo', 's y restaurar salud a los aliados.(�$��\'@\`Ofrecer |cFFFF20201 |TINTERFACE\\ICONS\\INV_MISC_LESSERESSENCE.BLP:15:15:0:0|t|hPrototipo de MEKaritaUn prototipo de ataque a distancia poderoso con ataques devastadores contra un solo objetivo y contra varios objetivos. Y botas propulsoras.Obtener poder', 'FFFFFF10|TINTERFACE\\ICONS\\INV_INGOT_IRON.BLP:15:15:5|tPoder rebosanteNo puedes controlar más de este poder.����$��8Ofrecer |cFFFFFFFF10|TINTERFACE\\ICONS\\INV_TRADESKILLITEM_0', '', '', 29297),
(540, 1787, 'esES', '', '', '', '', '', '', 29297),
(539, 118529, 'esES', '$�@�Aportar |cFFFF202010|TINTERFACE\\ICONS\\INV_TRADESKILLITEM_01.BLP:15:15:5|tArmas de monalitaContribuye recursos para realizar la investigación y aumentar la fuerza de las tropas aliadas.�њ��!��Aportar |cFFFFFFFF10|TINTERFACE\\ICONS\\INV_INGOT_IRON.BLP:15:15:5|tArmaduras de plata de tormentaContribuye recursos para realizar la investigación y aumentar la fuerza de las tropas aliadas.�њ�$���', 'Aportar |cFFFF202010|TINTERFACE\\ICONS\\INV_TRADESKILLITEM_01.BLP:', '15:15:5|tArmaduras de plata de tormentaContribuye recursos para realizar la investigación y aumentar la fuerza de las tropas aliadas.Investigar mejoras', 'FFFFFF10|TINTERFACE\\ICONS\\INV_INGOT_IRON.BLP:15:15:5|tArmas de monalitaContribuye recursos para realizar la investigación y aumentar la fuerza de las tropas aliadas.�Ӛ�', '', '', 29297),
(539, 1739, 'esES', '', '', '', '', '', '', 29297),
(531, 1681, 'esES', '', '', '� �8Gastar |cFFFFFFFF20|TINTERFACE\\ICONS\\INV_INGOT_IRON.BLP:15:15:5|tGuardia de la muerteEl pilar de tu ejército. Atacan las ubicaciones enemigas y te ayudan a conquistar el campo de batalla.���\"��� ��pGastar |cFFFF202030|TINTERFACE\\ICONS\\INV_INGOT_IRON.BLP:15:15:5|tTiromortalAliados bien armados con ataque a dist', '', 'ancia capaces de infligir un gran daño.���\"��� ��Gastar |cFFFF202050|TINTERFACE\\ICONS\\INV_INGOT_IRON.BLP:15:15:5|tAlquimistaAlquimistas propagadores de añublo que portan bálsamos medicinales y pueden sanar a los aliados.���\"��� ��@Gastar |cFFFF202050|TINTERFACE\\ICONS\\INV_INGOT_IRON.BLP:15:15:5|tLanceroGuerreros con armadura pesada que emplean tácticas de combate sobre montura para aturdir e infligir grandes cantidades de daño.\n\n|cFFFF2020Requiere Depósito FresnoEntrenar tropas', '', 29297),
(540, 1784, 'esES', '', '', '', '', '', '', 29297),
(533, 118529, 'esES', 'FFFFF10|TINTERFACE\\ICONS\\INV_TRADESKILLITEM_01.BLP:15:15:5|tContribuye a la construcción del Bastión.\n\nAumenta la velocidad de entrega de recursos.Construir Bastión', '', '', 'FF202010|TINTERFACE\\ICONS\\INV_INGOT_IRON.BLP:15:15:5|tContribuye a la construcción del Bastión.\n\nAumenta la velocidad de entrega de recursos.��&�$��Aportar |cFFF', '', '', 29297),
(533, 1704, 'esES', '', '', '', '', '', '', 29297),
(537, 118529, 'esES', '�$�Aportar |cFFFFFFFF10|TINTERFACE\\ICONS\\INV_TRADESKILLITEM_01.BLP:15:15:5|tContribuye a la construcción de la Armería.\n\nOtorga acceso a investigaciones que aumentan el poder y la defensa de los aliados.Construir Armería', '', '', 'FF202010|TINTERFACE\\ICONS\\INV_INGOT_IRON.BLP:15:15:5|tContribuye a la construcción de la Armería.\n\nOtorga acceso a investigaciones que aumentan el poder y la defensa de los aliados.��&', '', '', 29297),
(537, 1728, 'esES', '', '', '', '', '', '', 29297),
(531, 1682, 'esES', '', '', '� �8Gastar |cFFFF202020|TINTERFACE\\ICONS\\INV_INGOT_IRON.BLP:15:15:5|tGuardia de la muerteEl pilar de tu ejército. Atacan las ubicaciones enemigas y te ayudan a conquistar el campo de batalla.���\"��� ��pGastar |cFFFF202030|TINTERFACE\\ICONS\\INV_INGOT_IRON.BLP:15:15:5|tTiromortalAliados bien armados con ataque a dist', '', 'ancia capaces de infligir un gran daño.���\"��� ��pGastar |cFFFF202050|TINTERFACE\\ICONS\\INV_INGOT_IRON.BLP:15:15:5|tAlquimistaAlquimistas propagadores de añublo que portan bálsamos medicinales y pueden sanar a los aliados.\n\n|cFFFF2020Requiere Playa Marea Penumbral���\"��� ��@Gastar |cFFFF202050|TINTERFACE\\ICONS\\INV_INGOT_IRON.BLP:15:15:5|tLanceroGuerreros con armadura pesada que emplean tácticas de combate sobre montura para aturdir e infligir grandes cantidades de daño.\n\n|cFFFF2020Requiere Depósito FresnoEntrenar tropas', '', 29297),
(529, 1670, 'esES', '', '', '', '', '', '', 29297),
(540, 1783, 'esES', '', '', '', '', '', '', 29297),
(537, 1727, 'esES', '', '', '', '', '', '', 29297);


DELETE FROM `scene_template` WHERE (`SceneId`=2214 AND `ScriptPackageID`=2471);
INSERT INTO `scene_template` (`SceneId`, `Flags`, `ScriptPackageID`) VALUES
(2214, 58, 2471);

DELETE FROM `quest_poi` WHERE (`QuestID`=51037 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=51037 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=51037 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=54100 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=54100 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=54061 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=54061 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=53039 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=53039 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=53039 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=53039 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=51165 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=51165 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=51165 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=49662 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=49662 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=50331 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=50331 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=50331 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=49064 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=49064 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=49064 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=49064 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=48480 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=48480 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=48480 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=44009 AND `BlobIndex`=0 AND `Idx1`=7) OR (`QuestID`=44009 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=44009 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=44009 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=44009 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=44009 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=44009 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=44009 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=42424 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=42424 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=42424 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=39983 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=39983 AND `BlobIndex`=2 AND `Idx1`=5) OR (`QuestID`=39983 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=39983 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=39983 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=39983 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=39983 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=37575 AND `BlobIndex`=5 AND `Idx1`=14) OR (`QuestID`=37575 AND `BlobIndex`=4 AND `Idx1`=13) OR (`QuestID`=37575 AND `BlobIndex`=3 AND `Idx1`=12) OR (`QuestID`=37575 AND `BlobIndex`=2 AND `Idx1`=11) OR (`QuestID`=37575 AND `BlobIndex`=1 AND `Idx1`=10) OR (`QuestID`=37575 AND `BlobIndex`=0 AND `Idx1`=9) OR (`QuestID`=37575 AND `BlobIndex`=5 AND `Idx1`=8) OR (`QuestID`=37575 AND `BlobIndex`=4 AND `Idx1`=7) OR (`QuestID`=37575 AND `BlobIndex`=3 AND `Idx1`=6) OR (`QuestID`=37575 AND `BlobIndex`=2 AND `Idx1`=5) OR (`QuestID`=37575 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=37575 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=37575 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=37575 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=37575 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=37570 AND `BlobIndex`=5 AND `Idx1`=14) OR (`QuestID`=37570 AND `BlobIndex`=4 AND `Idx1`=13) OR (`QuestID`=37570 AND `BlobIndex`=3 AND `Idx1`=12) OR (`QuestID`=37570 AND `BlobIndex`=2 AND `Idx1`=11) OR (`QuestID`=37570 AND `BlobIndex`=1 AND `Idx1`=10) OR (`QuestID`=37570 AND `BlobIndex`=0 AND `Idx1`=9) OR (`QuestID`=37570 AND `BlobIndex`=5 AND `Idx1`=8) OR (`QuestID`=37570 AND `BlobIndex`=4 AND `Idx1`=7) OR (`QuestID`=37570 AND `BlobIndex`=3 AND `Idx1`=6) OR (`QuestID`=37570 AND `BlobIndex`=2 AND `Idx1`=5) OR (`QuestID`=37570 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=37570 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=37570 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=37570 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=37570 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=836 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=836 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=836 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=51407 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=51407 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=49289 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=49289 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=49289 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=49289 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=49288 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=49288 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=49288 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=49287 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=49287 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=49287 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=49287 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=49287 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=49287 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=49286 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=49286 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=49286 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=49286 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=49285 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=49285 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=49285 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=49285 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=49285 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=49284 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=49284 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=49284 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=51098 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=51098 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=51157 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=51157 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=51181 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=51181 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=54658 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=54658 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=54658 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=54659 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=54659 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=54659 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=54659 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=54659 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=54657 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=54657 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=54657 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=54656 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=54656 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=54656 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=54661 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=54661 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=54661 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=54655 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=54655 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=54655 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=54655 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=54654 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=54654 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=54654 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=54654 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=54654 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=54654 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=54652 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=54652 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=54652 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=51330 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=51330 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=51096 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=51096 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=49013 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=49013 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=49013 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=52344 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=52344 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=51627 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=51627 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=50606 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=53955 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=53955 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=53955 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(51037, 1, 2, 32, 0, 0, 1642, 862, 0, 0, 0, 0, 1585382, 0, 29297), -- 51037
(51037, 0, 1, 32, 0, 0, 1642, 1165, 0, 0, 0, 0, 1585382, 0, 29297), -- 51037
(51037, 0, 0, -1, 0, 0, 1642, 1165, 0, 0, 0, 0, 1585382, 0, 29297), -- 51037
(54100, 0, 1, 32, 0, 0, 1, 85, 0, 0, 0, 0, 1668792, 0, 29297), -- 54100
(54100, 0, 0, -1, 0, 0, 0, 37, 0, 0, 0, 0, 1672299, 0, 29297), -- 54100
(54061, 0, 1, -1, 0, 0, 1642, 862, 0, 0, 0, 923, 1603266, 0, 29297), -- 54061
(54061, 0, 0, -1, 0, 0, 1643, 1161, 0, 0, 0, 924, 1603576, 0, 29297), -- 54061
(53039, 1, 3, 32, 0, 0, 1642, 1165, 0, 0, 0, 20069, 1627675, 0, 29297), -- 53039
(53039, 0, 2, 32, 0, 0, 1643, 1161, 0, 0, 0, 20068, 1627646, 0, 29297), -- 53039
(53039, 0, 1, -1, 0, 0, 1642, 1165, 0, 0, 0, 20069, 1627675, 0, 29297), -- 53039
(53039, 0, 0, -1, 0, 0, 1643, 1161, 0, 0, 0, 20068, 1627646, 0, 29297), -- 53039
(51165, 0, 2, 32, 0, 0, 1642, 864, 0, 0, 0, 0, 1492253, 0, 29297), -- 51165
(51165, 0, 1, 0, 334934, 136596, 1642, 864, 0, 0, 0, 0, 1491756, 0, 29297), -- 51165
(51165, 0, 0, -1, 0, 0, 1642, 864, 0, 0, 0, 0, 1405006, 0, 29297), -- 51165
(49662, 0, 1, 32, 0, 0, 1642, 864, 0, 0, 0, 0, 1406135, 0, 29297), -- 49662
(49662, 0, 0, -1, 0, 0, 1642, 864, 0, 0, 0, 0, 1510401, 0, 29297), -- 49662
(50331, 0, 2, 32, 0, 0, 1642, 862, 0, 0, 0, 0, 1410245, 0, 29297), -- 50331
(50331, 0, 1, 0, 335864, 71118, 1642, 862, 0, 0, 0, 0, 1506578, 0, 29297), -- 50331
(50331, 0, 0, -1, 0, 0, 1642, 862, 0, 0, 0, 0, 1507195, 0, 29297), -- 50331
(49064, 0, 3, 32, 0, 0, 1642, 863, 0, 0, 0, 0, 1395442, 0, 29297), -- 49064
(49064, 0, 2, 1, 293634, 128080, 1642, 863, 0, 0, 0, 0, 1395963, 0, 29297), -- 49064
(49064, 0, 1, 0, 293633, 127958, 1642, 863, 0, 0, 0, 0, 1395905, 0, 29297), -- 49064
(49064, 0, 0, -1, 0, 0, 1642, 863, 0, 0, 0, 0, 1395965, 0, 29297), -- 49064
(48480, 0, 2, 0, 292203, 126126, 1642, 863, 0, 0, 0, 0, 1363259, 0, 29297), -- 48480
(48480, 1, 1, -1, 0, 0, 1642, 863, 0, 0, 0, 0, 1363713, 0, 29297), -- 48480
(48480, 0, 0, -1, 0, 0, 1642, 863, 0, 0, 0, 0, 1361908, 0, 29297), -- 48480
(44009, 0, 7, 32, 0, 0, 1220, 627, 0, 2, 0, 0, 0, 0, 29297), -- 44009
(44009, 0, 6, 3, 286220, 140574, 1220, 680, 0, 0, 0, 0, 1232453, 0, 29297), -- 44009
(44009, 0, 5, 2, 286179, 112493, 1220, 680, 0, 2, 0, 0, 0, 0, 29297), -- 44009
(44009, 0, 4, 1, 286138, 112404, 1220, 680, 0, 2, 0, 0, 0, 0, 29297), -- 44009
(44009, 1, 3, 0, 286103, 112309, 1220, 627, 0, 0, 0, 0, 1050875, 0, 29297), -- 44009
(44009, 0, 2, 0, 286103, 112309, 1220, 680, 0, 2, 0, 0, 0, 0, 29297), -- 44009
(44009, 1, 1, -1, 0, 0, 1220, 627, 0, 2, 0, 38488, 0, 0, 29297), -- 44009
(44009, 0, 0, -1, 0, 0, 1220, 629, 0, 0, 0, 0, 1230214, 0, 29297), -- 44009
(42424, 0, 2, 32, 0, 0, 1220, 627, 0, 0, 0, 0, 1192662, 0, 29297), -- 42424
(42424, 0, 1, 0, 284338, 48393, 1513, 734, 0, 2, 0, 0, 0, 0, 29297), -- 42424
(42424, 0, 0, -1, 0, 0, 1513, 734, 0, 0, 0, 0, 1191891, 0, 29297), -- 42424
(39983, 0, 6, 32, 0, 0, 1220, 650, 0, 0, 0, 0, 1079692, 0, 29297), -- 39983
(39983, 2, 5, 31, 0, 0, 1220, 750, 0, 0, 0, 0, 1079692, 0, 29297), -- 39983
(39983, 1, 4, 31, 0, 0, 1220, 652, 0, 0, 0, 0, 1079692, 0, 29297), -- 39983
(39983, 0, 3, 31, 0, 0, 1220, 650, 0, 0, 0, 0, 1079692, 0, 29297), -- 39983
(39983, 0, 2, 1, 280137, 97796, 1515, 697, 0, 2, 0, 0, 0, 0, 29297), -- 39983
(39983, 0, 1, 0, 280397, 98825, 1220, 650, 0, 0, 0, 0, 1079692, 0, 29297), -- 39983
(39983, 0, 0, -1, 0, 0, 1515, 697, 0, 0, 0, 0, 1066386, 0, 29297), -- 39983
(37575, 5, 14, 0, 276487, 116841, 1116, 590, 0, 0, 0, 31126, 953669, 0, 29297), -- 37575
(37575, 4, 13, 0, 276487, 116841, 1116, 590, 0, 0, 0, 31126, 953669, 0, 29297), -- 37575
(37575, 3, 12, 0, 276487, 116841, 1116, 590, 0, 0, 0, 31126, 953669, 0, 29297), -- 37575
(37575, 2, 11, 0, 276487, 116841, 1116, 582, 0, 0, 0, 31125, 953666, 0, 29297), -- 37575
(37575, 1, 10, 0, 276487, 116841, 1116, 582, 0, 0, 0, 31125, 953666, 0, 29297), -- 37575
(37575, 0, 9, 0, 276487, 116841, 1116, 582, 0, 0, 0, 31125, 953667, 0, 29297), -- 37575
(37575, 5, 8, 0, 276486, 86113, 1116, 590, 0, 0, 0, 31126, 953669, 0, 29297), -- 37575
(37575, 4, 7, 0, 276486, 86113, 1116, 590, 0, 0, 0, 31126, 953669, 0, 29297), -- 37575
(37575, 3, 6, 0, 276486, 86113, 1116, 590, 0, 0, 0, 31126, 953669, 0, 29297), -- 37575
(37575, 2, 5, 0, 276486, 86113, 1116, 582, 0, 0, 0, 31125, 953666, 0, 29297), -- 37575
(37575, 1, 4, 0, 276486, 86113, 1116, 582, 0, 0, 0, 31125, 953666, 0, 29297), -- 37575
(37575, 0, 3, 0, 276486, 86113, 1116, 582, 0, 0, 0, 31125, 953667, 0, 29297), -- 37575
(37575, 2, 2, -1, 0, 0, 1116, 590, 0, 0, 0, 31126, 953669, 0, 29297), -- 37575
(37575, 1, 1, -1, 0, 0, 1116, 590, 0, 0, 0, 31126, 953669, 0, 29297), -- 37575
(37575, 0, 0, -1, 0, 0, 1116, 590, 0, 0, 0, 31126, 953669, 0, 29297), -- 37575
(37570, 5, 14, 0, 276477, 116844, 1116, 590, 0, 0, 0, 31126, 953669, 0, 29297), -- 37570
(37570, 4, 13, 0, 276477, 116844, 1116, 590, 0, 0, 0, 31126, 953669, 0, 29297), -- 37570
(37570, 3, 12, 0, 276477, 116844, 1116, 590, 0, 0, 0, 31126, 953669, 0, 29297), -- 37570
(37570, 2, 11, 0, 276477, 116844, 1116, 582, 0, 0, 0, 31125, 953666, 0, 29297), -- 37570
(37570, 1, 10, 0, 276477, 116844, 1116, 582, 0, 0, 0, 31125, 953666, 0, 29297), -- 37570
(37570, 0, 9, 0, 276477, 116844, 1116, 582, 0, 0, 0, 31125, 953667, 0, 29297), -- 37570
(37570, 5, 8, 0, 276476, 86116, 1116, 590, 0, 0, 0, 31126, 953669, 0, 29297), -- 37570
(37570, 4, 7, 0, 276476, 86116, 1116, 590, 0, 0, 0, 31126, 953669, 0, 29297), -- 37570
(37570, 3, 6, 0, 276476, 86116, 1116, 590, 0, 0, 0, 31126, 953669, 0, 29297), -- 37570
(37570, 2, 5, 0, 276476, 86116, 1116, 582, 0, 0, 0, 31125, 953666, 0, 29297), -- 37570
(37570, 1, 4, 0, 276476, 86116, 1116, 582, 0, 0, 0, 31125, 953666, 0, 29297), -- 37570
(37570, 0, 3, 0, 276476, 86116, 1116, 582, 0, 0, 0, 31125, 953667, 0, 29297), -- 37570
(37570, 2, 2, -1, 0, 0, 1116, 590, 0, 0, 0, 31126, 953669, 0, 29297), -- 37570
(37570, 1, 1, -1, 0, 0, 1116, 590, 0, 0, 0, 31126, 953669, 0, 29297), -- 37570
(37570, 0, 0, -1, 0, 0, 1116, 590, 0, 0, 0, 31126, 953669, 0, 29297), -- 37570
(836, 0, 2, 32, 0, 0, 0, 26, 0, 0, 0, 0, 84386, 0, 29297), -- 836
(836, 0, 1, 30, 0, 0, 0, 26, 0, 7, 0, 0, 0, 0, 29297), -- 836
(836, 0, 0, -1, 0, 0, 0, 224, 0, 1, 0, 0, 0, 0, 29297), -- 836
(51407, 0, 1, 32, 0, 0, 1642, 862, 0, 0, 0, 0, 1401900, 0, 29297), -- 51407
(51407, 0, 0, -1, 0, 0, 1642, 862, 0, 0, 0, 0, 1410245, 0, 29297), -- 51407
(49289, 0, 3, 32, 0, 0, 1642, 862, 0, 0, 0, 0, 1401900, 0, 29297), -- 49289
(49289, 0, 2, 1, 312257, 157554, 1642, 862, 0, 0, 0, 0, 1504754, 0, 29297), -- 49289
(49289, 0, 1, 0, 294180, 157543, 1642, 862, 0, 0, 0, 0, 1403184, 0, 29297), -- 49289
(49289, 0, 0, -1, 0, 0, 1642, 862, 0, 0, 0, 0, 1401900, 0, 29297), -- 49289
(49288, 0, 2, 32, 0, 0, 1642, 862, 0, 0, 0, 0, 1401861, 0, 29297), -- 49288
(49288, 0, 1, 0, 294217, 153022, 1642, 862, 0, 0, 0, 0, 0, 0, 29297), -- 49288
(49288, 0, 0, -1, 0, 0, 1642, 862, 0, 0, 0, 0, 1401900, 0, 29297), -- 49288
(49287, 0, 5, 32, 0, 0, 1642, 862, 0, 0, 0, 0, 1401861, 0, 29297), -- 49287
(49287, 0, 4, 3, 312102, 129709, 1642, 862, 0, 0, 0, 0, 1408451, 0, 29297), -- 49287
(49287, 0, 3, 2, 312101, 129710, 1642, 862, 0, 0, 0, 0, 1405237, 0, 29297), -- 49287
(49287, 0, 2, 1, 312100, 129708, 1642, 862, 0, 0, 0, 0, 1405228, 0, 29297), -- 49287
(49287, 0, 1, 0, 294176, 129712, 1642, 862, 0, 0, 0, 0, 1405233, 0, 29297), -- 49287
(49287, 0, 0, -1, 0, 0, 1642, 862, 0, 0, 0, 0, 1401900, 0, 29297), -- 49287
(49286, 0, 3, 32, 0, 0, 1642, 862, 0, 0, 0, 0, 1401861, 0, 29297), -- 49286
(49286, 0, 2, 1, 334478, 128889, 1642, 862, 0, 0, 0, 0, 1401861, 0, 29297), -- 49286
(49286, 0, 1, 0, 294174, 154708, 1642, 862, 0, 0, 0, 0, 1401923, 0, 29297), -- 49286
(49286, 0, 0, -1, 0, 0, 1642, 862, 0, 0, 0, 0, 1401861, 0, 29297), -- 49286
(49285, 0, 4, 32, 0, 0, 1642, 862, 0, 0, 0, 0, 1454704, 0, 29297), -- 49285
(49285, 0, 3, 2, 294194, 156869, 1642, 862, 0, 0, 0, 0, 1406118, 0, 29297), -- 49285
(49285, 0, 2, 1, 294193, 156866, 1642, 862, 0, 0, 0, 0, 1406366, 0, 29297), -- 49285
(49285, 0, 1, 0, 294192, 156865, 1642, 862, 0, 0, 0, 0, 1406368, 0, 29297), -- 49285
(49285, 0, 0, -1, 0, 0, 1642, 862, 0, 0, 0, 0, 1457182, 0, 29297), -- 49285
(49284, 0, 2, 32, 0, 0, 1642, 862, 0, 0, 0, 0, 1409321, 0, 29297), -- 49284
(49284, 0, 1, 31, 0, 0, 1642, 862, 0, 2, 0, 0, 0, 0, 29297), -- 49284
(49284, 0, 0, -1, 0, 0, 1642, 862, 0, 0, 0, 0, 1401861, 0, 29297), -- 49284
(51098, 0, 1, 32, 0, 0, 1642, 864, 0, 2, 0, 0, 0, 0, 29297), -- 51098
(51098, 0, 0, 0, 334747, 124722, 1642, 864, 0, 0, 0, 0, 1347452, 0, 29297), -- 51098
(51157, 0, 1, 32, 0, 0, 1642, 864, 0, 2, 0, 0, 0, 0, 29297), -- 51157
(51157, 0, 0, 0, 334883, 129027, 1642, 864, 0, 0, 0, 0, 1489021, 0, 29297), -- 51157
(51181, 0, 1, 32, 0, 0, 1642, 864, 0, 2, 0, 0, 0, 0, 29297), -- 51181
(51181, 0, 0, 0, 335045, 124016, 1642, 864, 0, 2, 0, 0, 0, 0, 29297), -- 51181
(54658, 0, 2, 32, 0, 0, 2111, 1332, 0, 2, 0, 0, 0, 0, 29297), -- 54658
(54658, 0, 1, 0, 387900, 149208, 2111, 1332, 0, 0, 0, 0, 1668463, 0, 29297), -- 54658
(54658, 0, 0, -1, 0, 0, 2111, 1332, 0, 0, 0, 0, 1689206, 0, 29297), -- 54658
(54659, 0, 4, 32, 0, 0, 2111, 1332, 0, 0, 0, 0, 1689203, 0, 29297), -- 54659
(54659, 0, 3, 1, 387904, 148586, 2111, 1332, 0, 0, 0, 0, 1667076, 0, 29297), -- 54659
(54659, 0, 2, 0, 387903, 72108, 2111, 1332, 0, 2, 0, 0, 0, 0, 29297), -- 54659
(54659, 0, 1, -1, 0, 0, 2111, 1332, 0, 0, 0, 0, 1689203, 0, 29297), -- 54659
(54659, 0, 0, -1, 0, 0, 2111, 1332, 0, 0, 0, 0, 1716521, 0, 29297), -- 54659
(54657, 0, 2, 32, 0, 0, 2111, 1332, 0, 2, 0, 0, 0, 0, 29297), -- 54657
(54657, 0, 1, 0, 387898, 146586, 2111, 1332, 0, 0, 0, 0, 1668460, 0, 29297), -- 54657
(54657, 0, 0, -1, 0, 0, 2111, 1332, 0, 0, 0, 0, 1689206, 0, 29297), -- 54657
(54656, 0, 2, 1, 387896, 148654, 2111, 1332, 0, 0, 0, 0, 1711232, 0, 29297), -- 54656
(54656, 0, 1, 0, 387895, 72105, 2111, 1332, 0, 2, 0, 0, 0, 0, 29297), -- 54656
(54656, 0, 0, -1, 0, 0, 2111, 1332, 0, 0, 0, 0, 1689208, 0, 29297), -- 54656
(54661, 1, 2, 32, 0, 0, 2105, 1203, 0, 0, 0, 0, 1646443, 0, 29297), -- 54661
(54661, 0, 1, 32, 0, 0, 2111, 1332, 0, 0, 0, 0, 1667102, 0, 29297), -- 54661
(54661, 0, 0, -1, 0, 0, 2111, 1332, 0, 2, 0, 0, 0, 0, 29297), -- 54661
(54655, 0, 3, 32, 0, 0, 2111, 1332, 0, 2, 0, 0, 0, 0, 29297), -- 54655
(54655, 0, 2, 1, 387892, 148974, 2111, 1332, 0, 0, 0, 0, 1713901, 0, 29297), -- 54655
(54655, 0, 1, 0, 388242, 166713, 2111, 1332, 0, 0, 0, 0, 1716574, 0, 29297), -- 54655
(54655, 0, 0, -1, 0, 0, 2111, 1332, 0, 0, 0, 0, 1689208, 0, 29297), -- 54655
(54654, 0, 5, 32, 0, 0, 2111, 1332, 0, 2, 0, 0, 0, 0, 29297), -- 54654
(54654, 0, 4, 2, 387888, 148635, 2111, 1332, 0, 0, 0, 0, 0, 0, 29297), -- 54654
(54654, 0, 3, 1, 387887, 72093, 2111, 1332, 0, 2, 0, 0, 0, 0, 29297), -- 54654
(54654, 0, 2, 0, 388368, 166773, 2111, 1332, 0, 0, 0, 0, 1718647, 0, 29297), -- 54654
(54654, 0, 1, -1, 0, 0, 2111, 1332, 0, 0, 0, 0, 1689208, 0, 29297), -- 54654
(54654, 0, 0, -1, 0, 0, 2111, 1332, 0, 0, 0, 0, 1667090, 0, 29297), -- 54654
(54652, 0, 2, 32, 0, 0, 2111, 1332, 0, 2, 0, 0, 0, 0, 29297), -- 54652
(54652, 0, 1, 0, 387880, 148040, 2111, 1332, 0, 0, 0, 0, 1710595, 0, 29297), -- 54652
(54652, 0, 0, -1, 0, 0, 2111, 1332, 0, 2, 0, 0, 0, 0, 29297), -- 54652
(51330, 0, 1, 32, 0, 0, 1642, 864, 0, 2, 0, 0, 0, 0, 29297), -- 51330
(51330, 0, 0, 0, 335416, 159909, 1642, 864, 0, 2, 0, 0, 0, 0, 29297), -- 51330
(51096, 0, 1, 32, 0, 0, 1642, 864, 0, 2, 0, 0, 0, 0, 29297), -- 51096
(51096, 0, 0, 0, 334743, 128553, 1642, 864, 0, 0, 0, 0, 1399360, 0, 29297), -- 51096
(49013, 0, 2, 32, 0, 0, 1642, 864, 0, 2, 0, 0, 0, 0, 29297), -- 49013
(49013, 0, 1, 1, 337139, 133565, 1642, 864, 0, 0, 0, 0, 0, 0, 29297), -- 49013
(49013, 0, 0, 0, 293496, 134743, 1642, 864, 0, 0, 0, 0, 0, 0, 29297), -- 49013
(52344, 0, 1, 32, 0, 0, 1643, 942, 0, 2, 0, 0, 0, 0, 29297), -- 52344
(52344, 0, 0, -1, 0, 0, 1643, 942, 0, 0, 0, 0, 1483872, 0, 29297), -- 52344
(51627, 0, 1, 32, 0, 0, 1643, 942, 0, 0, 0, 0, 1521711, 0, 29297), -- 51627
(51627, 0, 0, 0, 336548, 144351, 1643, 942, 0, 0, 0, 0, 1522491, 0, 29297), -- 51627
(50606, 0, 0, -1, 0, 0, 1642, 862, 0, 0, 0, 0, 1480298, 0, 29297), -- 50606
(53955, 0, 2, 32, 0, 0, 1642, 1165, 0, 0, 0, 0, 1601628, 0, 29297), -- 53955
(53955, 0, 1, 0, 385222, 131752, 1642, 1165, 0, 0, 0, 0, 1601623, 0, 29297), -- 53955
(53955, 0, 0, -1, 0, 0, 1642, 1165, 0, 0, 0, 0, 1601628, 0, 29297); -- 53955

DELETE FROM `quest_poi_points` WHERE (`QuestID`=51037 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=51037 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=51037 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=54100 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=54100 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=54061 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=54061 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=53039 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=53039 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=53039 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=53039 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=51165 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=51165 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=51165 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=49662 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=49662 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=50331 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=50331 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=50331 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=49064 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=49064 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=49064 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=49064 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=48480 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=48480 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=48480 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=44009 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=44009 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=44009 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=44009 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=44009 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=44009 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=44009 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=44009 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=42424 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=42424 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=42424 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=39983 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=39983 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=39983 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=39983 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=39983 AND `Idx1`=2 AND `Idx2`=11) OR (`QuestID`=39983 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=39983 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=39983 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=39983 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=39983 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=39983 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=39983 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=39983 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=39983 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=39983 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=39983 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=39983 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=39983 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=37575 AND `Idx1`=14 AND `Idx2`=0) OR (`QuestID`=37575 AND `Idx1`=13 AND `Idx2`=0) OR (`QuestID`=37575 AND `Idx1`=12 AND `Idx2`=0) OR (`QuestID`=37575 AND `Idx1`=11 AND `Idx2`=0) OR (`QuestID`=37575 AND `Idx1`=10 AND `Idx2`=0) OR (`QuestID`=37575 AND `Idx1`=9 AND `Idx2`=0) OR (`QuestID`=37575 AND `Idx1`=8 AND `Idx2`=0) OR (`QuestID`=37575 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=37575 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=37575 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=37575 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=37575 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=37575 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=37575 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=37575 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=37570 AND `Idx1`=14 AND `Idx2`=0) OR (`QuestID`=37570 AND `Idx1`=13 AND `Idx2`=0) OR (`QuestID`=37570 AND `Idx1`=12 AND `Idx2`=0) OR (`QuestID`=37570 AND `Idx1`=11 AND `Idx2`=0) OR (`QuestID`=37570 AND `Idx1`=10 AND `Idx2`=0) OR (`QuestID`=37570 AND `Idx1`=9 AND `Idx2`=0) OR (`QuestID`=37570 AND `Idx1`=8 AND `Idx2`=0) OR (`QuestID`=37570 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=37570 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=37570 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=37570 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=37570 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=37570 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=37570 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=37570 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=836 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=836 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=836 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=51407 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=51407 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=49289 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=49289 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=49289 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=49289 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=49288 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=49288 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=49288 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=49288 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=49288 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=49288 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=49288 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=49288 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=49288 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=49288 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=49288 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=49288 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=49287 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=49287 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=49287 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=49287 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=49287 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=49287 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=49286 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=49286 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=49286 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=49286 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=49285 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=49285 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=49285 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=49285 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=49285 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=49284 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=49284 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=49284 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=49284 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=49284 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=49284 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=49284 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=49284 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=49284 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=49284 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=49284 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=49284 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=49284 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=49284 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=51098 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=51098 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=51157 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=51157 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=51181 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=51181 AND `Idx1`=0 AND `Idx2`=11) OR (`QuestID`=51181 AND `Idx1`=0 AND `Idx2`=10) OR (`QuestID`=51181 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=51181 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=51181 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=51181 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=51181 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=51181 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=51181 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=51181 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=51181 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=51181 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=54658 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=54658 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=54658 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=54659 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=54659 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=54659 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=54659 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=54659 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=54657 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=54657 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=54657 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=54656 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=54656 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=54656 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=54661 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=54661 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=54661 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=54655 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=54655 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=54655 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=54655 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=54654 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=54654 AND `Idx1`=4 AND `Idx2`=3) OR (`QuestID`=54654 AND `Idx1`=4 AND `Idx2`=2) OR (`QuestID`=54654 AND `Idx1`=4 AND `Idx2`=1) OR (`QuestID`=54654 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=54654 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=54654 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=54654 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=54654 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=54652 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=54652 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=54652 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=51330 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=51330 AND `Idx1`=0 AND `Idx2`=11) OR (`QuestID`=51330 AND `Idx1`=0 AND `Idx2`=10) OR (`QuestID`=51330 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=51330 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=51330 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=51330 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=51330 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=51330 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=51330 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=51330 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=51330 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=51330 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=51096 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=51096 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=49013 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=49013 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=49013 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=49013 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=49013 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=49013 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=49013 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=49013 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=49013 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=49013 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=49013 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=49013 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=49013 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=49013 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=49013 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=49013 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=49013 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=52344 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=52344 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=51627 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=51627 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=50606 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=53955 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=53955 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=53955 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES
(51037, 2, 0, -868, 965, 29297), -- 51037
(51037, 1, 0, -867, 965, 29297), -- 51037
(51037, 0, 0, -867, 965, 29297), -- 51037
(54100, 1, 0, 1662, -4347, 29297), -- 54100
(54100, 0, 0, -9274, 474, 29297), -- 54100
(54061, 1, 0, -1906, 1340, 29297), -- 54061
(54061, 0, 0, 1049, -280, 29297), -- 54061
(53039, 3, 0, -1925, 617, 29297), -- 53039
(53039, 2, 0, 1164, -596, 29297), -- 53039
(53039, 1, 0, -1925, 617, 29297), -- 53039
(53039, 0, 0, 1164, -596, 29297), -- 53039
(51165, 2, 0, 1942, 4851, 29297), -- 51165
(51165, 1, 0, 2242, 3802, 29297), -- 51165
(51165, 0, 0, 1920, 4806, 29297), -- 51165
(49662, 1, 0, 1950, 4842, 29297), -- 49662
(49662, 0, 0, 2715, 3766, 29297), -- 49662
(50331, 2, 0, -2282, -262, 29297), -- 50331
(50331, 1, 0, -2399, -170, 29297), -- 50331
(50331, 0, 0, -1204, -1176, 29297), -- 50331
(49064, 3, 0, 1981, 1364, 29297), -- 49064
(49064, 2, 0, 2535, 523, 29297), -- 49064
(49064, 1, 0, 2147, 523, 29297), -- 49064
(49064, 0, 0, 2593, 475, 29297), -- 49064
(48480, 2, 0, 1513, 1252, 29297), -- 48480
(48480, 1, 0, 1429, 1401, 29297), -- 48480
(48480, 0, 0, 1402, 1394, 29297), -- 48480
(44009, 7, 0, -846, 4625, 29297), -- 44009
(44009, 6, 0, 958, 1417, 29297), -- 44009
(44009, 5, 0, 956, 1426, 29297), -- 44009
(44009, 4, 0, 1201, 1544, 29297), -- 44009
(44009, 3, 0, -864, 4298, 29297), -- 44009
(44009, 2, 0, 1156, 1751, 29297), -- 44009
(44009, 1, 0, -845, 4467, 29297), -- 44009
(44009, 0, 0, -805, 4517, 29297), -- 44009
(42424, 2, 0, -886, 4690, 29297), -- 42424
(42424, 1, 0, -882, 4629, 29297), -- 42424
(42424, 0, 0, -886, 4631, 29297), -- 42424
(39983, 6, 0, 4057, 4320, 29297), -- 39983
(39983, 5, 0, 4057, 4320, 29297), -- 39983
(39983, 4, 0, 4057, 4320, 29297), -- 39983
(39983, 3, 0, 4057, 4320, 29297), -- 39983
(39983, 2, 11, 3916, -5385, 29297), -- 39983
(39983, 2, 10, 3790, -5192, 29297), -- 39983
(39983, 2, 9, 3746, -5109, 29297), -- 39983
(39983, 2, 8, 3751, -5065, 29297), -- 39983
(39983, 2, 7, 3805, -5026, 29297), -- 39983
(39983, 2, 6, 3848, -4973, 29297), -- 39983
(39983, 2, 5, 3984, -4939, 29297), -- 39983
(39983, 2, 4, 4032, -5017, 29297), -- 39983
(39983, 2, 3, 4115, -5293, 29297), -- 39983
(39983, 2, 2, 4115, -5376, 29297), -- 39983
(39983, 2, 1, 4071, -5419, 29297), -- 39983
(39983, 2, 0, 3969, -5453, 29297), -- 39983
(39983, 1, 0, 4057, 4320, 29297), -- 39983
(39983, 0, 0, 3935, -4996, 29297), -- 39983
(37575, 14, 0, 5642, 4533, 29297), -- 37575
(37575, 13, 0, 5642, 4533, 29297), -- 37575
(37575, 12, 0, 5642, 4533, 29297), -- 37575
(37575, 11, 0, 1867, 247, 29297), -- 37575
(37575, 10, 0, 1867, 247, 29297), -- 37575
(37575, 9, 0, 1867, 247, 29297), -- 37575
(37575, 8, 0, 5642, 4533, 29297), -- 37575
(37575, 7, 0, 5642, 4533, 29297), -- 37575
(37575, 6, 0, 5642, 4533, 29297), -- 37575
(37575, 5, 0, 1867, 247, 29297), -- 37575
(37575, 4, 0, 1867, 247, 29297), -- 37575
(37575, 3, 0, 1867, 247, 29297), -- 37575
(37575, 2, 0, 5642, 4533, 29297), -- 37575
(37575, 1, 0, 5642, 4533, 29297), -- 37575
(37575, 0, 0, 5642, 4533, 29297), -- 37575
(37570, 14, 0, 5642, 4533, 29297), -- 37570
(37570, 13, 0, 5642, 4533, 29297), -- 37570
(37570, 12, 0, 5642, 4533, 29297), -- 37570
(37570, 11, 0, 1867, 247, 29297), -- 37570
(37570, 10, 0, 1867, 247, 29297), -- 37570
(37570, 9, 0, 1867, 247, 29297), -- 37570
(37570, 8, 0, 5642, 4533, 29297), -- 37570
(37570, 7, 0, 5642, 4533, 29297), -- 37570
(37570, 6, 0, 5642, 4533, 29297), -- 37570
(37570, 5, 0, 1867, 247, 29297), -- 37570
(37570, 4, 0, 1867, 247, 29297), -- 37570
(37570, 3, 0, 1867, 247, 29297), -- 37570
(37570, 2, 0, 5642, 4533, 29297), -- 37570
(37570, 1, 0, 5642, 4533, 29297), -- 37570
(37570, 0, 0, 5642, 4533, 29297), -- 37570
(836, 2, 0, 500, -3475, 29297), -- 836
(836, 1, 0, 175, -3814, 29297), -- 836
(836, 0, 0, -14417, 411, 29297), -- 836
(51407, 1, 0, -2093, -659, 29297), -- 51407
(51407, 0, 0, -2281, -262, 29297), -- 51407
(49289, 3, 0, -2093, -659, 29297), -- 49289
(49289, 2, 0, -2085, -780, 29297), -- 49289
(49289, 1, 0, -2067, -801, 29297), -- 49289
(49289, 0, 0, -2093, -659, 29297), -- 49289
(49288, 2, 0, -2049, -531, 29297), -- 49288
(49288, 1, 9, -2336, -845, 29297), -- 49288
(49288, 1, 8, -2421, -783, 29297), -- 49288
(49288, 1, 7, -2414, -630, 29297), -- 49288
(49288, 1, 6, -2383, -585, 29297), -- 49288
(49288, 1, 5, -2368, -568, 29297), -- 49288
(49288, 1, 4, -2337, -559, 29297), -- 49288
(49288, 1, 3, -2288, -577, 29297), -- 49288
(49288, 1, 2, -2228, -751, 29297), -- 49288
(49288, 1, 1, -2225, -854, 29297), -- 49288
(49288, 1, 0, -2248, -882, 29297), -- 49288
(49288, 0, 0, -2094, -656, 29297), -- 49288
(49287, 5, 0, -2061, -526, 29297), -- 49287
(49287, 4, 0, -2249, -834, 29297), -- 49287
(49287, 3, 0, -2370, -813, 29297), -- 49287
(49287, 2, 0, -2376, -651, 29297), -- 49287
(49287, 1, 0, -2337, -547, 29297), -- 49287
(49287, 0, 0, -2093, -659, 29297), -- 49287
(49286, 3, 0, -2061, -527, 29297), -- 49286
(49286, 2, 0, -2061, -527, 29297), -- 49286
(49286, 1, 0, -1989, -607, 29297), -- 49286
(49286, 0, 0, -2061, -527, 29297), -- 49286
(49285, 4, 0, -2292, -239, 29297), -- 49285
(49285, 3, 0, -2279, -478, 29297), -- 49285
(49285, 2, 0, -2413, -485, 29297), -- 49285
(49285, 1, 0, -2240, -356, 29297), -- 49285
(49285, 0, 0, -2061, -526, 29297), -- 49285
(49284, 2, 0, -2297, -257, 29297), -- 49284
(49284, 1, 11, -2160, -567, 29297), -- 49284
(49284, 1, 10, -2178, -544, 29297), -- 49284
(49284, 1, 9, -2245, -438, 29297), -- 49284
(49284, 1, 8, -2267, -399, 29297), -- 49284
(49284, 1, 7, -2278, -371, 29297), -- 49284
(49284, 1, 6, -2278, -320, 29297), -- 49284
(49284, 1, 5, -2256, -298, 29297), -- 49284
(49284, 1, 4, -2222, -303, 29297), -- 49284
(49284, 1, 3, -2049, -510, 29297), -- 49284
(49284, 1, 2, -2071, -561, 29297), -- 49284
(49284, 1, 1, -2099, -583, 29297), -- 49284
(49284, 1, 0, -2138, -589, 29297), -- 49284
(49284, 0, 0, -2061, -526, 29297), -- 49284
(51098, 1, 0, 157, 3793, 29297), -- 51098
(51098, 0, 0, 155, 3793, 29297), -- 51098
(51157, 1, 0, 3958, 2637, 29297), -- 51157
(51157, 0, 0, 3948, 2631, 29297), -- 51157
(51181, 1, 0, 2457, 2692, 29297), -- 51181
(51181, 0, 11, 2473, 2434, 29297), -- 51181
(51181, 0, 10, 2402, 2460, 29297), -- 51181
(51181, 0, 9, 2356, 2581, 29297), -- 51181
(51181, 0, 8, 2341, 2672, 29297), -- 51181
(51181, 0, 7, 2331, 2813, 29297), -- 51181
(51181, 0, 6, 2331, 2880, 29297), -- 51181
(51181, 0, 5, 2407, 2951, 29297), -- 51181
(51181, 0, 4, 2509, 2911, 29297), -- 51181
(51181, 0, 3, 2554, 2840, 29297), -- 51181
(51181, 0, 2, 2595, 2703, 29297), -- 51181
(51181, 0, 1, 2600, 2591, 29297), -- 51181
(51181, 0, 0, 2559, 2455, 29297), -- 51181
(54658, 2, 0, 6690, -19, 29297), -- 54658
(54658, 1, 0, 6716, 15, 29297), -- 54658
(54658, 0, 0, 6681, -42, 29297), -- 54658
(54659, 4, 0, 6661, -50, 29297), -- 54659
(54659, 3, 0, 6883, 124, 29297), -- 54659
(54659, 2, 0, 6885, 126, 29297), -- 54659
(54659, 1, 0, 6661, -50, 29297), -- 54659
(54659, 0, 0, 6888, 145, 29297), -- 54659
(54657, 2, 0, 6688, -16, 29297), -- 54657
(54657, 1, 0, 6738, -46, 29297), -- 54657
(54657, 0, 0, 6680, -45, 29297), -- 54657
(54656, 2, 0, 6655, 11, 29297), -- 54656
(54656, 1, 0, 6647, -6, 29297), -- 54656
(54656, 0, 0, 6716, -27, 29297), -- 54656
(54661, 2, 0, 7165, 33, 29297), -- 54661
(54661, 1, 0, 7165, 34, 29297), -- 54661
(54661, 0, 0, 6721, -3, 29297), -- 54661
(54655, 3, 0, 6710, -25, 29297), -- 54655
(54655, 2, 0, 6731, -118, 29297), -- 54655
(54655, 1, 0, 6718, -69, 29297), -- 54655
(54655, 0, 0, 6711, -23, 29297), -- 54655
(54654, 5, 0, 6704, -22, 29297), -- 54654
(54654, 4, 3, 6511, -159, 29297), -- 54654
(54654, 4, 2, 6546, -113, 29297), -- 54654
(54654, 4, 1, 6560, -152, 29297), -- 54654
(54654, 4, 0, 6522, -169, 29297), -- 54654
(54654, 3, 0, 6543, -174, 29297), -- 54654
(54654, 2, 0, 6713, -67, 29297), -- 54654
(54654, 1, 0, 6716, -27, 29297), -- 54654
(54654, 0, 0, 6538, -176, 29297), -- 54654
(54652, 2, 0, 6707, -22, 29297), -- 54652
(54652, 1, 0, 6690, -27, 29297), -- 54652
(54652, 0, 0, 6711, -24, 29297), -- 54652
(51330, 1, 0, 655, 3723, 29297), -- 51330
(51330, 0, 11, 626, 3558, 29297), -- 51330
(51330, 0, 10, 584, 3809, 29297), -- 51330
(51330, 0, 9, 593, 3842, 29297), -- 51330
(51330, 0, 8, 635, 3875, 29297), -- 51330
(51330, 0, 7, 689, 3870, 29297), -- 51330
(51330, 0, 6, 703, 3851, 29297), -- 51330
(51330, 0, 5, 716, 3785, 29297), -- 51330
(51330, 0, 4, 722, 3715, 29297), -- 51330
(51330, 0, 3, 722, 3662, 29297), -- 51330
(51330, 0, 2, 722, 3591, 29297), -- 51330
(51330, 0, 1, 708, 3549, 29297), -- 51330
(51330, 0, 0, 679, 3501, 29297), -- 51330
(51096, 1, 0, 290, 3351, 29297), -- 51096
(51096, 0, 0, 294, 3350, 29297), -- 51096
(49013, 2, 0, 381, 2976, 29297), -- 49013
(49013, 1, 9, 307, 2958, 29297), -- 49013
(49013, 1, 8, 307, 2970, 29297), -- 49013
(49013, 1, 7, 307, 2987, 29297), -- 49013
(49013, 1, 6, 311, 3006, 29297), -- 49013
(49013, 1, 5, 337, 3026, 29297), -- 49013
(49013, 1, 4, 404, 3055, 29297), -- 49013
(49013, 1, 3, 440, 3041, 29297), -- 49013
(49013, 1, 2, 463, 3030, 29297), -- 49013
(49013, 1, 1, 549, 2902, 29297), -- 49013
(49013, 1, 0, 505, 2872, 29297), -- 49013
(49013, 0, 5, 280, 2959, 29297), -- 49013
(49013, 0, 4, 307, 3041, 29297), -- 49013
(49013, 0, 3, 436, 3033, 29297), -- 49013
(49013, 0, 2, 493, 2993, 29297), -- 49013
(49013, 0, 1, 512, 2902, 29297), -- 49013
(49013, 0, 0, 500, 2869, 29297), -- 49013
(52344, 1, 0, 3778, 1032, 29297), -- 52344
(52344, 0, 0, 3785, 1042, 29297), -- 52344
(51627, 1, 0, 3862, 1053, 29297), -- 51627
(51627, 0, 0, 3866, 1052, 29297), -- 51627
(50606, 0, 0, -2154, 795, 29297), -- 50606
(53955, 2, 0, -2036, 720, 29297), -- 53955
(53955, 1, 0, -2034, 723, 29297), -- 53955
(53955, 0, 0, -2036, 720, 29297); -- 53955

DELETE FROM `quest_details` WHERE `ID` IN (50331 /*50331*/, 51407 /*51407*/, 49289 /*49289*/, 49288 /*49288*/, 49287 /*49287*/, 49286 /*49286*/, 54658 /*54658*/, 54659 /*54659*/, 54657 /*54657*/, 54656 /*54656*/, 54661 /*54661*/, 54655 /*54655*/, 54654 /*54654*/, 54652 /*54652*/, 50417 /*50417*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(50331, 1, 0, 0, 0, 0, 0, 0, 0, 29297), -- 50331
(51407, 1, 0, 0, 0, 0, 0, 0, 0, 29297), -- 51407
(49289, 1, 0, 0, 0, 0, 0, 0, 0, 29297), -- 49289
(49288, 1, 0, 0, 0, 0, 0, 0, 0, 29297), -- 49288
(49287, 1, 0, 0, 0, 0, 0, 0, 0, 29297), -- 49287
(49286, 1, 0, 0, 0, 0, 0, 0, 0, 29297), -- 49286
(54658, 1, 1, 0, 0, 0, 0, 0, 0, 29297), -- 54658
(54659, 1, 1, 0, 0, 0, 0, 0, 0, 29297), -- 54659
(54657, 1, 1, 0, 0, 0, 0, 0, 0, 29297), -- 54657
(54656, 1, 1, 0, 0, 0, 0, 0, 0, 29297), -- 54656
(54661, 1, 1, 0, 0, 0, 0, 0, 0, 29297), -- 54661
(54655, 1, 1, 0, 0, 0, 0, 0, 0, 29297), -- 54655
(54654, 1, 1, 0, 0, 0, 0, 0, 0, 29297), -- 54654
(54652, 1, 1, 0, 0, 0, 0, 0, 0, 29297), -- 54652
(50417, 0, 0, 0, 0, 0, 0, 0, 0, 29297); -- 50417

DELETE FROM `playerchoice` WHERE `ChoiceId` IN (509, 535, 533, 537, 529);
INSERT INTO `playerchoice` (`ChoiceId`, `UiTextureKitId`, `SoundKitId`, `Question`, `HideWarboardHeader`, `KeepOpenAfterChoice`, `VerifiedBuild`) VALUES
(509, 262, 0, '', 0, 0, 29297),
(535, 262, 0, '', 0, 1, 29297),
(533, 262, 0, '', 0, 1, 29297),
(537, 262, 0, '', 0, 1, 29297),
(529, 262, 0, '� �hGastar |cFFFFFFFF8', 0, 0, 29297);

DELETE FROM `playerchoice_response` WHERE (`ChoiceId`=509 AND `ResponseId`=0 AND `Index`=1) OR (`ChoiceId`=509 AND `ResponseId`=1445 AND `Index`=0) OR (`ChoiceId`=535 AND `ResponseId`=118529 AND `Index`=1) OR (`ChoiceId`=535 AND `ResponseId`=1716 AND `Index`=0) OR (`ChoiceId`=535 AND `ResponseId`=1715 AND `Index`=0) OR (`ChoiceId`=540 AND `ResponseId`=118529 AND `Index`=1) OR (`ChoiceId`=540 AND `ResponseId`=1787 AND `Index`=0) OR (`ChoiceId`=539 AND `ResponseId`=118529 AND `Index`=1) OR (`ChoiceId`=539 AND `ResponseId`=1739 AND `Index`=0) OR (`ChoiceId`=531 AND `ResponseId`=1681 AND `Index`=0) OR (`ChoiceId`=540 AND `ResponseId`=1784 AND `Index`=0) OR (`ChoiceId`=533 AND `ResponseId`=118529 AND `Index`=1) OR (`ChoiceId`=533 AND `ResponseId`=1704 AND `Index`=0) OR (`ChoiceId`=537 AND `ResponseId`=118529 AND `Index`=1) OR (`ChoiceId`=537 AND `ResponseId`=1728 AND `Index`=0) OR (`ChoiceId`=531 AND `ResponseId`=1682 AND `Index`=0) OR (`ChoiceId`=529 AND `ResponseId`=1670 AND `Index`=0) OR (`ChoiceId`=540 AND `ResponseId`=1783 AND `Index`=0) OR (`ChoiceId`=537 AND `ResponseId`=1727 AND `Index`=0);
INSERT INTO `playerchoice_response` (`ChoiceId`, `ResponseId`, `Index`, `ChoiceArtFileId`, `Flags`, `WidgetSetId`, `UiTextureAtlasElementID`, `SoundKitId`, `GroupId`, `Header`, `Subheader`, `ButtonTooltip`, `Answer`, `Description`, `Confirmation`, `RewardQuestID`, `VerifiedBuild`) VALUES
(509, 0, 1, -2071656704, 3687857, 1629516361, 0, 0, 32, 'e Arathi cerca.La Horda controla Ar\'gorok y las Tierras Altas de Arathi. Los espías mortacechadores informan que la Alianza está organizando su propia campaña de guerra en Arathi.�6%)Ҭ��B(Ir a la batallaLa batalla por Costa OscuraAsedioRecompensa por ganar:Lucha junto a tus aliados para expulsar a la Alia', 'nza de Costa Oscura.Frentes de batalla', '', 'llaBatalla por StromgardePatrullar¡Derrota monstruos poco comunes y fuerzas enemigas en las Tierras Altas de Arathi por la posibilidad de obtener recompensas especiales! Se ha abierto un portal a las Tierras Altas d', '', '', 0, 29297),
(509, 1445, 0, 2143999, 1, 0, 0, 0, 154, '', '', '', '', '', '', 0, 29297),
(535, 118529, 1, 8449, 6292992, 1919905857, 0, 0, 116, ' de infligir una gran cantidad de daño a las defensas enemigas.��&�$�\`Aportar |cFFFF202010|TINTERFACE\\ICONS\\INV_TRADESKILLITEM_01.BLP:15:15:5|tContribuye a la construcción de Talleres de la Peste.\n\nOtorga acceso a los Lanzañublos renegados, vehículos de asedio poderosos capaces de infligir una gran cantidad de daño a las defensas enemigas.Construir Talleres de la Peste', '', '', 'FF202010|TINTERFACE\\ICONS\\INV_INGOT_IRON.BLP:15:15:5|tContribuye a la construcción de Talleres de la Peste.\n\nOtorga acceso a los Lanzañublos renegados, vehículos de asedio poderosos capaces', '', '', 0, 29297),
(535, 1716, 0, 2532101, 3, 0, 0, 0, 144, '', '', '', '', '', '', 0, 29297),
(535, 1715, 0, 2532101, 0, 0, 0, 0, 144, '', '', '', '', '', '', 0, 29297),
(540, 118529, 1, -1073536767, 3670272, 1701996111, 0, 0, 99, '1.BLP:15:15:5|tPoder rebosanteNo puedes controlar más de este poder.$�$��\'�Ofrecer |cFFFF20201 |TINTERFACE\\ICONS\\INV_MISC_LESSERESSENCE.BLP:15:15:0:0|t|hAbominaciónUna monstruosidad vil capaz de debilitar los ataques enemigos y potenciar la autosanación en grandes grupos de enemigos.&�$��\'�Ofrecer |cFFFF20201 |TINTERFACE\\ICONS\\INV_MISC_LESSERESSENCE.BLP:15:15:0:0|t|hAlma en penaUna manipulado', 'ra incorpórea de la magia capaz de infligir dolor a los enemigo', 's y restaurar salud a los aliados.(�$��\'@\`Ofrecer |cFFFF20201 |TINTERFACE\\ICONS\\INV_MISC_LESSERESSENCE.BLP:15:15:0:0|t|hPrototipo de MEKaritaUn prototipo de ataque a distancia poderoso con ataques devastadores contra un solo objetivo y contra varios objetivos. Y botas propulsoras.Obtener poder', 'FFFFFF10|TINTERFACE\\ICONS\\INV_INGOT_IRON.BLP:15:15:5|tPoder rebosanteNo puedes controlar más de este poder.����$��8Ofrecer |cFFFFFFFF10|TINTERFACE\\ICONS\\INV_TRADESKILLITEM_0', '', '', 0, 29297),
(540, 1787, 0, 1937415, 3, 0, 0, 0, 179, '', '', '', '', '', '', 0, 29297),
(539, 118529, 1, 1074012417, 16253440, 1919905857, 0, 0, 116, '$�@�Aportar |cFFFF202010|TINTERFACE\\ICONS\\INV_TRADESKILLITEM_01.BLP:15:15:5|tArmas de monalitaContribuye recursos para realizar la investigación y aumentar la fuerza de las tropas aliadas.�њ��!��Aportar |cFFFFFFFF10|TINTERFACE\\ICONS\\INV_INGOT_IRON.BLP:15:15:5|tArmaduras de plata de tormentaContribuye recursos para realizar la investigación y aumentar la fuerza de las tropas aliadas.�њ�$���', 'Aportar |cFFFF202010|TINTERFACE\\ICONS\\INV_TRADESKILLITEM_01.BLP:', '15:15:5|tArmaduras de plata de tormentaContribuye recursos para realizar la investigación y aumentar la fuerza de las tropas aliadas.Investigar mejoras', 'FFFFFF10|TINTERFACE\\ICONS\\INV_INGOT_IRON.BLP:15:15:5|tArmas de monalitaContribuye recursos para realizar la investigación y aumentar la fuerza de las tropas aliadas.�Ӛ�', '', '', 0, 29297),
(539, 1739, 0, 1940179, 0, 0, 0, 0, 145, '', '', '', '', '', '', 0, 29297),
(531, 1681, 0, 2268836, 0, 0, 0, 0, 175, '', '', '� �8Gastar |cFFFFFFFF20|TINTERFACE\\ICONS\\INV_INGOT_IRON.BLP:15:15:5|tGuardia de la muerteEl pilar de tu ejército. Atacan las ubicaciones enemigas y te ayudan a conquistar el campo de batalla.���\"��� ��pGastar |cFFFF202030|TINTERFACE\\ICONS\\INV_INGOT_IRON.BLP:15:15:5|tTiromortalAliados bien armados con ataque a dist', '', 'ancia capaces de infligir un gran daño.���\"��� ��Gastar |cFFFF202050|TINTERFACE\\ICONS\\INV_INGOT_IRON.BLP:15:15:5|tAlquimistaAlquimistas propagadores de añublo que portan bálsamos medicinales y pueden sanar a los aliados.���\"��� ��@Gastar |cFFFF202050|TINTERFACE\\ICONS\\INV_INGOT_IRON.BLP:15:15:5|tLanceroGuerreros con armadura pesada que emplean tácticas de combate sobre montura para aturdir e infligir grandes cantidades de daño.\n\n|cFFFF2020Requiere Depósito FresnoEntrenar tropas', '', 0, 29297),
(540, 1784, 0, 1937415, 3, 0, 0, 0, 179, '', '', '', '', '', '', 0, 29297),
(533, 118529, 1, 8449, 14156288, 1919905857, 0, 0, 116, 'FFFFF10|TINTERFACE\\ICONS\\INV_TRADESKILLITEM_01.BLP:15:15:5|tContribuye a la construcción del Bastión.\n\nAumenta la velocidad de entrega de recursos.Construir Bastión', '', '', 'FF202010|TINTERFACE\\ICONS\\INV_INGOT_IRON.BLP:15:15:5|tContribuye a la construcción del Bastión.\n\nAumenta la velocidad de entrega de recursos.��&�$��Aportar |cFFF', '', '', 0, 29297),
(533, 1704, 0, 2532100, 3, 0, 0, 0, 138, '', '', '', '', '', '', 0, 29297),
(537, 118529, 1, 8449, 1573888, 1919905857, 0, 0, 116, '�$�Aportar |cFFFFFFFF10|TINTERFACE\\ICONS\\INV_TRADESKILLITEM_01.BLP:15:15:5|tContribuye a la construcción de la Armería.\n\nOtorga acceso a investigaciones que aumentan el poder y la defensa de los aliados.Construir Armería', '', '', 'FF202010|TINTERFACE\\ICONS\\INV_INGOT_IRON.BLP:15:15:5|tContribuye a la construcción de la Armería.\n\nOtorga acceso a investigaciones que aumentan el poder y la defensa de los aliados.��&', '', '', 0, 29297),
(537, 1728, 0, 2532098, 3, 0, 0, 0, 132, '', '', '', '', '', '', 0, 29297),
(531, 1682, 0, 2268836, 3, 0, 0, 0, 175, '', '', '� �8Gastar |cFFFF202020|TINTERFACE\\ICONS\\INV_INGOT_IRON.BLP:15:15:5|tGuardia de la muerteEl pilar de tu ejército. Atacan las ubicaciones enemigas y te ayudan a conquistar el campo de batalla.���\"��� ��pGastar |cFFFF202030|TINTERFACE\\ICONS\\INV_INGOT_IRON.BLP:15:15:5|tTiromortalAliados bien armados con ataque a dist', '', 'ancia capaces de infligir un gran daño.���\"��� ��pGastar |cFFFF202050|TINTERFACE\\ICONS\\INV_INGOT_IRON.BLP:15:15:5|tAlquimistaAlquimistas propagadores de añublo que portan bálsamos medicinales y pueden sanar a los aliados.\n\n|cFFFF2020Requiere Playa Marea Penumbral���\"��� ��@Gastar |cFFFF202050|TINTERFACE\\ICONS\\INV_INGOT_IRON.BLP:15:15:5|tLanceroGuerreros con armadura pesada que emplean tácticas de combate sobre montura para aturdir e infligir grandes cantidades de daño.\n\n|cFFFF2020Requiere Depósito FresnoEntrenar tropas', '', 0, 29297),
(529, 1670, 0, 2532103, 3, 0, 0, 0, 0, '', '', '', '', '', '', 0, 29297),
(540, 1783, 0, 1937415, 0, 0, 0, 0, 179, '', '', '', '', '', '', 0, 29297),
(537, 1727, 0, 2532098, 0, 0, 0, 0, 132, '', '', '', '', '', '', 0, 29297);

DELETE FROM `npc_text` WHERE `ID` IN (35754 /*35754*/, 33245 /*33245*/, 37027 /*37027*/, 16734 /*16734*/, 35086 /*35086*/, 32800 /*32800*/, 32704 /*32704*/, 34943 /*34943*/, 35081 /*35081*/);
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextId0`, `BroadcastTextId1`, `BroadcastTextId2`, `BroadcastTextId3`, `BroadcastTextId4`, `BroadcastTextId5`, `BroadcastTextId6`, `BroadcastTextId7`, `VerifiedBuild`) VALUES
(35754, 1, 0, 0, 0, 0, 0, 0, 0, 160336, 0, 0, 0, 0, 0, 0, 0, 29297), -- 35754
(33245, 1, 0, 0, 0, 0, 0, 0, 0, 140285, 0, 0, 0, 0, 0, 0, 0, 29297), -- 33245
(37027, 1, 0, 0, 0, 0, 0, 0, 0, 167540, 0, 0, 0, 0, 0, 0, 0, 29297), -- 37027
(16734, 100, 0, 0, 0, 0, 0, 0, 0, 45200, 0, 0, 0, 0, 0, 0, 0, 29297), -- 16734
(35086, 1, 0, 0, 0, 0, 0, 0, 0, 156479, 0, 0, 0, 0, 0, 0, 0, 29297), -- 35086
(32800, 1, 0, 0, 0, 0, 0, 0, 0, 136907, 0, 0, 0, 0, 0, 0, 0, 29297), -- 32800
(32704, 1, 0, 0, 0, 0, 0, 0, 0, 136415, 0, 0, 0, 0, 0, 0, 0, 29297), -- 32704
(34943, 1, 0, 0, 0, 0, 0, 0, 0, 155104, 0, 0, 0, 0, 0, 0, 0, 29297), -- 34943
(35081, 1, 0, 0, 0, 0, 0, 0, 0, 156474, 0, 0, 0, 0, 0, 0, 0, 29297); -- 35081


DELETE FROM `scenario_poi` WHERE (`CriteriaTreeID`=72073 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `scenario_poi` (`CriteriaTreeID`, `BlobIndex`, `Idx1`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `VerifiedBuild`) VALUES
(72073, 0, 0, 2105, 1203, 0, 2, 0, 0, 29297);


DELETE FROM `scenario_poi_points` WHERE (`CriteriaTreeID`=72073 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `scenario_poi_points` (`CriteriaTreeID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES
(72073, 0, 0, 6677, 2, 29297);

DELETE FROM `gossip_menu` WHERE (`MenuId`=22754 AND `TextId`=35214);
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES
(22754, 35214, 28153); -- 139970

DELETE FROM `gossip_menu_option` WHERE (`MenuId`=22754 AND `OptionIndex`=0);
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `VerifiedBuild`) VALUES
(22754, 0, 0, 'Please take me back.', 0, 28153);

REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(140967, 275633, 1, 1),
(140999, 275633, 1, 1),
(139572, 274154, 1, 1),
(139581, 274157, 1, 1);

