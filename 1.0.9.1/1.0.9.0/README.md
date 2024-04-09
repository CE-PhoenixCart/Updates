# Instructions for Manually Updating CE Phoenix 1.0.9.0 to 1.0.9.1

## REQUIRED Modules to Remove (aka uninstall):
* None

## OPTIONAL Modules to Remove (aka uninstall):
* None

## REQUIRED SQL:
* https://github.com/CE-PhoenixCart/Updates/raw/master/1.0.9.1/1.0.9.0/update.sql

## Upload https://github.com/CE-PhoenixCart/Updates/raw/master/1.0.9.1/1.0.9.0/update.zip
or
## Perform the following file changes in each commit:
* (https://github.com/CE-PhoenixCart/PhoenixCart/compare/1.0.9.0...1.0.9.1)

## REQUIRED New Modules to Turn On (install):
* None

## REQUIRED Existing Modules to Turn On (install):
* None

## OPTIONAL Install Modules:
* None

## OPTIONAL Files To Delete (You can choose to delete these if you are not using them):
* None

## REQUIRED Files to delete (You MUST delete these):
* admin/includes/functions/autoloader.php
* admin/includes/functions/compatibility.php
* admin/includes/functions/database.php
* admin/includes/functions/general.php
* admin/includes/functions/html_output.php
* admin/includes/functions/languages.php
* admin/includes/functions/password_funcs.php
* admin/includes/functions/sessions.php
* admin/includes/functions/validations.php
* includes/functions/autoloader.php
* includes/functions/database.php
* includes/functions/general.php
* includes/functions/href_link.php
* includes/functions/html_output.php
* includes/functions/image.php
* includes/functions/password_funcs.php
* includes/functions/sessions.php
* includes/functions/validations.php
* includes/system/versioned/1.0.7.9/osc_template.php

## After Update:
* Visit the Security Check page in your admin area, and fix any warnings that show.  
