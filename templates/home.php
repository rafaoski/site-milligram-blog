<?php namespace ProcessWire;
// Render Hero Image
echo wireRenderFile("render/hero", // Render Hero Content
      [ // Enable Hero Content
          'enable' =>  true,
          'height' => 70, // Height Hero Content
        // Intro
          'intro' =>  page()->title,
          'content' =>  page()->headline,
        // Bottom text and url
          'first_txt' => page()->ts['first_txt'], 
          'next_txt' => page()->ts['next_txt'], 
          'last_txt' => page()->ts['last_txt'], 
          'b_url' => 'https://processwire.com/',
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
          'item' => pages('about')
        ]);?>

</section><!-- /#home-grid -->

<section id='latest-posts' class="container-fluid">

<?php echo wireRenderFile("render/latest-posts",
      [ // Enable Content Grid
        'enable_grid' =>  true, // Enable Grid Content
      // Render Grid from this page
        'item' => pages('blog'),
      // Blog Heading  
        'heading' => page()->ts['recent']
      ]);?>

</section><!-- /#home-grid -->

<?php echo page('body');?>

</div><!-- /#content-body -->