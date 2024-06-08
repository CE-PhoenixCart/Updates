ALTER TABLE configuration_group ADD configuration_group_help_link varchar(255) NULL;
ALTER TABLE configuration_group ADD configuration_group_addons_links text NULL;

UPDATE configuration SET configuration_value = 'Address Line 1\nAddress Line 2\nCountry' WHERE configuration_key = 'STORE_ADDRESS';

DELETE FROM configuration WHERE configuration_key = 'PRODUCT_LIST_IMAGE';
DELETE FROM configuration WHERE configuration_key = 'PRODUCT_LIST_BUY_NOW';

UPDATE configuration_group SET configuration_group_help_link = 'https://phoenixcart.org/phoenixcartwiki/index.php?title=My_Store' WHERE configuration_group_id = 1;
UPDATE configuration_group SET configuration_group_help_link = 'https://phoenixcart.org/phoenixcartwiki/index.php?title=Maximum_Values' WHERE configuration_group_id = 3;
UPDATE configuration_group SET configuration_group_help_link = 'https://phoenixcart.org/phoenixcartwiki/index.php?title=Images' WHERE configuration_group_id = 4;
UPDATE configuration_group SET configuration_group_help_link = 'https://phoenixcart.org/phoenixcartwiki/index.php' WHERE configuration_group_id = 6;
UPDATE configuration_group SET configuration_group_help_link = 'https://phoenixcart.org/phoenixcartwiki/index.php?title=Shipping/Packaging' WHERE configuration_group_id = 7;
UPDATE configuration_group SET configuration_group_help_link = 'https://phoenixcart.org/phoenixcartwiki/index.php?title=Product_Listing' WHERE configuration_group_id = 8;
UPDATE configuration_group SET configuration_group_help_link = 'https://phoenixcart.org/phoenixcartwiki/index.php?title=Stock' WHERE configuration_group_id = 9;
UPDATE configuration_group SET configuration_group_help_link = 'https://phoenixcart.org/phoenixcartwiki/index.php?title=Logging' WHERE configuration_group_id = 10;
UPDATE configuration_group SET configuration_group_help_link = 'https://phoenixcart.org/phoenixcartwiki/index.php?title=Cache' WHERE configuration_group_id = 11;
UPDATE configuration_group SET configuration_group_help_link = 'https://phoenixcart.org/phoenixcartwiki/index.php?title=E-Mail_Options' WHERE configuration_group_id = 12;
UPDATE configuration_group SET configuration_group_help_link = 'https://phoenixcart.org/phoenixcartwiki/index.php?title=Download' WHERE configuration_group_id = 13;
UPDATE configuration_group SET configuration_group_help_link = 'https://phoenixcart.org/phoenixcartwiki/index.php?title=GZip_Compression' WHERE configuration_group_id = 14;
UPDATE configuration_group SET configuration_group_help_link = 'https://phoenixcart.org/phoenixcartwiki/index.php?title=Sessions' WHERE configuration_group_id = 15;
UPDATE configuration_group SET configuration_group_help_link = 'https://phoenixcart.org/phoenixcartwiki/index.php?title=Bootstrap_Setup' WHERE configuration_group_id = 16;

UPDATE configuration_group SET configuration_group_addons_links = '{"ADDONS_FREE":"https:\/\/phoenixcart.org\/forum\/app.php\/addons\/free\/templates-28","ADDONS_COMMERCIAL":"https:\/\/phoenixcart.org\/forum\/app.php\/addons\/commercial\/templates-31","ADDONS_PRO":"https:\/\/phoenixcart.org\/forum\/app.php\/addons\/supporters\/templates-47"}' WHERE configuration_group_id = 1;

DELETE FROM configuration WHERE configuration_key = 'MODULE_HEADER_TAGS_DATEPICKER_JQUERY_STATUS';
DELETE FROM configuration WHERE configuration_key = 'MODULE_HEADER_TAGS_DATEPICKER_JQUERY_PAGES';
DELETE FROM configuration WHERE configuration_key = 'MODULE_HEADER_TAGS_DATEPICKER_JQUERY_SORT_ORDER';

