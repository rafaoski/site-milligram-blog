<?php namespace ProcessWire;
 // Get contact page
$contactPage = page()->opt['contactPage'];
// Render Hero
echo wireRenderFile("render/hero",
[   'height' => 70, // Height Hero Content ( 70vh full screen - not for mobile screens )
  // Intro
    'intro' =>  page()->title,
    'content' =>  page()->headline,
  // Bottom text and url
    'heroTxtFirst' => page()->ts['heroTxtFirst'], 
    'heroTxtNext' => page()->ts['heroTxtNext'], 
    'heroTxtLast' => page()->ts['heroTxtLast'], 
  // Some Icons
    'icon' => 'github', // https://feathericons.com/
    'iconUrl' => 'https://github.com/processwire/processwire/'
]);?>

<div id='content-body'>

<?php 
// Render Grid
echo wireRenderFile("render/grid",
[
  'item' => page()->opt['aboutPage'], // Render from About page
]);

// Render Latest Posts 
echo wireRenderFile("render/latest-posts",
[ 
  'item' => page()->opt['blogPage'], // Render from Blog page
  'heading' => page()->ts['recent'], // Blog Heading
]);

// body field
echo page('body');?>

</div><!-- /#content-body -->

<aside id="sidebar" pw-append>

<?php // Include contact form
    wireIncludeFile("inc/_c-form",
    [   'saveMessage' => true, // true or false
        'contactPage' => $contactPage, // Get Contact Page to save items pages('/contact/')
        'contactItem' => 'contact-item', // Template to create item ( It must have a body field )
        'mailTo' => $contactPage->email ?: 'user@gmail.com', // Send To Mail
        'mailSubject' => page()->ts['mailSubject'], // Mail Subject
    ]);

// Show Home page Children
    echo pageChildren(pages(1),
    [
        'limit'=> 12,
    //  'random' => true
    ]
);
?>

</aside>