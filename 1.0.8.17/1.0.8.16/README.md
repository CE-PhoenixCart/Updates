# Instructions for Manually Updating CE Phoenix 1.0.8.16 to 1.0.8.17
## REQUIRED Modules to Remove (aka uninstall):
* None

## OPTIONAL  Modules to Remove (aka uninstall):
* None

## REQUIRED SQL:
* https://github.com/CE-PhoenixCart/Updates/raw/master/1.0.8.17/1.0.8.16/update.sql

## Upload https://github.com/CE-PhoenixCart/Updates/raw/master/1.0.8.17/1.0.8.16/update.zip
or
## Perform the following file changes in each commit:
* (https://github.com/CE-PhoenixCart/PhoenixCart/compare/1.0.8.16...1.0.8.17)

## REQUIRED New Modules to Turn On (install):
* None

## REQUIRED Existing Modules to Turn On (install):
* None

## OPTIONAL Install Modules:
* None

## OPTIONAL Files To Delete (You can choose to delete these if you are not using them):
* admin/includes/languages/english/modules/boxes/layout.php
* admin/includes/languages/english/modules/boxes/layout_pi.php
* admin/includes/languages/english/modules/boxes/modules_content.php
* admin/includes/languages/english/modules_content.php
* admin/includes/languages/english/modules_pi.php
* admin/modules_content.php
* admin/modules_pi.php

## REQUIRED Files to delete (You MUST delete these):
* admin/includes/boxes/layout.php
* admin/includes/boxes/layout_pi.php
* admin/includes/boxes/modules_content.php

## After Update:
* Visit the Security Check page in your admin area, and fix any warnings that show.  
