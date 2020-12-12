<?php
/*
  $Id$

  osCommerce, Open Source E-Commerce Solutions
  http://www.oscommerce.com

  Copyright (c) 2020 osCommerce

  Released under the GNU General Public License
*/

namespace Phoenix;

  class version_updater {

    const SUFFIX = 'AFTER1.0.7.7';

    protected $updater;
    protected $catalog_location;
    protected $admin_location;

    public function __construct($updater) {
      $this->updater = $updater;
      $this->catalog_location = $this->updater->value_constant('DIR_FS_CATALOG') . 'includes/configure.php';
      $this->admin_location = $this->updater->value_constant('DIR_FS_ADMIN') . 'includes/configure.php';
    }

    public function copy_files() {
      $this->updater->copy($this->catalog_location, $this->catalog_location . 'BEFORE1.0.7.7');
      $this->updater->copy($this->admin_location, $this->admin_location . 'BEFORE1.0.7.7');

      if (true === $this->updater->value_constant('ENABLE_SSL')) {
        $secure = "\n    'secure' => true,";
      } else {
        $secure = '';
      }

      if ('mysql' === $this->updater->value_constant('STORE_SESSIONS')) {
        $session_constant = '';
      } else {
        $session_constant = "const DIR_FS_SESSION = '" . $this->updater->value_constant('SESSION_WRITE_DIRECTORY') . "';\n";
      }

      if (defined('CFG_TIME_ZONE')) {
        $time_zone = "'" . $this->updater->value_constant('CFG_TIME_ZONE') . "'";
      } else {
        $time_zone = 'date_default_timezone_get()';
      }

      $db_server = $this->updater->value_constant('DB_SERVER');
      if ('true' === $this->updater->value_constant('USE_PCONNECT')) {
        $db_server = "p:$db_server";
      }

      $admin_configuration = sprintf(<<<'EOPHP'
<?php
// set the level of error reporting
  error_reporting(%d);

  const HTTP_SERVER = '%s';
  const COOKIE_OPTIONS = [
    'lifetime' => 0,
    'domain' => '%s',
    'path' => '%s',
    'samesite' => 'Lax',%s
  ];
  const DIR_WS_ADMIN = '%s';

  const DIR_FS_DOCUMENT_ROOT = '%s';
  const DIR_FS_ADMIN = '%s';
  const DIR_FS_BACKUP = DIR_FS_ADMIN . 'backups/';

  const HTTP_CATALOG_SERVER = '%s';
  const DIR_WS_CATALOG = '%s';
  const DIR_FS_CATALOG = '%s';

  date_default_timezone_set(%s);
%s
// If you are asked to provide configure.php details
// please remove the data below before sharing
  const DB_SERVER = '%s';
  const DB_SERVER_USERNAME = '%s';
  const DB_SERVER_PASSWORD = '%s';
  const DB_DATABASE = '%s';

EOPHP
        , error_reporting(),
        $this->updater->value_constant('HTTP_SERVER'),
        $this->updater->value_constant('HTTP_COOKIE_DOMAIN'),
        $this->updater->value_constant('HTTP_COOKIE_PATH'),
        $secure,
        $this->updater->value_constant('DIR_WS_ADMIN'),
        $this->updater->value_constant('DIR_FS_DOCUMENT_ROOT'),
        $this->updater->value_constant('DIR_FS_ADMIN'),
        $this->updater->value_constant('HTTP_CATALOG_SERVER'),
        $this->updater->value_constant('DIR_WS_CATALOG'),
        $this->updater->value_constant('DIR_FS_CATALOG'),
        $time_zone,
        $session_constant,
        $db_server,
        $this->updater->value_constant('DB_SERVER_USERNAME'),
        $this->updater->value_constant('DB_SERVER_PASSWORD'),
        $this->updater->value_constant('DB_DATABASE'));

      $catalog_configuration = sprintf(<<<'EOPHP'
<?php
// set the level of error reporting
  error_reporting(%d);

  const HTTP_SERVER = '%s';
  const COOKIE_OPTIONS = [
    'lifetime' => 0,
    'domain' => '%s',
    'path' => '%s',
    'samesite' => 'Lax',%s
  ];

  const DIR_WS_CATALOG = '%s';
  const DIR_FS_CATALOG = '%s';

  date_default_timezone_set(%s);
%s
// If you are asked to provide configure.php details
// please remove the data below before sharing
  const DB_SERVER = '%s';
  const DB_SERVER_USERNAME = '%s';
  const DB_SERVER_PASSWORD = '%s';
  const DB_DATABASE = '%s';

EOPHP
        , error_reporting(),
        $this->updater->value_constant('HTTP_CATALOG_SERVER'),
        parse_url($this->updater->value_constant('HTTP_CATALOG_SERVER'))['host'],
        $this->updater->value_constant('DIR_WS_CATALOG'),
        $secure,
        $this->updater->value_constant('DIR_WS_CATALOG'),
        $this->updater->value_constant('DIR_FS_CATALOG'),
        $time_zone,
        $session_constant,
        $db_server,
        $this->updater->value_constant('DB_SERVER_USERNAME'),
        $this->updater->value_constant('DB_SERVER_PASSWORD'),
        $this->updater->value_constant('DB_DATABASE'));

      $this->updater->write($this->catalog_location . static::SUFFIX, $catalog_configuration);
      $this->updater->write($this->admin_location . static::SUFFIX, $admin_configuration);
    }

    public function delete_files($ignore) {
      if (file_exists($this->catalog_location) && !tep_is_writable($this->catalog_location)) {
        @chmod($catalog_location, 0777);
      }

      if (!file_exists($this->catalog_location) || tep_is_writable($this->catalog_location)) {
        $this->updater->copy($this->catalog_location . static::SUFFIX, $this->catalog_location);
        @chmod($this->catalog_location, 0644);
        if (tep_is_writable($this->catalog_location)) {
          @chmod($this->catalog_location, 0444);
        }
      } else {
        error_log("[{$this->catalog_location}] not writable for [$catalog_configuration]");
      }

      if (file_exists($this->admin_location) && !tep_is_writable($this->admin_location)) {
        @chmod($admin_location, 0777);
      }

      if (!file_exists($this->admin_location) || tep_is_writable($this->admin_location)) {
        $this->updater->copy($this->admin_location . static::SUFFIX, $this->admin_location);
        @chmod($this->admin_location, 0644);
        if (tep_is_writable($this->admin_location)) {
          @chmod($this->admin_location, 0444);
        }
      } else {
        error_log("[{$this->admin_location}] not writable for [$admin_configuration]");
      }
    }

  }
