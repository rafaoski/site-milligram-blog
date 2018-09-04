<?php namespace ProcessWire;
// as a convenience, set location of our 3rd party resources (Jquery)
urls()->set('jquery', 'wire/modules/Jquery/JqueryCore/JqueryCore.js');

// Custom options
page()->opt = [

/**
 *
 * Enable / Disable => Demo Image
 *
 */
'demoImage' => true,

/**
 *
 * Image Size
 *
 */
'thumbnail' => 180, // ./inc/user-info.php ( ./fields/img-thumb )

'small'     => 480, // blog.php, latest-posts.php, basic-page.php, category.php, tag.php ( ./fields/img-small )

'medium'    => 640, // blog.php, basic-page.php ( ./fields/img-medium )

'large'     => 1200, // ./inc/_head.php

/**
 *
 * Enable / Disable => Comments
 *
 */
'enableComments' => pages('/options/')->check_1,

/**
 *
 * Enable / Disable => User Info in a single blog entry
 *
 */
'userInfo' => true,

/**
 *
 * Get Pages ( If you change the names of the pages, you should probably also rewrite those path names )
 * Like ( /news/ ) And the German version ( /nachrichten/ )
 *
 */
'home' => pages()->get('/'), // Get Home Page

'blogPage' => pages("/blog/"), // Blog Page

'categoryPage' =>  pages('/categories/'), // Categories Page

'tagsPage' =>  pages('/tags/'), // Tags page

'archivesPage' => pages('/archives/'), // Archive Page

'aboutPage' => pages('/about/'), // About Page

'newsPage' => pages('/news/'), // News Page

'contactPage' => pages('/contact/'), // Contact Page

'privacyPage' => pages('/privacy-policy/'), // Privacy Page

'optionsPage' => pages('/options/'), // Options Page

/**
 *
 * Options => ( ./_head.php )
 *
 */
// Logo url
'logoUrl' => urls()->templates . "dist/img/logo.png",

// Get Favicon
'faviconUrl' => urls()->templates . "dist/img/favicon.png",

// Get main CSS file
'appCss' => urls()->templates . "dist/app.css",

// Add Google Webmaster Verification Code https://kb.yoast.com/kb/how-to-connect-your-website-to-google-webmaster-tools/
'verificationCode' => '', // Paste Your Code

/**
 *
 * Smart SEO
 * Twitter Card
 * https://cards-dev.twitter.com/validator
 *
 */
'smartSeo' => true, // Enable Seo
'cannonicalUrl' => '', // https://www.domain.com
// Twitter Card
'enableTwitter' => true, // Enable Twitter Card
'largeImage' => true,

/**
 *
 * Archive Options
 *
 */
'archiveDate' => 2017, // Start Date => Archives inside ( archives.php ) Basic Page
'sidebarDate' => 2017, // Start Date => Archives inside Sidebar ( _main.php )

/**
 *
 * Footer Options
 *
 */
// Add Google Fonts
'googleFonts' => ['Roboto','Montserrat','Righteous'],

// Google Analytics Code
'gaCode' => '', // To Enable put Google Analytics Code

];