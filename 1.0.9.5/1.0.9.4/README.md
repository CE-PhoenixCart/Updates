# Instructions for Manually Updating CE Phoenix 1.0.9.4 to 1.0.9.5
## REQUIRED Modules to Remove (aka uninstall):
* None

## OPTIONAL  Modules to Remove (aka uninstall):
* None

## REQUIRED SQL:
* https://github.com/CE-PhoenixCart/Updates/raw/master/1.0.9.5/1.0.9.4/update.sql

## Upload https://github.com/CE-PhoenixCart/Updates/raw/master/1.0.9.5/1.0.9.4/update.zip
or
## Perform the following file changes in each commit:
* (https://github.com/CE-PhoenixCart/PhoenixCart/compare/1.0.9.4...1.0.9.5)

## REQUIRED New Modules to Turn On (aka install):
* includes/modules/content/contact_us/cm_cu_title.php
* includes/modules/content/contact_us/cm_cu_modular.php
* includes/modules/pi/contact_us/cu_form.php

## REQUIRED Existing Modules to Turn On (aka install):
* None

## OPTIONAL Install Modules:
* None

## OPTIONAL Files To Delete (You can choose to delete these if you are not using them):
* None

## REQUIRED Files to delete (You MUST delete these):
* admin/define_language.php
* admin/includes/boxes/tools_define_language.php
* admin/includes/languages/english/define_language.php
* admin/includes/languages/english/modules/boxes/tools_define_language.php
* includes/languages/english/info_shopping_cart.php

## After Update:
* Visit the Security Check page in your admin area, and fix any warnings that show.  
