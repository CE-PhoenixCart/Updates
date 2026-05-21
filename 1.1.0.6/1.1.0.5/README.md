# Instructions for Manually Updating CE Phoenix 1.1.0.5 to 1.1.0.6

## REQUIRED Modules to Remove (AKA uninstall):
* None

## OPTIONAL Modules to Remove (AKA uninstall):
* None

## REQUIRED SQL:
* https://github.com/CE-PhoenixCart/Updates/raw/master/1.1.0.6/1.1.0.5/update.sql

## Upload: 
https://github.com/CE-PhoenixCart/Updates/raw/master/1.1.0.6/1.1.0.5/update.zip
or
## Perform the following file changes in each commit:
* (https://github.com/CE-PhoenixCart/PhoenixCart/compare/1.1.0.5...1.1.0.6)

## REQUIRED New Modules to Turn On (AKA install):
* None

## REQUIRED Existing Modules to Turn On (AKA install, note that these modules may already be installed):
* None

## OPTIONAL Install Modules:
* None

## OPTIONAL Files To Delete (You can choose to delete these if you are not using them):
* None

## REQUIRED Files to delete (You MUST delete these):
* admin/stats_products_viewed.php
* admin/includes/languages/english/stats_products_viewed.php
* admin/includes/boxes/reports_stats_products_viewed.php
* admin/includes/languages/english/modules/boxes/reports_stats_products_viewed.php

## REQUIRED Folders to delete (You MUST delete these, including all files in the folder):
* admin/includes/actions/stats_products_viewed/

## REQUIRED After Update:
* Create any missing Info Pages - Admin > Tools > Info Pages
* Fix any security warnings - Admin > Tools > Security Checks
