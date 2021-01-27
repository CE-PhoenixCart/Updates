UPDATE hooks SET hooks_code = 'zz_redirect_success' WHERE hooks_code = '_50_redirect_success' AND hooks_action = 'startApplication';
UPDATE hooks SET hooks_code = 'zz_redirect' WHERE hooks_code = '_06_redirect' AND hooks_action = 'postLogin';
UPDATE hooks SET hooks_code = 'zz_redirect' WHERE hooks_code = '_04_redirect' AND hooks_action = 'postRegistration';
UPDATE hooks SET hooks_code = 'zz_redirect' WHERE hooks_code = 'redirect' AND hooks_action = 'loginRequiredStart';