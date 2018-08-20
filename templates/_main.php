<?php namespace ProcessWire;
// _main.php template file, called after a page’s template file
// trashDemoData('false'); // Put unnecessary pages into the trash ( change to true ) !!!
$home = pages()->get('/'); // homepage
//  wireIncludeFile => https://processwire.com/blog/posts/processwire-2.5.2/
wireIncludeFile("inc/_head", // Include header
[ // Get Homepage
    'home' => $home,
    // Get Favicon
    'fav_url' => urls()->templates . "dist/img/favicon.png",
    // Logo url
    'logo_url' => urls()->templates . "dist/img/logo.png",
    // Get main CSS file
    'app_css' => urls()->templates . "dist/app.css",
    // Enable Open Graph SEO
    'og_seo' => false
]);?>

<!-- MAIN CONTENT -->
<main id='main' class='container-medium'>

    <div id='cont-main' class="grid c-main">

        <!-- CONTENT -->
        <div id='content' class='col-9_md-12 c-page'>

        <?php if(page()->template != 'home'):?>

            <!-- HEADING -->
            <h1 id='content-head'>

                <?=page()->get('headline|title')?>

            </h1>

        <?php endif; ?>

            <!-- CONTENT BODY -->
            <div id='content-body' class='c-body'>

                <?=page()->body?>

            </div>

        </div><!-- /#content -->

        <!-- SIDEBAR -->
        <aside id='sidebar' class='col sid'>

            <?php // Include Multi Language Menu
                wireIncludeFile("inc/_lang-menu",
                    [ // Get Homepage
                        'home' => $home,
                        'menu_class' => 'lang-menu grid' // <ul class='lang-menu grid'
                    ]);?>

            <!-- SEARCH FORM  -->
            <form id='search' class='s-form' action='<?=pages()->get('template=search')->url?>' method='get'>

                <input type='search' name='q' class='s-input' placeholder='<?= __('Search');?>&hellip;' required>

            </form>

            <?php // Show Sidebar 
               echo page()->sidebar?>

            <div id="page-children">

            <?php // Show Home page Children
                echo pageChildren(pages(1),
                     [
                         'limit'=> 12,
                        //  'random' => true
                    ]
                );

            // Get Categories
                echo catTag($pages->get('/categories/'), 
                    [
                        // 'txt' => __('Categories'),
                        'limit' => 9,
                        'random' => true // Randomize Items
                    ] 
                );

            // Get Tags     
                echo catTag($pages->get('/tags/'), 
                    [
                        // 'txt' => __('Tags'),
                        'limit' => 8,
                        'ul_cl' => 'grid', // Element <ul class='grid'
                        'li_cl' => 'col', // Element <li class='col'
                        'class' => 'button button-outline', // Element <a class='button button-outline',
                        'random' => true // Randomize Items
                    ] 
                    );?>

            </div>

            <?php // Include archives Form
                wireIncludeFile("inc/_archives",
                [ 
                    'enable' => true, // Enable archives Form
                    'title' => __('Select The Archives'),
                    'blog_p' => $pages->get("/blog/"), // Blog page url
                    'arch_p' => pages('/archives/')->url, // Archive page url
                    'start_date' => 2017, // or whenever you want it to start
                    'limit_y' => 3 // Limit archives by year ( show only last 3 year )
                ]);

            // Include contact form
                wireIncludeFile("inc/_c-form", 
                [ 
                    'enable_cf' => false, // Enable contact Form
                    'mail' => 'yourmail@gmail.com', // Email to send message
                    // More Info
                    'c_phone' => '6755464', // Info Phone
                    'c_mail' => 'processwire@gmail.com', // Info E-Mail
                    // Save Message
                    'save_message' => false, // Save mesage to pages
                    'c_parent' => 'contact', // Contact Page
                    'c_item' => 'contact-item', // Template to save message inside body field ( You must create template " contact-item" )
                ]);
            ?>

        </aside><!-- /#sidebar -->

    </div><!-- /#cont-main -->

</main>

<?php wireIncludeFile("inc/_foot", // Include Footer
        [  // Social Profiles ( Icons => https://feathericons.com/ )
            'soc_p' => 
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
            'p_url' => $home->httpUrl . 'privacy-policy', // Cookie Page ( You Must Create Privacy Policy page )
          // Google Analytics Code
            'ga_code' => '' // To Enable put Google Analytics Code
        ]);