<?php namespace ProcessWire;
$contactPage = page()->opt['contactPage']; // Get contact page?>

<!-- CONTENT BODY -->
<div id='content-body'>

<?php // Include contact form
        wireIncludeFile("inc/_c-form",
        [   'saveMessage' => true, // true or false
            'contactPage' => $contactPage, // Get Contact Page to save items pages('/contact/')
            'contactItem' => 'contact-item', // Template to create item ( It must have a body field )
            'mailTo' => $contactPage->email ?: 'user@gmail.com', // Send To Mail
            'contactMail' => $contactPage->email ?: 'user@gmail.com', // Send To Mail ( Bottom Form )
            'phoneNumber' => $contactPage->txt_1 ?: '55-22-36', // Phone Number
            'mailSubject' => page()->ts['mailSubject'], // Mail Subject
        ]);

// If sidebar
if(page()->sidebar):?>

    <div class="col map">

    <br>
        <?php echo page()->sidebar?> 

    </div><!-- /.col map -->

<?php endif; // End if sidebar

// Show basic Body field
echo page()->body;?> 

</div><!-- /#content-body -->

<!-- SIDEBAR -->
<aside id='sidebar'>

<?php // Include sidebar links
    wireIncludeFile('inc/_links');
// Show Archives if is not Archive Page archives.php
    echo '<ul>' . blogArchive(page()->opt['sidebarDate'],'sidebar') . '</ul>';?>

</aside>

<style id='head-style' pw-append>
.map iframe {
   width: 100%;
   max-height: 400px;
 }
</style>