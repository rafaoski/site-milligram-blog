<?php namespace ProcessWire;
$og_pref = page()->opt['og_seo'] ? page()->opt['og_pref'] : '';?>
<!DOCTYPE html>
<html lang='<?=page()->opt['l_pref'];?>'<?=$og_pref;?>>
<head id='html-head'>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="format-detection" content="telephone=no">
    <link rel="icon" href="<?=page()->opt['favicon_url'];?>"/>
	<title id='html-title'><?=page('headline|title');?></title>
	<meta name="description" content="<?=page()->summary;?>">

<?php // https://weekly.pw/issue/222/
if(config()->pagerHeadTags) echo config()->pagerHeadTags . "\n";
// https://processwire.com/blog/posts/processwire-2.6.18-updates-pagination-and-seo/
if(input()->pageNum > 1) echo "\t<meta name='robots' content='noindex,follow'>\n";
// Simple Open Graph Seo
echo ogSeo(page());
// Include Lang tag 
wireIncludeFile("inc/_link-tag",['home' => $home]);?>

    <!-- BASIC STYLESHEET -->
    <link rel="stylesheet" href="<?=page()->opt['app_css'];?>"/>

   <!-- CUSTOM STYLE -->
   <style id='head-style'>

    /* Simple Honeypot Contact Form */
        .hide-robot {
            display: none;
        }
        
        /* List style for Tags */
        .page-children.<?=page()->opt['tag_p']->name;?> {
            list-style: none;
        }

        /* eliminate horizontal scrollbars */
        .grid {
                margin-right: auto;
                margin-left: auto;
            }
    
    </style>

<?php // Google Webmaster Verification Code

 $code = page()->opt['verification_code'];

 if($code) echo "<meta name='google-site-verification' content='$code' />\n";?>

</head>

<body id='html-body' class='<?=page()->template?>'>

<!-- MASTHEAD -->
<header id='header'>

	<!-- NAV MENU -->
	<nav id='main-menu' class='grid container-medium'>

     <?php  // Some Options
        echo burgerNav($home,
         [  
            'logo_url' => page()->opt['logo_url'],
		 // Show Site Name if logo_url is uncomment
            'alt' => page()->ts['logo_alt'],
			'brand' => page()->opt['s_name'],
         ]
     )?>

	</nav>

	<!-- BREADCRUMBS -->
	<div id='breadcrumbs' class='bcrumbs container-fluid'>

        <?=breadCrumb(page())?>

	</div>

</header>