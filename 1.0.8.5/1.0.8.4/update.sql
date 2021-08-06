INSERT INTO hooks (hooks_site, hooks_group, hooks_action, hooks_code, hooks_class, hooks_method) VALUES ('admin', 'action_recorder', 'expireAction', 'zz_expire', '', 'actionRecorderAdmin::notify_expiration');

UPDATE configuration SET use_function = 'Config::get_zone_name' WHERE configuration_key = 'STORE_ZONE';
UPDATE configuration SET set_function = 'Config::select_multiple(Country::fetch_options(), ' WHERE set_function = 'gdpr_select_countries(';
