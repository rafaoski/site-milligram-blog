<?php namespace ProcessWire; ?>

<div id='content-body'>

<div class='entry-header'>

<?php // Include file
wireIncludeFile('inc/_entry-header',['item' => page()]);?>

</div><!-- /.entry-header -->

<?php // Demo img
echo imgDemo($page,['demo' => true]);?>

<div class="entry-footer m-1">

<?php // Include file
wireIncludeFile('inc/_entry-footer',['item' => page()]);?>

</div><!-- /.entry-footer -->

<?php // Page body field
echo page()->body;

// Prev Next Button
echo prNx($page, 'grid-center');   

 // https://processwire.com/blog/posts/processwire-3.0.107-core-updates/
$links = $page->links();

// If another page has links to this page
if($links->count()) {

  echo "<h3>" . page()->ts['also_like'] . "</h3>";
  echo $links->each("<li><a href={url}>{title}</a></li>");

} ?>

<br>

<?php // if page has comments
  if( page()->opt['disable_comments'] == false ) {
    
    // Basic Comments + pagination
    echo blogComments($page, 16);

}?>

</div><!-- /#content-body -->

<div id="page-children" class='p-3' pw-prepend>

  <?php 
    wireIncludeFile("inc/_user-info",
      [ 
          'author' => page()->createdUser, // Enable archives Form
      ]); ?>

</div>

<?php if(page()->comments && page()->opt['disable_comments'] == false):?>

<pw-region id='bottom-region'>

<link rel='stylesheet' href='<?= urls()->FieldtypeComments;?>comments.css'>
<script defer src='<?= page()->opt['jquery'];?>'></script>
<script defer src='<?= urls()->FieldtypeComments;?>comments.min.js'></script>

</pw-region>

<?php endif;