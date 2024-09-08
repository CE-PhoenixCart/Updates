# Instructions for Manually Updating CE Phoenix 1.0.9.5 to 1.0.9.6

## REQUIRED Modules to Remove (AKA uninstall):
* None

## OPTIONAL Modules to Remove (AKA uninstall):
* None

## REQUIRED SQL:
* https://github.com/CE-PhoenixCart/Updates/raw/master/1.0.9.6/1.0.9.5/update.sql

## Upload https://github.com/CE-PhoenixCart/Updates/raw/master/1.0.9.6/1.0.9.5/update.zip
or
## Perform the following file changes in each commit:
* (https://github.com/CE-PhoenixCart/PhoenixCart/compare/1.0.9.5...1.0.9.6)

## REQUIRED New Modules to Turn On (AKA install, note that these modules may already be installed):
* includes/modules/header_tags/ht_outgoing.php

## REQUIRED Existing Modules to Turn On (AKA install):
* None

## OPTIONAL Install Modules:
* None

## OPTIONAL Files To Delete (You can choose to delete these if you are not using them):
* None

## REQUIRED Files to delete (You MUST delete these):
* None

## REQUIRED After Update:
* Visit the Security Check page in your admin area, and fix any warnings that show.

## OPTIONAL (though recommended) After Update:
* Visit admin/outgoing_tpl.php to change the text of each outgoing e-mail.
* Set "E-mail From" at admin > Configuration > E-Mail Options  
