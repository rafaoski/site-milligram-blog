<?php namespace ProcessWire; ?>

<div id='content-body'>

<div class='entry-header'>

<?php // Include file
wireIncludeFile('inc/_entry-header',
[
'item' => page(),  
'dis_comm' => $dis_comm //  variable from _init.php
]); ?>

</div><!-- /.entry-header -->

<?php // Demo img
echo imgDemo($page,['demo' => true]);?>

<div class="entry-footer m-1">

<?php // Include file
wireIncludeFile('inc/_entry-footer',
  ['item' => page()]
);?>

</div><!-- /.entry-footer -->

<?php // Page body field
echo page()->body;

// Prev Next Button
echo prNx($page, 'grid-center');   

 // https://processwire.com/blog/posts/processwire-3.0.107-core-updates/
$links = $page->links();

// If another page has links to this page
if($links->count()) {

  echo "<h3>" . __('You might also like:') . "</h3>";
  echo $links->each("<li><a href={url}>{title}</a></li>");

} ?>

<br>

<?php // $dis_comm == false ( variable from _init.php )
  if($dis_comm == false) {
    
    // Basic Comments + pagination
    echo blogComments($page, 16);

}?>

</div><!-- /#content-body -->

<div id="page-children" class='p-3' pw-prepend>
  <?php 
    wireIncludeFile("inc/_user-info",
      [ 
          'author' => $user, // Enable archives Form
          ''
      ]); ?>


</div>

<?php if($dis_comm == false):?>

<pw-region id='bottom-region'>

<link rel='stylesheet' href='<?= urls()->FieldtypeComments;?>comments.css'>
<script defer src='<?= urls()->jquery?>'></script>
<script defer src='<?= urls()->FieldtypeComments;?>comments.min.js'></script>

</pw-region>

<?php endif;?>