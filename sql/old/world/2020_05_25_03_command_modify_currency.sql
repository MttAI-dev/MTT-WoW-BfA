delete from `command` where `permission`=775;
insert into `command` (`name`, `permission`, `help`) values
('modify currency','775','Syntax: .modify currency #id #value\nAdd $amount (without precision) of $currency to the selected player.');
