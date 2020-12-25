# Instructions for Manually Updating CE Phoenix 1.0.7.11 to 1.0.7.12
## REQUIRED Modules to Remove (aka uninstall):
* None
## REQUIRED SQL:
* https://pastebin.com/ZmEnVX1P
## Upload update.zip
or
## Perform the following file changes in each commit:
* (https://github.com/gburton/CE-Phoenix/compare/1.0.7.11...1.0.7.12)
## REQUIRED New Modules to Turn On (install):  
* None
## REQUIRED Existing Modules to Turn On (install):
* None
## OPTIONAL Files To Delete (You can choose to delete these if you are not using them):
* None
## REQUIRED Files to delete (You MUST delete these):
* admin/includes/classes/language.php
* includes/modules/boxes/templates/tpl_bm_whats_new.php
## OPTIONAL Uninstall and then immediately Reinstall Modules:
* All Navbar modules. 
## After Update:
* Visit the Security Check page in your admin area, and fix any warnings that show.