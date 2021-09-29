INSERT INTO hooks (hooks_site, hooks_group, hooks_action, hooks_code, hooks_class, hooks_method) VALUES ('admin', 'orders', 'updateOrderAction', 'zz_message_update', '', 'Orders::message_update');

UPDATE configuration
 SET set_function = 'Config::select_one([\'True\', \'False\'], ',
     configuration_value = CASE configuration_value WHEN 'true' THEN 'True' WHEN 'false' THEN 'False' ELSE configuration_value END
 WHERE configuration_key IN ('MODULE_ORDER_TOTAL_SUBTOTAL_STATUS', 'MODULE_ORDER_TOTAL_TAX_STATUS', 'MODULE_ORDER_TOTAL_TOTAL_STATUS', 'MODULE_ORDER_TOTAL_LOWORDERFEE_STATUS');
