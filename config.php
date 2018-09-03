<?php

/**
 * ProcessWire Configuration File
 *
 * Site-specific configuration for ProcessWire.
 * This config.php file was generated by the ProcessExportProfile module. 
 *
 * Please see the file /wire/config.php which contains all configuration options you may
 * specify here. Simply copy any of the configuration options from that file and paste
 * them into this file in order to modify them.
 *
 * ProcessWire 
 * Copyright (C) 2017 by Ryan Cramer
 * Licensed under MPL 2.0
 *
 * https://processwire.com
 *
 */

if(!defined("PROCESSWIRE")) die();

/*** SITE CONFIG *************************************************************************/

/**
 * Enable debug mode?
 *
 * Debug mode causes additional info to appear for use during dev and debugging.
 * This is almost always recommended for sites in development. However, you should
 * always have this disabled for live/production sites.
 *
 * @var bool
 *
 */
$config->debug = true;

$config->prependTemplateFile = '_init.php';
$config->appendTemplateFile = '_main.php';
$config->useMarkupRegions = true;
$config->useFunctionsAPI = true; 
$config->defaultAdminTheme = 'AdminThemeUikit';

/**
 * Example Custom Config
 * https://processwire.com/api/variables/config/
 * https://processwire.com/blog/posts/pw-3.0.87/#new-field-template-context-settings
 */
// $config->advanced = true; // Advanced Configuration
// $config->demo = true; // Show demo site

// https://processwire.com/blog/posts/pw-3.0.99/
// Given the above, this week I added a new $config setting that lets you disable all HTTPS requirements that may be present in a site:
// $config->noHTTPS = true; 

// // ignore HTTPS for this hostname only:
    // $config->noHTTPS = 'dev.processwire.com';

// // ignore HTTPS for these hostnames:
//     $config->noHTTPS = [
//       'dev.processwire.com',
//       'stage.processwire.com',
//       'localhost:8888',
//     ];

/*** INSTALLER CONFIG ********************************************************************/


