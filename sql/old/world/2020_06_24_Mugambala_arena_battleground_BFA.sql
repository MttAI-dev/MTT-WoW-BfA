DELETE FROM `battleground_template` WHERE `ID` = '903';
INSERT INTO `battleground_template` (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) 
VALUES 
(

903, 0, 5, 90, 120, 6616, 6617, 0, 1, '', 'Arena Bfa Mugambala'

);
