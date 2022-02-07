# Instructions for Manually Updating CE Phoenix 1.0.8.10 to 1.0.8.11
## REQUIRED Modules to Remove (aka uninstall):
* None

## OPTIONAL  Modules to Remove (aka uninstall):
* None

## REQUIRED SQL:
* None

## Upload https://github.com/CE-PhoenixCart/Updates/raw/master/1.0.8.11/1.0.8.10/update.zip
or
## Perform the following file changes in each commit:
* (https://github.com/CE-PhoenixCart/PhoenixCart/compare/1.0.8.10...1.0.8.11)

## REQUIRED New Modules to Turn On (install):
* None

## REQUIRED Existing Modules to Turn On (install):
* None

## OPTIONAL Install Modules:
* None

## OPTIONAL Files To Delete (You can choose to delete these if you are not using them):
* admin/includes/languages/english/modules/security_check/extended/admin_backup_directory_listing.php
* admin/includes/languages/english/modules/security_check/extended/admin_backup_file.php
* admin/includes/languages/english/modules/security_check/extended/admin_http_authentication.php
* admin/includes/languages/english/modules/security_check/extended/ext_directory_listing.php
* admin/includes/languages/english/modules/security_check/extended_last_run.php
* admin/includes/languages/english/modules/security_check/extended/mysql_utf8.php
* admin/includes/languages/english/modules/security_check/extended/shopside_checklist.php
* admin/includes/languages/english/modules/security_check/extended/shopside_osc.php
* admin/includes/languages/english/modules/security_check/extended/version_check.php
* admin/includes/languages/english/modules/security_check/config_file_catalog.php
* admin/includes/languages/english/modules/security_check/default_currency.php
* admin/includes/languages/english/modules/security_check/default_language.php
* admin/includes/languages/english/modules/security_check/download_directory.php
* admin/includes/languages/english/modules/security_check/file_uploads.php
* admin/includes/languages/english/modules/security_check/fopen_wrapper.php
* admin/includes/languages/english/modules/security_check/github_directory.php
* admin/includes/languages/english/modules/security_check/install_directory.php
* admin/includes/languages/english/modules/security_check/session_auto_start.php
* admin/includes/languages/english/modules/security_check/session_storage.php

## REQUIRED Files to delete (You MUST delete these):
* admin/includes/modules/security_check/extended/admin_backup_directory_listing.php
* admin/includes/modules/security_check/extended/admin_backup_file.php
* admin/includes/modules/security_check/extended/admin_http_authentication.php
* admin/includes/modules/security_check/extended/ext_directory_listing.php
* admin/includes/modules/security_check/extended_last_run.php
* admin/includes/modules/security_check/extended/mysql_utf8.php
* admin/includes/modules/security_check/extended/shopside_checklist.php
* admin/includes/modules/security_check/extended/shopside_osc.php
* admin/includes/modules/security_check/extended/version_check.php
* admin/includes/modules/security_check/config_file_catalog.php
* admin/includes/modules/security_check/default_currency.php
* admin/includes/modules/security_check/default_language.php
* admin/includes/modules/security_check/download_directory.php
* admin/includes/modules/security_check/file_uploads.php
* admin/includes/modules/security_check/fopen_wrapper.php
* admin/includes/modules/security_check/github_directory.php
* admin/includes/modules/security_check/install_directory.php
* admin/includes/modules/security_check/session_auto_start.php
* admin/includes/modules/security_check/session_storage.php

## After Update:
* Visit the Security Check page in your admin area, and fix any warnings that show.  
