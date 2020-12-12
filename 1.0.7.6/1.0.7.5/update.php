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

    const SUFFIX = 'BEFORE1.0.7.6';
    const PAGES = [
      'conditions.php',
      'privacy.php',
      'shipping.php',
    ];

    protected $updater;
    protected $translations = [];

    public function __construct($updater) {
      $this->updater = $updater;
    }

    protected function get_languages() {
      $languages = [];

      $languages_query = $this->updater->query("SELECT languages_id, name, code, image, directory FROM languages ORDER BY sort_order");
      while ($language = $this->updater->fetch_row($languages_query)) {
        $languages[] = [
          'id' => $language['languages_id'],
          'name' => $language['name'],
          'code' => $language['code'],
          'image' => $language['image'],
          'directory' => $language['directory'],
        ];
      }

      return $languages;
    }

    protected function insert($table, $data) {
      $query = 'INSERT INTO ' . $table . ' (' . implode(', ', array_keys($data)) . ') VALUES (';

      foreach ($data as $value) {
        switch ((string)$value) {
          case 'NOW()':
          case 'now()':
            $query .= 'NOW(), ';
            break;
          case 'NULL':
          case 'null':
            $query .= 'NULL, ';
            break;
          default:
            $query .= "'" . $this->updater->db_input($value) . "', ";
            break;
        }
      }

      return $this->updater->query(substr($query, 0, -strlen(', ')) . ')');
    }

    public function copy_files() {
      $languages_directory = $this->updater->value_constant('DIR_FS_CATALOG')
                           . 'includes/languages/';
      foreach ($this->get_languages() as $language) {
        $directory = "$languages_directory{$language['directory']}";
        if (!is_dir($directory)) {
          error_log($directory);
          continue;
        }

        $this->translations[$language['id']] = [];
        foreach (static::PAGES as $page) {
          $path = "$directory/$page";
          $this->updater->copy($path, $path . static::SUFFIX);
          $this->translations[$language['id']][pathinfo($page, PATHINFO_FILENAME)]
            = $path . static::SUFFIX;
        }
      }
    }

    public function do_nothing($ignore) {
      $slug_ids = [];
      foreach (static::PAGES as $page) {
        $slug = $this->updater->prepare_input(pathinfo($page, PATHINFO_FILENAME));
        $page_query = $this->updater->query("SELECT pages_id FROM pages WHERE slug = '" . $this->updater->db_input($slug) . "'");
        if ($page_id = $this->updater->fetch_row($page_query)) {
          $slug_ids[$slug] = $page_id['pages_id'];
        } else {
          $this->updater->insert('pages', [
            'pages_status' => 1,
            'slug' => $slug,
            'sort_order' => 10,
            'date_added' => 'NOW()',
          ]);
          $slug_ids[$slug] = $this->updater->insert_id();
        }
      }

      foreach ($this->translations as $language_id => $slug_locations) {
        foreach ($slug_locations as $slug => $location) {
          $constants = $this->updater->read_constants($location);
          if (empty($constants) || !is_array($constants)) {
            error_log("No constants :$language_id:$slug:$location:");
            continue;
          }

          $this->updater->insert('pages_description', [
            'navbar_title' => $constants['NAVBAR_TITLE'],
            'pages_title' => $constants['HEADING_TITLE'],
            'pages_text' => $constants['TEXT_INFORMATION'],
            'pages_id' => $slug_ids[$slug],
            'languages_id' => $language_id,
          ]);
        }
      }
    }

  }
