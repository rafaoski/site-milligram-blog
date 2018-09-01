<?php namespace ProcessWire;

// as a convenience, set location of our 3rd party resources (Jquery)
urls()->set('jquery', 'wire/modules/Jquery/JqueryCore/JqueryCore.js');

// https://processwire.com/api/ref/languages/get-locale/
if(page()->getLanguages()) {

    foreach ($languages as $lang) {

        $page_url = page()->localHttpUrl($lang);

        if(page()->httpUrl == $page_url) {
        // Seo Locale <meta property='og:locale' content='en_US'/>
            $page_locale = substr(languages()->getLocale('LC_ALL',$lang->name),0,5);
        // Language Prefix <html lang='en'>
            $lang_code = substr($page_locale, 0, 2);
        }

    }

} else {
// Seo Locale <meta property='og:locale' content='en_US'/>
    $page_locale = page()->ts['locale'];
// Language Prefix <html lang='en'
    $lang_code = page()->ts['lang_code'];
}

// Custom options
page()->opt = [

/**
 *
 * Language Options ( set <html lang='en'>, <meta property='og:locale' content='en_US'/> )
 *
 */
'locale' => $page_locale, // Inside _func.php => function smartSeo()
'l_pref' => $lang_code, // Inside _head.php <html lang='l_pref'

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
 * Enable / Disable => User Info in a single blog entry
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

// Add Google Webmaster Verification Code https://kb.yoast.com/kb/how-to-connect-your-website-to-google-webmaster-tools/
'verification_code' => '', // Paste Your Code

/**
 *
 * Smart SEO
 * Twitter Card
 * https://cards-dev.twitter.com/validator
 *
 */
'smart_seo' => true, // Enable Seo
's_name' => page()->ts['site_name'], // Site Name
'cannonical_url' => '', // https://www.domain.com
// Twitter Card
'enable_tw' => true, // Enable Twitter Card
'large_image' => true,

/**
 *
 * Options => ( _archive.php ) ( ./inc/_archives.php )
 *
 */
'enable_archive' => true, // Enable Archives ( ./inc/_archives.php ) Sidebar

'archive_date' => 2017, // Archives inside ( archives.php ) Basic Page

'sidebar_date' => 2017, // Archives inside Sidebar ( _main.php )

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
// 'p_url' => pages('/privacy-policy/')->url, // Privacy Policy Url ( If you created )

// Google Analytics Code
'ga_code' => '', // To Enable put Google Analytics Code

];