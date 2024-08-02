INSERT INTO configuration (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, date_added) VALUES ('Favicon', 'FAVICON_LOGO', 'favicon.png', 'This is the filename of your Favicon.  This should be updated at admin > configuration > Store Logo', 6, 1200, now());

INSERT INTO configuration (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, date_added) VALUES ('Mini Logo', 'MINI_LOGO', 'mini_logo.png', 'This is the filename of your Mini Logo.  This should be updated at admin > configuration > Store Logo', 6, 1100, now());

UPDATE configuration SET configuration_value = 'container-xl' WHERE configuration_key = 'BOOTSTRAP_CONTAINER';

UPDATE configuration SET configuration_title = 'Content Container' WHERE configuration_key LIKE '%_CONTENT_WIDTH';
UPDATE configuration SET configuration_description = 'What container should the content be shown in? (col-*-12 = full width, col-*-6 = half width).' WHERE configuration_key LIKE '%_CONTENT_WIDTH';

UPDATE configuration SET set_function = NULL WHERE configuration_key LIKE '%_CONTENT_WIDTH';

UPDATE configuration SET configuration_value = 'col-sm-12' WHERE configuration_value = '12' AND configuration_key LIKE '%_CONTENT_WIDTH';
UPDATE configuration SET configuration_value = 'col-sm-11' WHERE configuration_value = '11' AND configuration_key LIKE '%_CONTENT_WIDTH';
UPDATE configuration SET configuration_value = 'col-sm-10' WHERE configuration_value = '10' AND configuration_key LIKE '%_CONTENT_WIDTH';
UPDATE configuration SET configuration_value = 'col-sm-9' WHERE configuration_value = '9' AND configuration_key LIKE '%_CONTENT_WIDTH';
UPDATE configuration SET configuration_value = 'col-sm-8' WHERE configuration_value = '8' AND configuration_key LIKE '%_CONTENT_WIDTH';
UPDATE configuration SET configuration_value = 'col-sm-7' WHERE configuration_value = '7' AND configuration_key LIKE '%_CONTENT_WIDTH';
UPDATE configuration SET configuration_value = 'col-sm-6' WHERE configuration_value = '6' AND configuration_key LIKE '%_CONTENT_WIDTH';
UPDATE configuration SET configuration_value = 'col-sm-5' WHERE configuration_value = '5' AND configuration_key LIKE '%_CONTENT_WIDTH';
UPDATE configuration SET configuration_value = 'col-sm-4' WHERE configuration_value = '4' AND configuration_key LIKE '%_CONTENT_WIDTH';
UPDATE configuration SET configuration_value = 'col-sm-3' WHERE configuration_value = '3' AND configuration_key LIKE '%_CONTENT_WIDTH';
UPDATE configuration SET configuration_value = 'col-sm-2' WHERE configuration_value = '2' AND configuration_key LIKE '%_CONTENT_WIDTH';
UPDATE configuration SET configuration_value = 'col-sm-1' WHERE configuration_value = '1' AND configuration_key LIKE '%_CONTENT_WIDTH';

UPDATE configuration SET configuration_value = CONCAT(configuration_value, ' mb-2 mb-sm-0') WHERE configuration_key = 'MODULE_CONTENT_FOOTER_INFORMATION_CONTENT_WIDTH';
UPDATE configuration SET configuration_value = CONCAT(configuration_value, ' mb-2 mb-sm-0') WHERE configuration_key = 'MODULE_CONTENT_FOOTER_ACCOUNT_CONTENT_WIDTH';
UPDATE configuration SET configuration_value = CONCAT(configuration_value, ' mb-2 mb-sm-0') WHERE configuration_key = 'MODULE_CONTENT_FOOTER_CONTACT_US_CONTENT_WIDTH';
UPDATE configuration SET configuration_value = CONCAT(configuration_value, ' mb-2 mb-sm-0') WHERE configuration_key = 'MODULE_CONTENT_FOOTER_TEXT_CONTENT_WIDTH';

UPDATE configuration SET configuration_value = CONCAT(configuration_value, ' text-center text-sm-left') WHERE configuration_key = 'MODULE_CONTENT_FOOTER_EXTRA_COPYRIGHT_CONTENT_WIDTH';
UPDATE configuration SET configuration_value = CONCAT(configuration_value, ' text-center text-sm-right') WHERE configuration_key = 'MODULE_CONTENT_FOOTER_EXTRA_ICONS_CONTENT_WIDTH';

UPDATE configuration SET configuration_value = CONCAT(configuration_value, ' my-2') WHERE configuration_key = 'MODULE_CONTENT_CS_CONTINUE_BUTTON_CONTENT_WIDTH';

UPDATE configuration SET configuration_value = CONCAT(configuration_value, ' mb-4') WHERE configuration_key = 'MODULE_CONTENT_CARD_PRODUCTS_CONTENT_WIDTH';
UPDATE configuration SET configuration_value = CONCAT(configuration_value, ' mb-4') WHERE configuration_key = 'MODULE_CONTENT_UPCOMING_PRODUCTS_CONTENT_WIDTH';

UPDATE configuration SET configuration_value = CONCAT(configuration_value, ' mt-5') WHERE configuration_key = 'MODULE_CONTENT_SC_ORDER_SUBTOTAL_CONTENT_WIDTH';

UPDATE configuration SET configuration_title = 'Review Container' WHERE configuration_key = 'MODULE_CONTENT_PRODUCT_INFO_REVIEWS_CONTENT_WIDTH_EACH';
UPDATE configuration SET configuration_description = 'What container should the content be shown in? (col-*-12 = full width, col-*-6 = half width).' WHERE configuration_key = 'MODULE_CONTENT_PRODUCT_INFO_REVIEWS_CONTENT_WIDTH_EACH';
UPDATE configuration SET configuration_value = 'col-sm-6' WHERE configuration_key = 'MODULE_CONTENT_PRODUCT_INFO_REVIEWS_CONTENT_WIDTH_EACH';

UPDATE configuration SET configuration_title = 'Thumbnail Container' WHERE configuration_key = 'PI_GALLERY_CONTENT_WIDTH_EACH';
UPDATE configuration SET configuration_value = 'col-4 col-sm-6 col-lg-4' WHERE configuration_key = 'PI_GALLERY_CONTENT_WIDTH_EACH';
UPDATE configuration SET configuration_description = 'What container should each thumbnail be shown in? Default:  XS 3 each row, SM/MD 2 each row, LG/XL 3 each row.' WHERE configuration_key = 'PI_GALLERY_CONTENT_WIDTH_EACH';

UPDATE configuration SET configuration_value = 'Schema' WHERE configuration_key = 'MODULE_CONTENT_HEADER_BREADCRUMB_LOCATION';

INSERT INTO configuration (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, date_added) VALUES ('Content Container', 'MODULE_CONTENT_CHECKOUT_SUCCESS_DOWNLOADS_CONTENT_WIDTH', 'col-sm-12', 'What container should the content be shown in? (col-*-12 = full width, col-*-6 = half width).', 6, 2, NOW());