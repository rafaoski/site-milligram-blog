<?php namespace ProcessWire;
// Render Hero
echo wireRenderFile("render/hero",
      [ 
          'enable' =>  true,
          'height' => 70, // Height Hero Content ( 70vh full screen - not for mobile screens )
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
          'icon_url' => 'https://github.com/processwire',
        // id / class  
          'id' => 'hero',
          'class' => 'hero-content'
      ]);?>

<div id='content-body'>

<?php 
  // Render Grid
    echo wireRenderFile("render/grid",
      [ 
        'enable' =>  true,
        'item' => page()->opt['about_p'], // Render from About page
        'id' => 'home-grid',
        'class' => 'container-fluid'
      ]);

 // Render Latest Posts 
    echo wireRenderFile("render/latest-posts",
      [ 
        'enable' =>  true,
        'item' => page()->opt['blog_p'], // Render from Blog page
        'heading' => page()->ts['recent'], // Blog Heading
        'id' => 'latest-posts',
        'class' => 'container-fluid'
      ]);

// body field
echo page('body');?>

</div><!-- /#content-body -->