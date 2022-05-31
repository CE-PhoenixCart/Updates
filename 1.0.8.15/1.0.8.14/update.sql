INSERT INTO hooks (hooks_site, hooks_group, hooks_action, hooks_code, hooks_class, hooks_method) VALUES ('shop', 'reviewable', 'reviewableStart', '_01_not_reviewed', '', 'Reviews::verify_not_reviewed');
INSERT INTO hooks (hooks_site, hooks_group, hooks_action, hooks_code, hooks_class, hooks_method) VALUES ('shop', 'reviewable', 'reviewableStart', '_02_bought', '', 'Reviews::verify_buyer');
