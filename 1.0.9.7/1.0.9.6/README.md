# Instructions for Manually Updating CE Phoenix 1.0.9.6 to 1.0.9.7

## REQUIRED Modules to Remove (AKA uninstall):
* None

## OPTIONAL Modules to Remove (AKA uninstall):
* None

## REQUIRED SQL:
* https://github.com/CE-PhoenixCart/Updates/raw/master/1.0.9.7/1.0.9.6/update.sql

## OPTIONAL SQL:
* This SQL should be performed if you enable the Bootstrap 5 Template
* https://github.com/CE-PhoenixCart/Updates/raw/master/1.0.9.7/1.0.9.6/update_optional.sql

## Upload https://github.com/CE-PhoenixCart/Updates/raw/master/1.0.9.7/1.0.9.6/update.zip
or
## Perform the following file changes in each commit:
* (https://github.com/CE-PhoenixCart/PhoenixCart/compare/1.0.9.6...1.0.9.7)

## REQUIRED New Modules to Turn On (AKA install):
* None

## REQUIRED Existing Modules to Turn On (AKA install, note that these modules may already be installed):
* None

## OPTIONAL Install Modules:
* includes/modules/content/account/cm_gdpr_nuke.php
* includes/modules/content/gdpr/cm_gdpr_acceptance_data.php
* includes/modules/content/gdpr/cm_gdpr_cart.php
* includes/modules/content/gdpr/cm_gdpr_cookies.php
* includes/modules/content/gdpr/cm_gdpr_ip_addresses.php
* includes/modules/content/gdpr/cm_gdpr_notifications.php
* includes/modules/content/gdpr/cm_gdpr_orders.php
* includes/modules/content/gdpr/cm_gdpr_port_my_data.php
* includes/modules/content/gdpr/cm_gdpr_reviews.php
* includes/modules/content/gdpr/cm_gdpr_testimonials.php
* includes/modules/pi/product_info/pi_qty_input.php

## OPTIONAL Files To Delete (You can choose to delete these if you are not using them):
* None

## REQUIRED Files to delete (You MUST delete these):
* None

## REQUIRED After Update:
* Visit the Security Check page in your admin area, and fix any warnings that show.
