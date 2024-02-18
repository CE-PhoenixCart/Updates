ALTER TABLE customers CHANGE customers_dob customers_dob DATETIME NULL DEFAULT '1970-01-01 00:00:01';
UPDATE customers SET customers_dob = NULL WHERE customers_dob = '1970-01-01 00:00:01';
ALTER TABLE customers CHANGE customers_dob customers_dob DATE NULL;

UPDATE configuration SET configuration_description = 'Allow customer to check out even if there is insufficient stock. If set to false, product(s) will be deactivated if stock count drops below 1 when the customer checks out.' WHERE configuration_key = 'STOCK_ALLOW_CHECKOUT';

ALTER TABLE countries ADD status INT NOT NULL DEFAULT '1';

INSERT INTO countries VALUES (250, 'Guernsey', 'GG', 'GGY', '1', '1');
INSERT INTO countries VALUES (251, 'Jersey', 'JE', 'JEY', '1', '1');
INSERT INTO countries VALUES (252, 'Isle of Man', 'IM', 'IMN', '1', '1');

ALTER TABLE customer_data_groups CHANGE customer_data_groups_width customer_data_groups_width VARCHAR(255) NOT NULL;

INSERT INTO hooks (hooks_site, hooks_group, hooks_action, hooks_code, hooks_class, hooks_method) VALUES ('shop', 'logoff', 'resetStart', '_41_unset_customer', 'global_eraser', 'customer');

