# Instructions for Manually Updating CE Phoenix 1.0.8.3 to 1.0.8.4
## REQUIRED Modules to Remove (aka uninstall):
* None

## OPTIONAL  Modules to Remove (aka uninstall):
* None

## REQUIRED SQL:
* https://github.com/CE-PhoenixCart/Updates/raw/master/1.0.8.4/1.0.8.3/update.sql

## Upload https://github.com/CE-PhoenixCart/Updates/raw/master/1.0.8.4/1.0.8.3/update.zip
or
## Perform the following file changes in each commit:
* (https://github.com/CE-PhoenixCart/PhoenixCart/compare/1.0.8.3...1.0.8.4)

## REQUIRED New Modules to Turn On (install):
* None

## REQUIRED Existing Modules to Turn On (install):
* None

## OPTIONAL Files To Delete (You can choose to delete these if you are not using them):
* admin/includes/classes/passwordhash.php
* install/includes/functions/database.php
* install/includes/functions/general.php
* install/includes/functions/html_output.php

## REQUIRED Files to delete (You MUST delete these):
* None

## OPTIONAL Uninstall Modules:
* None

## After Update:
* Visit the Security Check page in your admin area, and fix any warnings that show.  
