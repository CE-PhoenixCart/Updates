# Instructions for Manually Updating CE Phoenix 1.0.9.3 to 1.0.9.4

## REQUIRED Modules to Remove (aka uninstall):
* None

## OPTIONAL Modules to Remove (aka uninstall):
* includes/modules/content/index/cm_i_title.php
* includes/modules/content/index/cm_i_text_main.php
* includes/modules/content/index/cm_i_customer_greeting.php
* includes/modules/content/header/cm_header_logo.php
* includes/modules/content/header/cm_header_search.php
* includes/modules/boxes/bm_best_sellers.php
* includes/modules/boxes/bm_categories.php
* includes/modules/boxes/bm_currencies.php
* includes/modules/boxes/bm_information.php
* includes/modules/boxes/bm_languages.php
* includes/modules/boxes/bm_manufacturer_info.php
* includes/modules/boxes/bm_manufacturers.php
* includes/modules/boxes/bm_order_history.php
* includes/modules/boxes/bm_product_notifications.php
* includes/modules/boxes/bm_reviews.php
* includes/modules/boxes/bm_search.php
* includes/modules/boxes/bm_shopping_cart.php
* includes/modules/boxes/bm_specials.php
* includes/modules/boxes/bm_whats_new.php

## REQUIRED SQL:
* https://github.com/CE-PhoenixCart/Updates/raw/master/1.0.9.4/1.0.9.3/update.sql

## Upload https://github.com/CE-PhoenixCart/Updates/raw/master/1.0.9.4/1.0.9.3/update.zip
or
## Perform the following file changes in each commit:
* (https://github.com/CE-PhoenixCart/PhoenixCart/compare/1.0.9.3...1.0.9.4)

## REQUIRED New Modules to Turn On (aka install):
* None

## REQUIRED Existing Modules to Turn On (aka install):
* None

## OPTIONAL New Modules to Turn On (aka install):
* includes/modules/content/header/cm_header_menu.php
* includes/modules/content/index/cm_i_slider.php
* includes/modules/navbar/nb_search.php

## OPTIONAL Files To Delete (You can choose to delete these if you are not using them):
* None

## REQUIRED Files to delete (You MUST delete these):
* None

## After Update:
* Visit the Security Check page in your admin area, and fix any warnings that show.
* If any module looks FUNKY, just uninstall and reinstall, then adjust "Content Container" of the individual module to suit your needs.  
