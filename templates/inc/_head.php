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
    <meta id='og-image' property='og:image' content='<?=count(page()->images) ? $page->images->first->httpUrl() : ''?>'/>
<?php endif; // End Open Graph Seo
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

    </style>

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