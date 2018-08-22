<?php namespace ProcessWire;?>
<!DOCTYPE html>
<html lang='<?=_x('en', 'HTML language code');?>'>
<head id='html-head'>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="format-detection" content="telephone=no">
    <link rel="icon" href="<?=$fav_url;?>"/>
	<title id='html-title'><?=page('headline|title');?></title>
	<meta name="description" content="<?=page()->summary;?>">
	<?php // https://weekly.pw/issue/222/
		  echo $config->pagerHeadTags . "\n";?>
<?php // https://processwire.com/blog/posts/processwire-2.6.18-updates-pagination-and-seo/
if(input()->pageNum > 1) echo "\t<meta name='robots' content='noindex,follow'>\n";
// If Enable Open Graph Seo ( _main.php => 'og_seo' => true)
if($og_seo == true):?>
    <meta id='og-title' property="og:title" content="<?=page('headline|title');?>" />
    <meta id='og-desc' property='og:description' content='<?=page()->summary?>'>
    <meta id='og-type' property="og:type" content="website" />
    <meta id='og-url' property="og:url" content="<?=page()->httpUrl?>" />
    <meta property='og:site_name' content='<?=__('Your Site Name');?>'/>
<?php if( page()->images && count(page()->images) ) { // If page has images
    echo "\t<meta id='og-image' property='og:image' content='{$page->images->first->httpUrl()}'/>\n";
}    
endif; // End Open Graph Seo
        wireIncludeFile("inc/_link-tag",['home' => $home]); // Include Lang tag ?>
    <!-- BASIC STYLESHEET -->
    <link rel="stylesheet" href="<?=$app_css;?>"/>

   <!-- CUSTOM STYLE -->
   <style id='head-style'>

    /* Simple Honeypot Contact Form */
        .hide-robot {
            display: none;
        }
        
       /* List style for Tags */
        .page-children.tags {
            list-style: none;
        }

        /* eliminate horizontal scrollbars */
        .grid {
                margin-right: auto;
                margin-left: auto;
            }
    
    </style>

<?php // Add Google Webmaster Verification Code Code https://kb.yoast.com/kb/how-to-connect-your-website-to-google-webmaster-tools/
   if($verification_code) {
    echo "<meta name='google-site-verification' content='$verification_code' />\n";
}?>

</head>

<body id='html-body' class='<?=page()->template?>'>

<!-- MASTHEAD -->
<header id='header'>

	<!-- NAV MENU -->
	<nav id='main-menu' class='grid container-medium'>

     <?=burgerNav($home,
         [  // Some Options
            'logo_url' => $logo_url,
		 // Show Site Name if logo_url is uncomment
            'alt' => __('Awesome Website'),
			'brand' => __('Site Name'),
         ]
     )?>

	</nav>

	<!-- BREADCRUMBS -->
	<div id='breadcrumbs' class='bcrumbs container-fluid'>

        <?=breadCrumb(page())?>

	</div>

</header>