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
'demo_img' => true,

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
'enable_comments' => true,

/**
 *
 * Enable / Disable => User Info ( ./inc/_user-info.php ) in a single blog entry
 *
 */
'user_info' => true,

/**
 *
 * Get Pages ( If you change the names of the pages, you should probably also rewrite those path names )
 * Like ( /news/ ) And the German version ( /nachrichten/ )
 *
 */
'home' => pages()->get('/'), // Get Home Page

'blog_p' => pages("/blog/"), // Blog Page

'cat_p' =>  pages('/categories/'), // Categories Page

'tag_p' =>  pages('/tags/'), // Tags page

'arch_p' => pages('/archives/'), // Archive Page

'about_p' => pages('/about/'), // About Page

'news_p' => pages('/news/'), // News Page

// 'p_url' => pages('/privacy-policy/'), // Privacy Policy

/**
 *
 * Options => ( ./_head.php )
 *
 */
// Get Favicon
'favicon_url' => urls()->templates . "dist/img/favicon.png",

// Logo url
'logo_url' => urls()->templates . "dist/img/logo.png",

// Get main CSS file
'app_css' => urls()->templates . "dist/app.css",

// Enable Open Graph SEO
'og_seo' => false,

// Site Name
's_name' => page()->ts['site_name'],

// Add Google Webmaster Verification Code https://kb.yoast.com/kb/how-to-connect-your-website-to-google-webmaster-tools/
'verification_code' => '', // Paste Your Code

/**
 *
 * Options => ( _archive.php ) ( ./inc/_archives.php )
 *
 */
'enable_archive' => true, // Enable Archives ( ./inc/_archives.php ) Sidebar

'sidebar_start_date' => 2017, // Archives inside sidebar ( ./inc/_archives.php ) Sidebar

'basic_start_date' => 2017, // Archives inside ( archives.php ) Basic Page

/**
 *
 * Options => Contact Form ( ./inc/_c-form.php )
 *
 */
'enable_cf' => false, // Enable contact Form
'your_mail' => 'yourmail@gmail.com', // Email to send message

// More Info
'c_phone' => '6755464', // Info Phone
'c_mail' => 'processwire@gmail.com', // Info E-Mail

// Save Message
'save_message' => false, // Save mesage to pages
'c_parent' => 'contact', // Contact Page
'c_item' => 'contact-item', // Template to save message inside body field ( You must create template " contact-item" )

/**
 *
 * Options Footer => ( ./inc/_foot.php )
 *
 */
'soc_p' =>  // Social Profiles ( Icons => https://feathericons.com/ )
[
 'twitter' => 'https://twitter.com/processwire',
 'facebook' => 'https://pl-pl.facebook.com/processwire/',
 'activity' => 'https://weekly.pw/',
 'youtube' => 'https://www.youtube.com/user/ryancramerdesign/videos',
 'github' => 'https://github.com/processwire/processwire'
],

// Add Google Fonts
'g_fonts' => ['Roboto','Montserrat','Righteous'],

// Privacy Banner // https://cookieconsent.insites.com/
'p_b' => false, // Enable Privacy Banner
'p_url' => pages()->get('/')->httpUrl . 'privacy-policy/', // Cookie Page ( You Must Create Privacy Policy page )

// Google Analytics Code
'ga_code' => '', // To Enable put Google Analytics Code

];