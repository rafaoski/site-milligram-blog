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
'enableComments' => true,

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

/**
 *
 * Options => ( ./_head.php )
 *
 */
// Get Favicon
'faviconUrl' => urls()->templates . "dist/img/favicon.png",

// Logo url
'logoUrl' => urls()->templates . "dist/img/logo.png",

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
 * Options => Contact Form ( ./inc/_c-form.php )
 *
 */
'enableMail' => false, // Enable contact Form
'mailTo' => 'yourmail@gmail.com', // Email to send message
// More Info
'contactPhone' => '6755464', // Info Phone
'contactMail' => 'processwire@gmail.com', // Info E-Mail
// Save Message
'saveMesage' => false, // Save mesage to pages
'contactPage' => pages('/contact/'), // Get Contact Page ( You must create contact Page " Contact " )
'contactItem' => 'contact-item', // Template to save message ( You must create template " contact-item " with body field )

/**
 *
 * Options Footer => ( ./inc/_foot.php )
 *
 */
'socialProfile' =>  // Social Profiles ( Icons => https://feathericons.com/ )
[
 'twitter' => 'https://twitter.com/processwire',
 'facebook' => 'https://pl-pl.facebook.com/processwire/',
 'activity' => 'https://weekly.pw/',
 'youtube' => 'https://www.youtube.com/user/ryancramerdesign/videos',
 'github' => 'https://github.com/processwire/processwire'
],

// Add Google Fonts
'googleFonts' => ['Roboto','Montserrat','Righteous'],

// Privacy Banner // https://cookieconsent.insites.com/
'enablePrivacy' => false, // Enable Privacy Banner
'privacyUrl' => pages()->get('/')->httpUrl . 'privacy-policy/', // Cookie Page ( You Must Create Privacy Policy page )
// 'privacyUrl' => pages('/privacy-policy/')->url, // Privacy Policy Url ( If you created )

// Google Analytics Code
'gaCode' => '', // To Enable put Google Analytics Code

];