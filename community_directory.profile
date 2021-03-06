<?php
// $Id: default.profile,v 1.22 2007/12/17 12:43:34 goba Exp $

/**
 * Return an array of the modules to be enabled when this profile is installed.
 *
 * @return
 *   An array of modules to enable.
 */
function community_directory_profile_modules() {
  return array(

    'help',
    'menu',
    'path',
    'search',
    'taxonomy',
    'update',

    'adminrole',
    'admin_menu',

    'content',
    'fieldgroup',
    'filefield',
    'imagefield',
    'link',
    'number',
    'optionwidgets',
    'nodereference',
    'text',

    'link_options',
    #'google_calendar_basic',

    'ctools',
    'token',

    'date_api',
    'date',
    'date_timezone',

    'features',
    'diff',

    'imageapi',
    'imageapi_gd',
    'imagecache',
    'imagecache_ui',

    'location',
    'location_node',

    'gmap',
    'gmap_location',
    'gmap_taxonomy',
    'geoip',
    #'gmap_legend',

    'advanced_help',

    'boost',

    'pathauto',
    'strongarm',

    #'googleanalytics',
    'vertical_tabs',

    'views',
    'views_ui',

    #'random_splash',
    'bcd_localities',
    'bcd_centers',
    'bcd_states',
    #'bcd_facilities',
    #'bcd_seasonal',
    #'bcd_temple',

  );
}

/**
 * Return a description of the profile for the initial installation screen.
 *
 * @return
 *   An array with keys 'name' and 'description' describing this profile,
 *   and optional 'language' to override the language selection for
 *   language-specific profiles.
 */
function community_directory_profile_details() {
  return array(
    'name' => 'Community Directory',
    'description' => 'Select this profile to enable mapping and single-page listing for localities and other types of data.  Created for Baha\'i communities.  Example: <a href="http://find.bahai.us">find.bahai.us</a>.'
  );
}

/**
 * Return a list of tasks that this profile supports.
 *
 * @return
 *   A keyed array of tasks the profile will perform during
 *   the final stage. The keys of the array will be used internally,
 *   while the values will be displayed to the user in the installer
 *   task list.
 */
function community_directory_profile_task_list() {
}

/**
 * Perform any final installation tasks for this profile.
 *
 * The installer goes through the profile-select -> locale-select
 * -> requirements -> database -> profile-install-batch
 * -> locale-initial-batch -> configure -> locale-remaining-batch
 * -> finished -> done tasks, in this order, if you don't implement
 * this function in your profile.
 *
 * If this function is implemented, you can have any number of
 * custom tasks to perform after 'configure', implementing a state
 * machine here to walk the user through those tasks. First time,
 * this function gets called with $task set to 'profile', and you
 * can advance to further tasks by setting $task to your tasks'
 * identifiers, used as array keys in the hook_profile_task_list()
 * above. You must avoid the reserved tasks listed in
 * install_reserved_tasks(). If you implement your custom tasks,
 * this function will get called in every HTTP request (for form
 * processing, printing your information screens and so on) until
 * you advance to the 'profile-finished' task, with which you
 * hand control back to the installer. Each custom page you
 * return needs to provide a way to continue, such as a form
 * submission or a link. You should also set custom page titles.
 *
 * You should define the list of custom tasks you implement by
 * returning an array of them in hook_profile_task_list(), as these
 * show up in the list of tasks on the installer user interface.
 *
 * Remember that the user will be able to reload the pages multiple
 * times, so you might want to use variable_set() and variable_get()
 * to remember your data and control further processing, if $task
 * is insufficient. Should a profile want to display a form here,
 * it can; the form should set '#redirect' to FALSE, and rely on
 * an action in the submit handler, such as variable_set(), to
 * detect submission and proceed to further tasks. See the configuration
 * form handling code in install_tasks() for an example.
 *
 * Important: Any temporary variables should be removed using
 * variable_del() before advancing to the 'profile-finished' phase.
 *
 * @param $task
 *   The current $task of the install system. When hook_profile_tasks()
 *   is first called, this is 'profile'.
 * @param $url
 *   Complete URL to be used for a link or form action on a custom page,
 *   if providing any, to allow the user to proceed with the installation.
 *
 * @return
 *   An optional HTML string to display to the user. Only used if you
 *   modify the $task, otherwise discarded.
 */
function community_directory_profile_tasks(&$task, $url) {

  // Insert default user-defined node types into the database. For a complete
  // list of available node type attributes, refer to the node type API
  // documentation at: http://api.drupal.org/api/HEAD/function/hook_node_info.
  $types = array(
    array(
      'type' => 'page',
      'name' => st('Page'),
      'module' => 'node',
      'description' => st("A <em>page</em>, similar in form to a <em>story</em>, is a simple method for creating and displaying information that rarely changes, such as an \"About us\" section of a website. By default, a <em>page</em> entry does not allow visitor comments and is not featured on the site's initial home page."),
      'custom' => TRUE,
      'modified' => TRUE,
      'locked' => FALSE,
      'help' => '',
      'min_word_count' => '',
    ),
  );

  foreach ($types as $type) {
    $type = (object) _node_type_set_defaults($type);
    node_type_save($type);
  }

  // Default page to not be promoted and have comments disabled.
  variable_set('node_options_page', array('status'));
  variable_set('comment_page', COMMENT_NODE_DISABLED);

  // Don't display date and author information for page nodes by default.
  $theme_settings = variable_get('theme_settings', array());
  $theme_settings['toggle_node_info_page'] = FALSE;
  variable_set('theme_settings', $theme_settings);

  variable_set('site_frontpage', 'bahai-communities/nearby');
  variable_set('location_usegmap', 1);
  variable_set('gmap_mm_type', 'clusterer');
  $gmap_path = drupal_get_path('module', 'gmap') . '/thirdparty/';
  $gmap_file = $gmap_path . variable_get('gmap_markermanager_clusterer_filename', 'Clusterer2.js');
  if (is_dir($gmap_file)) {
    $gmap_file .= '/Clusterer2.js';
    variable_set('gmap_markermanager_clusterer_filename', 'Clusterer2.js/Clusterer2.js');
  }
  if (!file_exists($gmap_file)) {
    drupal_set_message(t('Clusterer2.js could not be found - Google Maps will not work correctly until you adjust the settings at <a href="/admin/settings/gmap">/admin/settings/gmap</a>.', 'error'));
  }
  variable_set('gmap_markermanager_clusterer_marker', 'zoom');
  variable_set('gmap_markermanager_clusterer_max_nocluster', '100');
  variable_set('gmap_markermanager_clusterer_cluster_min', '10');
  variable_set('gmap_markermanager_clusterer_cluster_mode', 'zoom');
  variable_set('geoip_data_file', 'profiles/community_directory/libraries/geoip/GeoLiteCity.dat');
  

  // Update the menu router information.
  menu_rebuild();
}

/**
 * Implementation of hook_form_alter().
 *
 * Allows the profile to alter the site-configuration form. This is
 * called through custom invocation, so $form_state is not populated.
 */
function community_directory_form_alter(&$form, $form_state, $form_id) {
  if ($form_id == 'install_configure') {
    // Set default for site name field.
    $form['site_information']['site_name']['#default_value'] = $_SERVER['SERVER_NAME'];
  }
}
