<?php namespace ProcessWire;
// Get Phone Number
$phoneNumber = page()->txt_1;
// Get Mail
$contactMail = page()->email;
?>

<!-- CONTENT BODY -->
<div id='content-body'>

<?php // Include contact form
wireIncludeFile("inc/_c-form",
[   'saveMessage' => true, // true or false
    'contactPage' => page(), // Get Contact Page to save items pages('/contact/')
    'contactItem' => 'contact-item', // Template to create item ( It must have a body field )
    'mailTo' => $contactMail ?: 'user@gmail.com', // Send To Mail
    'mailSubject' => page()->ts['mailSubject'], // Mail Subject
]);

// Show basic Body field
echo page()->body;?> 

</div><!-- /#content-body -->

<aside id="sidebar" pw-append>

<?php
// Show more information ( phone, mail )
if($phoneNumber) {

// Phone
  echo icon('phone',
    [
      'txt' => ' ' . $phoneNumber . '<br>',
      'url' =>  "tel:$phoneNumber",
      'width' => 30,
      'height' => 30,
      'color' => '#9b4dca',
      'stroke' => 2
    ]);

}
// Mail   
if($contactMail) {
    
  echo icon('mail',
    [
      'txt' => ' ' . $contactMail,
      'url' =>  "mailto:$contactMail",
      'width' => 30,
      'height' => 30,
      'color' => '#9b4dca',
      'stroke' => 2
    ]);
    
}
?>

</aside>

<style id='head-style' pw-append>
iframe {
   margin-bottom: 20px;
   width: 100%;
   max-height: 400px;
 }
</style>