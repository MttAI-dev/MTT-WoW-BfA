DELETE FROM rbac_permissions WHERE id = 2008;
INSERT INTO rbac_permissions (id, name) VALUES
(2008, 'Commands: ticket addon');

DELETE FROM rbac_linked_permissions WHERE id = 190 AND linkedId= 2008;
INSERT INTO rbac_linked_permissions (id, linkedId) VALUES
(189, 2008);
