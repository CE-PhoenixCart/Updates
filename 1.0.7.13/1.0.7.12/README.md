# Instructions for Manually Updating CE Phoenix 1.0.7.11 to 1.0.7.12
## REQUIRED Modules to Remove (aka uninstall):
* None
## REQUIRED SQL:
* https://pastebin.com/Sph70Z28
## Upload update.zip
or
## Perform the following file changes in each commit:
* (https://github.com/gburton/CE-Phoenix/compare/1.0.7.12...1.0.7.13)
## REQUIRED New Modules to Turn On (install):  
* None
## REQUIRED Existing Modules to Turn On (install):
* None
## OPTIONAL Files To Delete (You can choose to delete these if you are not using them):
* None
## REQUIRED Files to delete (You MUST delete these):
* includes/modules/boxes/templates/tpl_bm_reviews.php
* includes/modules/boxes/templates/tpl_bm_specials.php
* includes/classes/category_tree.php
* includes/classes/split_page_results.php
## OPTIONAL Uninstall and then immediately Reinstall Modules:
* None 
## After Update:
* Visit the Security Check page in your admin area, and fix any warnings that show.