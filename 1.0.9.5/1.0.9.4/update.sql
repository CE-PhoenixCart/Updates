INSERT INTO configuration (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, date_added) VALUES ('Store Tax ID', 'STORE_TAX_ID', '', 'This is the Tax ID of my business.', 1, 19, NOW());

INSERT INTO configuration (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, set_function, date_added) VALUES ('Display buttons in product listing', 'PRODUCT_LIST_BUTTONS', 'False', 'Do you want to display buy and view buttons in the product listing', 8, 290, 'Config::select_one([\'True\', \'False\'], ', NOW());

UPDATE customer_data_groups SET customer_data_groups_width = 'col-12 col-md-6';

INSERT INTO hooks (hooks_site, hooks_group, hooks_action, hooks_code, hooks_class, hooks_method) VALUES ('shop', 'siteWide', 'injectProductCard', '_10_inject_product_card', '', 'product_card::inject');

INSERT INTO configuration (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, date_added) values ('Background Colour', 'MODULE_HEADER_TAGS_TABLE_CLICK_JQUERY_TR_BACKGROUND', 'table-success', 'The background colour of the clicked Row.  See https://getbootstrap.com/docs/4.6/content/tables/#contextual-classes', 6, 3, now());

UPDATE configuration SET configuration_value = CONCAT(configuration_value, ' mb-4') WHERE configuration_key = 'MODULE_CONTENT_ACCOUNT_TITLE_CONTENT_WIDTH';

UPDATE configuration SET configuration_value = CONCAT(configuration_value, ' mb-4') WHERE configuration_key = 'MODULE_CONTENT_CHECKOUT_SUCCESS_TITLE_CONTENT_WIDTH';
UPDATE configuration SET configuration_value = CONCAT(configuration_value, ' mb-4') WHERE configuration_key = 'MODULE_CONTENT_IN_TITLE_CONTENT_WIDTH';
UPDATE configuration SET configuration_value = CONCAT(configuration_value, ' mb-4') WHERE configuration_key = 'MODULE_CONTENT_IN_CATEGORY_DESCRIPTION_CONTENT_WIDTH';
UPDATE configuration SET configuration_value = CONCAT(configuration_value, ' mb-4') WHERE configuration_key = 'MODULE_CONTENT_IN_CATEGORY_LISTING_CONTENT_WIDTH';
UPDATE configuration SET configuration_value = CONCAT(configuration_value, ' mb-4') WHERE configuration_key = 'MODULE_CONTENT_IN_CARD_PRODUCTS_CONTENT_WIDTH';
UPDATE configuration SET configuration_value = CONCAT(configuration_value, ' mb-4') WHERE configuration_key = 'MODULE_CONTENT_IP_CATEGORY_DESCRIPTION_CONTENT_WIDTH';
UPDATE configuration SET configuration_value = CONCAT(configuration_value, ' mb-4') WHERE configuration_key = 'MODULE_CONTENT_IP_PRODUCT_LISTING_CONTENT_WIDTH';
UPDATE configuration SET configuration_value = CONCAT(configuration_value, ' mb-4') WHERE configuration_key = 'MODULE_CONTENT_LOGIN_TITLE_CONTENT_WIDTH';
UPDATE configuration SET configuration_value = CONCAT(configuration_value, ' mb-4') WHERE configuration_key = 'MODULE_CONTENT_SC_TITLE_CONTENT_WIDTH';
UPDATE configuration SET configuration_value = CONCAT(configuration_value, ' mb-4') WHERE configuration_key = 'MODULE_CONTENT_ACCOUNT_TITLE_CONTENT_WIDTH';
UPDATE configuration SET configuration_value = CONCAT(configuration_value, ' mb-4') WHERE configuration_key = 'MODULE_CONTENT_TESTIMONIALS_TITLE_CONTENT_WIDTH';
UPDATE configuration SET configuration_value = CONCAT(configuration_value, ' mb-4') WHERE configuration_key = 'MODULE_CONTENT_CAS_TITLE_CONTENT_WIDTH';
UPDATE configuration SET configuration_value = CONCAT(configuration_value, ' mb-4') WHERE configuration_key = 'MODULE_CONTENT_INFO_TITLE_CONTENT_WIDTH';
UPDATE configuration SET configuration_value = CONCAT(configuration_value, ' mt-2') WHERE configuration_key = 'MODULE_CONTENT_SC_ORDER_SUBTOTAL_CONTENT_WIDTH';
UPDATE configuration SET configuration_value = CONCAT(configuration_value, ' mt-2') WHERE configuration_key = 'MODULE_CONTENT_SC_STOCK_NOTICE_CONTENT_WIDTH';
