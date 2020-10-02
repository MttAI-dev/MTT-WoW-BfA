UPDATE access_requirement SET level_min = 121 WHERE mapId = 1136;
UPDATE creature_template SET npcflag = 0 WHERE npcflag = 8796093030400;
UPDATE creature_template SET gossip_menu_id = 22155 WHERE entry = 133536;
UPDATE creature_template SET gossip_menu_id = 21754 WHERE entry IN (136052,131741,129014,141906,154257,154408,144066,150632,141549);