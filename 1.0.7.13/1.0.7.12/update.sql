UPDATE hooks SET hooks_code = '_21_customer_data' WHERE hooks_code = '_23a_customer_data' AND hooks_group = 'system' AND hooks_site = 'shop';
UPDATE hooks SET hooks_code = '_22_customer' WHERE hooks_code = '_23b_customer' AND hooks_group = 'system' AND hooks_site = 'shop';
UPDATE hooks SET hooks_action = 'siteWideStart' WHERE hooks_action = 'injectAppTop' AND hooks_site = 'shop';
INSERT INTO hooks (hooks_site, hooks_group, hooks_action, hooks_code, hooks_class, hooks_method) VALUES ('shop', 'index', 'siteWideStart', 'category_depth', '', 'category_tree::set_global_depth');
INSERT INTO hooks (hooks_site, hooks_group, hooks_action, hooks_code, hooks_class, hooks_method) VALUES ('shop', 'system', 'startApplication', '_26_template_title', 'Application', 'set_template_title');
DELETE FROM hooks WHERE hooks_class = 'Loader' AND hooks_method = 'oscTemplate' AND hooks_code = '_23_template';
