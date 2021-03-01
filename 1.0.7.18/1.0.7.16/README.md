# Instructions for Manually Updating CE Phoenix 1.0.7.16 to 1.0.7.18
## REQUIRED Modules to Remove (aka uninstall):
* None
## OPTIONAL  Modules to Remove (aka uninstall):
* admin > modules > dashboard > Latest News
## REQUIRED SQL:
* None
## Upload update.zip
or
## Perform the following file changes in each commit:
* (https://github.com/gburton/CE-Phoenix/compare/1.0.7.16...1.0.7.18)
## REQUIRED New Modules to Turn On (install):
* None
## REQUIRED Existing Modules to Turn On (install):
* None
## OPTIONAL Files To Delete (You can choose to delete these if you are not using them):
* None
## REQUIRED Files to delete (You MUST delete these):
* None
## OPTIONAL Uninstall Modules:
* If (and only if) you uninstalled admin > modules > dashboard > Latest News, you can now delete the following files:
admin/includes/languages/english/modules/dashboard/d_latest_news.php
admin/includes/modules/dashboard/d_latest_news.php
## After Update:
* Visit the Security Check page in your admin area, and fix any warnings that show.
