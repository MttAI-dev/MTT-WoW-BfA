/* remove smart_script since this boss has a core script for the same action */
delete from smart_scripts where entryorguid in (96441);

/* fel lord caza texts */
delete from creature_text where CreatureID in (96441);
insert into `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) values
('96441','0','0','Damn your spectral sight!','14','0','100','0','0','55172','0','0','Fel Lord Caza to Player'),
('96441','0','1','My axe never misses its mark.','14','0','100','0','0','55174','0','0','Fel Lord Caza to Player'),
('96441','0','2','I would have sundered your forces...','14','0','100','0','0','55173','0','0','Fel Lord Caza to Player');


/* quest 39495 hidden no more rockslide */
UPDATE gameobject_template SET ScriptName="go_q39495" WHERE entry=245045;
UPDATE gameobject SET PhaseId=0 WHERE id=245045;

