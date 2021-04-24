ALTER TABLE action_recorder
  DROP KEY idx_action_recorder_module,
  DROP KEY idx_action_recorder_identifier,
  DROP KEY idx_action_recorder_date_added,
  ADD KEY idx_action_recorder_module_date (module, date_added);

ALTER TABLE administrators
  MODIFY user_password VARCHAR(255);

ALTER TABLE customers
  MODIFY customers_password VARCHAR(255);

INSERT INTO hooks (hooks_site, hooks_group, hooks_action, hooks_code, hooks_class, hooks_method)
           VALUES ('shop', 'system', 'startApplication', '_04_linker', 'Loader', 'Linker');

