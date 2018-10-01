<?php

/**
 * @file
 * Enables modules and site configuration for a opigno_lms site installation.
 */

/**
 * Implements hook_preprocess_template().
 */
function opigno_lms_preprocess_install_page(&$variables) {
  // Make for Opigno LMS version more user frendly display.
  $project_version = $variables['site_version'];
  $parts = explode('-', $project_version);
  // For rc, alpha, beta versions.
  if (count($parts) == 3) {
    $more_friendly = $parts[1] . ' ' . strtoupper($parts[2]);
    $variables['site_version'] = $more_friendly;
  }
  // For stable version.
  elseif (count($parts) == 2) {
    if (is_numeric($parts[1])) {
      $variables['site_version'] = $parts[1];
    }
  }
}
