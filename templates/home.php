<?php namespace ProcessWire;
// Render Hero
echo wireRenderFile("render/hero",
      [ 
          'height' => 70, // Height Hero Content ( 70vh full screen - not for mobile screens )
        // Intro
          'intro' =>  page()->title,
          'content' =>  page()->headline,
        // Bottom text and url
          'heroTxtFirst' => page()->ts['heroTxtFirst'], 
          'heroTxtNext' => page()->ts['heroTxtNext'], 
          'heroTxtLast' => page()->ts['heroTxtLast'], 
          'heroUrl' => 'https://processwire.com/',
        // Some Icons
          'icon' => 'github', // https://feathericons.com/
          'iconUrl' => 'https://github.com/processwire',
        // id / class  
          'id' => 'hero',
          'class' => 'hero-content'
      ]);?>

<div id='content-body'>

<?php 
  // Render Grid
    echo wireRenderFile("render/grid",
      [ 
        'item' => page()->opt['aboutPage'], // Render from About page
        'id' => 'home-grid',
        'class' => 'container-fluid'
      ]);

 // Render Latest Posts 
    echo wireRenderFile("render/latest-posts",
      [
        'item' => page()->opt['blogPage'], // Render from Blog page
        'heading' => page()->ts['recent'], // Blog Heading
        'id' => 'latest-posts',
        'class' => 'container-fluid'
      ]);

// body field
echo page('body');?>

</div><!-- /#content-body -->