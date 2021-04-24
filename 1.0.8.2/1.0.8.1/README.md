# Instructions for Manually Updating CE Phoenix 1.0.8.1 to 1.0.8.2
## REQUIRED Modules to Remove (aka uninstall):
* None

## OPTIONAL  Modules to Remove (aka uninstall):
* None

## REQUIRED SQL:
* https://github.com/CE-PhoenixCart/Updates/raw/master/1.0.8.2/1.0.8.1/update.sql

## Upload https://github.com/CE-PhoenixCart/Updates/raw/master/1.0.8.2/1.0.8.1/update.zip
or
## Perform the following file changes in each commit:
* (https://github.com/CE-PhoenixCart/PhoenixCart/compare/1.0.8.1...1.0.8.2)

## REQUIRED New Modules to Turn On (install):
* None

## REQUIRED Existing Modules to Turn On (install):
* None

## OPTIONAL Files To Delete (You can choose to delete these if you are not using them):
* admin/.htpasswd_oscommerce
* includes/system/segments/checkout/after.php
* includes/system/segments/checkout/reset.php

## REQUIRED Files to delete (You MUST delete these):
* None

## OPTIONAL Uninstall Modules:
* None

## After Update:
* Visit the Security Check page in your admin area, and fix any warnings that show.  
* If you are using Basic Authentication, before deleting admin/.htpasswd_oscommerce, copy it to admin/.htpasswd_phoenix -- for obvious reasons, you should do this after copying the zip files.  
