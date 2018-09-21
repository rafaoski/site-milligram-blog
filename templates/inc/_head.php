<?php namespace ProcessWire;

?>
<!DOCTYPE html>
<html lang='<?=page()->ts['languageCode'];?>' prefix="og: http://ogp.me/ns#">
<head id='html-head'>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="<?=$options->img_2 ? $options->img_2->url : page()->opt['faviconUrl'];?>"/>
    <title id='html-title'><?=page('headline|title');?></title>
    <meta name="description" content="<?=page()->summary;?>">
<?php // Smart Seo
echo smartSeo(page());
// Lang tag
echo linkTag(pages('/'), $page);?>

   <!-- BASIC STYLESHEET -->
   <link rel="stylesheet" href="<?=page()->opt['appCss'];?>"/>

   <!-- CUSTOM STYLE -->
   <style id='head-style'>
    /* Simple Honeypot Contact Form */
        .hide-robot {
            display: none;
        }

        /* List style for Tags */
        .page-children.<?=page()->opt['tagsPage']->name;?> {
            list-style: none;
        }

        /* eliminate horizontal scrollbars */
        .grid {
                margin-right: auto;
                margin-left: auto;
            }
    </style>

<?=gwCode(page()->opt['verificationCode']);?>
</head>

<body id='html-body' class='<?=page()->template?>'>

<!-- MASTHEAD -->
<header id='header'>

    <!-- NAV MENU -->
    <nav id='main-menu' class='grid container-medium'>

        <?php  // Nav Menu
        echo burgerNav(
            pages('/'),
            [
            'logoUrl' => $options->img_1 ? $options->img_1->url : page()->opt['logoUrl'],
            'alt' => page()->ts['logoAlt'],
            'brand' => $options->headline ? $options->headline : page()->ts['siteName'],
            ]
        )?>

    </nav>

    <!-- BREADCRUMBS -->
    <div id='breadcrumbs' class='bcrumbs container-fluid'>

        <?=breadCrumb(page())?>

    </div>

</header>