<?php namespace ProcessWire;
// Render Hero Image
echo wireRenderFile("render/hero", // Render Hero Content
      [ // Enable Hero Content
          'enable' =>  true,
          'height' => 70, // Height Hero Content
        // Intro
          'intro' =>  page()->title,
          'content' =>  page()->headline,
        // Bottom text
          'b_first_txt' => __('A friendly and powerful open source CMS'),
          'b_url' => 'https://processwire.com/',
          'b_url_txt' => __('Processwire'),
          'b_last_txt' => __('  With an exceptionally strong API -- '),
        // Some Icons
          'icon' => 'github', // https://feathericons.com/
          'icon_url' => 'https://github.com/processwire'
      ]);?>

<div id='content-body'>

<section id='home-grid' class="container-fluid">

  <?php echo wireRenderFile("render/grid",
        [ // Enable Content Grid
          'enable_grid' =>  true, // Enable Grid Content
        // Render Grid from this page
          'item' => pages('about'),
        ]);?>

</section><!-- /#home-grid -->

<section id='latest-posts' class="container-fluid">

<?php echo wireRenderFile("render/latest-posts",
      [ // Enable Content Grid
        'enable_grid' =>  true, // Enable Grid Content
      // Render Grid from this page
        'item' => pages('blog'),
      // Blog Heading  
        'heading' => __('Show Latest Posts')
      ]);?>

</section><!-- /#home-grid -->

<?php echo page('body');?>

</div><!-- /#content-body -->

<div id="page-children" pw-append>

<?php // Categories
echo catTag($pages->get('/categories/'), 
          [
            // 'txt' => __('Categories'),
            'limit' => 16,
          ] 
        );
// Tags
echo catTag($pages->get('/tags/'), 
          [
            // 'txt' => __('Tags'),
            'limit' => 16,
            'ul_cl' => 'grid', // Element <ul class='grid'
            'li_cl' => 'col', // Element <li class='col'
            'class' => 'button button-outline', // Element <a class='button button-outline',
            'random' => true // Randomize Items
          ] 
        );?>

</div><!-- /#page-children -->