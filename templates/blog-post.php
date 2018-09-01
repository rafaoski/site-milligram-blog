<?php namespace ProcessWire; ?>

<div id='content-body'>

<div class='entry-header'>

<?=entryHeader($page);?>

</div><!-- /.entry-header -->

<?php // View a replacement image from https://picsum.photos/
if(page()->opt['demo_img']) {

  echo imgDemo(page());

} else {
  
  echo page()->render('images', 'img-medium');}?>

<div class="entry-footer m-1">

<?=entryFooter($page);?>

</div><!-- /.entry-footer -->

<?php // Body field
echo page()->body;
// Prev Next Button
echo prNx($page, 'grid-center');
// https://processwire.com/blog/posts/processwire-3.0.107-core-updates/
echo articleLinks($page);
// If enable comments ( _options.php )
if( page()->opt['enable_comments'] == true ) {
// Basic Comments + pagination
echo blogComments($page, 16);
}?>

</div><!-- /#content-body -->

<div id="sidebar" class='p-3' pw-prepend>

  <?=userInfo(page()->createdUser);?>

</div><!-- /#page-children -->

<?php if(page()->comments && page()->opt['enable_comments'] == true):?>

<pw-region id='bottom-region'>

<link rel='stylesheet' href='<?= urls()->FieldtypeComments;?>comments.css'>
<script defer src='<?= urls()->jquery;?>'></script>
<script defer src='<?= urls()->FieldtypeComments;?>comments.min.js'></script>

</pw-region>

<?php endif;