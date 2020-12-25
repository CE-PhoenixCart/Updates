DELETE FROM hooks WHERE hooks_code = '_21_customer_data';
DELETE FROM hooks WHERE hooks_code = '_22_customer';
DELETE FROM hooks WHERE hooks_code = '_26_validations';
DELETE FROM hooks WHERE hooks_code = '_28_template';

INSERT INTO hooks (hooks_site, hooks_group, hooks_action, hooks_code, hooks_class, hooks_method) VALUES ('shop', 'system', 'startApplication', '_23_template', 'Loader', 'oscTemplate');
INSERT INTO hooks (hooks_site, hooks_group, hooks_action, hooks_code, hooks_class, hooks_method) VALUES ('shop', 'system', 'startApplication', '_23a_customer_data', 'Loader', 'customer_data');
INSERT INTO hooks (hooks_site, hooks_group, hooks_action, hooks_code, hooks_class, hooks_method) VALUES ('shop', 'system', 'startApplication', '_23b_customer', 'Application', 'set_customer_if_identified');

INSERT INTO hooks (hooks_site, hooks_group, hooks_action, hooks_code, hooks_class, hooks_method) VALUES ('shop', 'siteWide', 'postRegistration', '_01_post_login', 'Login', 'hook');
INSERT INTO hooks (hooks_site, hooks_group, hooks_action, hooks_code, hooks_class, hooks_method) VALUES ('shop', 'siteWide', 'postLogin', '_01_recreate_session', '', 'tep_session_recreate');
INSERT INTO hooks (hooks_site, hooks_group, hooks_action, hooks_code, hooks_class, hooks_method) VALUES ('shop', 'create_account', 'postLogin', '_02_set_customer_id', 'Login', 'add_customer_id');
INSERT INTO hooks (hooks_site, hooks_group, hooks_action, hooks_code, hooks_class, hooks_method) VALUES ('shop', 'login', 'postLogin', '_02_set_customer_id', 'Login', 'set_customer_id');
INSERT INTO hooks (hooks_site, hooks_group, hooks_action, hooks_code, hooks_class, hooks_method) VALUES ('shop', 'login', 'postLogin', '_03_log', 'Login', 'log');
INSERT INTO hooks (hooks_site, hooks_group, hooks_action, hooks_code, hooks_class, hooks_method) VALUES ('shop', 'siteWide', 'postLogin', '_04_reset_token', '', 'tep_reset_session_token');
INSERT INTO hooks (hooks_site, hooks_group, hooks_action, hooks_code, hooks_class, hooks_method) VALUES ('shop', 'login', 'postLogin', '_05_restore_cart', 'cart', 'restore_contents');
INSERT INTO hooks (hooks_site, hooks_group, hooks_action, hooks_code, hooks_class, hooks_method) VALUES ('shop', 'login', 'postLogin', '_06_redirect', 'navigation', 'redirect_to_snapshot');
INSERT INTO hooks (hooks_site, hooks_group, hooks_action, hooks_code, hooks_class, hooks_method) VALUES ('shop', 'create_account', 'postRegistration', '_02_restore_cart', 'cart', 'restore_contents');
INSERT INTO hooks (hooks_site, hooks_group, hooks_action, hooks_code, hooks_class, hooks_method) VALUES ('shop', 'create_account', 'postRegistration', '_03_notify', 'Login', 'notify');
INSERT INTO hooks (hooks_site, hooks_group, hooks_action, hooks_code, hooks_class, hooks_method) VALUES ('shop', 'create_account', 'postRegistration', '_04_redirect', 'Login', 'redirect_success');

INSERT INTO hooks (hooks_site, hooks_group, hooks_action, hooks_code, hooks_class, hooks_method) VALUES ('shop', 'logoff', 'resetStart', '_40_unset_customer_id', 'session_eraser', 'customer_id');