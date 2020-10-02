delete from `creature_queststarter` where `id`=35627 and `quest`=14222;

DELETE FROM `disables` WHERE `entry` IN (312923,312896,312890,312924);

update `creature_template` set `gossip_menu_id`=21951 where `entry` in (143388,143381,143379,88255,143165);
update `creature_template` set `gossip_menu_id`=23405 where `entry` in (143380,143172,88254,96786,105400);