UPDATE configuration SET configuration_value = REPLACE('configuration_value', 'ht_datepicker_jquery;', '') WHERE configuration_key = 'MODULE_HEADER_TAGS_INSTALLED';
UPDATE configuration SET configuration_value = REPLACE('configuration_value', 'ht_datepicker_jquery', '') WHERE configuration_key = 'MODULE_HEADER_TAGS_INSTALLED';

UPDATE configuration SET configuration_title = 'Content Container', configuration_value = 'col-md-6 mb-2', configuration_description = 'What container should the content be shown in? (Default: XS-SM full width, MD and above half width).' WHERE configuration_key = 'MODULE_ADMIN_DASHBOARD_ADDONS_CONTENT_WIDTH';
UPDATE configuration SET configuration_title = 'Content Container', configuration_value = 'col-md-6 mb-2', configuration_description = 'What container should the content be shown in? (Default: XS-SM full width, MD and above half width).' WHERE configuration_key = 'MODULE_ADMIN_DASHBOARD_ADMIN_LOGINS_CONTENT_WIDTH';
UPDATE configuration SET configuration_title = 'Content Container', configuration_value = 'col-md-6 mb-2', configuration_description = 'What container should the content be shown in? (Default: XS-SM full width, MD and above half width).' WHERE configuration_key = 'MODULE_ADMIN_DASHBOARD_CUSTOMERS_CONTENT_WIDTH';
UPDATE configuration SET configuration_title = 'Content Container', configuration_value = 'col-md-6 mb-2', configuration_description = 'What container should the content be shown in? (Default: XS-SM full width, MD and above half width).' WHERE configuration_key = 'MODULE_ADMIN_DASHBOARD_MONTHLY_SALES_CONTENT_WIDTH';
UPDATE configuration SET configuration_title = 'Content Container', configuration_value = 'col-md-6 mb-2', configuration_description = 'What container should the content be shown in? (Default: XS-SM full width, MD and above half width).' WHERE configuration_key = 'MODULE_ADMIN_DASHBOARD_ORDERS_CONTENT_WIDTH';
UPDATE configuration SET configuration_title = 'Content Container', configuration_value = 'col-md-6 mb-2', configuration_description = 'What container should the content be shown in? (Default: XS-SM full width, MD and above half width).' WHERE configuration_key = 'MODULE_ADMIN_DASHBOARD_PHOENIX_ADDONS_CONTENT_WIDTH';
UPDATE configuration SET configuration_title = 'Content Container', configuration_value = 'col-md-6 mb-2', configuration_description = 'What container should the content be shown in? (Default: XS-SM full width, MD and above half width).' WHERE configuration_key = 'MODULE_ADMIN_DASHBOARD_REVIEWS_CONTENT_WIDTH';
UPDATE configuration SET configuration_title = 'Content Container', configuration_value = 'col-md-6 mb-2', configuration_description = 'What container should the content be shown in? (Default: XS-SM full width, MD and above half width).' WHERE configuration_key = 'MODULE_ADMIN_DASHBOARD_SECURITY_CHECKS_CONTENT_WIDTH';
UPDATE configuration SET configuration_title = 'Content Container', configuration_value = 'col-md-6 mb-2', configuration_description = 'What container should the content be shown in? (Default: XS-SM full width, MD and above half width).' WHERE configuration_key = 'MODULE_ADMIN_DASHBOARD_TOTAL_CUSTOMERS_CONTENT_WIDTH';
UPDATE configuration SET configuration_title = 'Content Container', configuration_value = 'col-md-6 mb-2', configuration_description = 'What container should the content be shown in? (Default: XS-SM full width, MD and above half width).' WHERE configuration_key = 'MODULE_ADMIN_DASHBOARD_TOTAL_REVENUE_CONTENT_WIDTH';
UPDATE configuration SET configuration_title = 'Content Container', configuration_value = 'col-md-6 mb-2', configuration_description = 'What container should the content be shown in? (Default: XS-SM full width, MD and above half width).' WHERE configuration_key = 'MODULE_ADMIN_DASHBOARD_VERSION_CHECK_CONTENT_WIDTH';