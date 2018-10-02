<?php

/**
 * @file
 * Enables modules and site configuration for a opigno_lms site installation.
 */

/**
 * Implements hook_preprocess_template().
 */
function opigno_lms_preprocess_install_page(&$variables) {
  $variables['site_version'] = '2.0 RC2';
}
