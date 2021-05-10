UPDATE configuration SET set_function = REPLACE(set_function, 'tep_cfg_select_option(', 'Config::select_one(') WHERE set_function LIKE 'tep_cfg_select_option(%';

UPDATE configuration SET set_function = 'Config::select_template(' WHERE set_function = 'tep_cfg_select_template(';
UPDATE configuration SET set_function = 'Config::select_country(' WHERE set_function = 'tep_cfg_pull_down_country_list(';
UPDATE configuration SET set_function = 'Config::select_zone_by(' WHERE set_function = 'tep_cfg_pull_down_zone_list(STORE_COUNTRY, ';
UPDATE configuration SET set_function = 'Config::draw_textarea(' WHERE set_function = 'tep_cfg_textarea(';
UPDATE configuration SET set_function = 'Config::select_geo_zone(' WHERE set_function = 'tep_cfg_pull_down_zone_classes(';
UPDATE configuration SET set_function = 'Config::select_order_status(' WHERE set_function = 'tep_cfg_pull_down_order_statuses(';
UPDATE configuration SET set_function = 'Config::select_tax_class(' WHERE set_function = 'tep_cfg_pull_down_tax_classes(';
UPDATE configuration SET set_function = 'Config::select_customer_data_group(' WHERE set_function = 'tep_cfg_pull_down_customer_data_groups(';

UPDATE configuration SET set_function = 'Customers::select_pages(' WHERE set_function = 'tep_draw_account_edit_pages(';

UPDATE hooks SET hooks_method = 'Login::require' WHERE hooks_method = 'tep_require_login';
UPDATE hooks SET hooks_method = 'Form::reset_session_token' WHERE hooks_method = 'tep_reset_session_token';
UPDATE hooks SET hooks_method = 'Session::recreate' WHERE hooks_method = 'tep_session_recreate';

UPDATE configuration SET use_function = 'Country::fetch_name' WHERE use_function = 'tep_get_country_name';
UPDATE configuration SET use_function = 'Zone::fetch_name' WHERE use_function = 'tep_cfg_get_zone_name';
UPDATE configuration SET use_function = 'geo_zone::fetch_name' WHERE use_function = 'tep_get_zone_class_title';
UPDATE configuration SET use_function = 'order_status::fetch_name' WHERE use_function = 'tep_get_order_status_name';
UPDATE configuration SET use_function = 'Tax::get_class_title' WHERE use_function = 'tep_get_tax_class_title';
UPDATE configuration SET use_function = 'customer_data_group::fetch_name' WHERE use_function = 'tep_get_customer_data_group_title';
