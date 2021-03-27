ALTER TABLE orders 
  ADD COLUMN customers_country_id int NOT NULL AFTER customers_country,
  ADD COLUMN delivery_country_id int NOT NULL AFTER delivery_country,
  ADD COLUMN billing_country_id int NOT NULL AFTER billing_country;

INSERT INTO hooks (hooks_site, hooks_group, hooks_action, hooks_code, hooks_class, hooks_method) VALUES ('admin', 'system', 'hrefLink', '_01_href_link', '', 'Href::hook');
INSERT INTO hooks (hooks_site, hooks_group, hooks_action, hooks_code, hooks_class, hooks_method) VALUES ('shop', 'system', 'hrefLink', '_01_href_link', '', 'Href::hook');

UPDATE hooks SET hooks_action = 'startCheckout' WHERE hooks_action = 'startApplication' AND hooks_group LIKE 'checkout%' AND hooks_site = 'shop';

