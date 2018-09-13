<?php namespace ProcessWire; ?>

<div id='content-body'>

<div class='entry-header'>

<?php // Entry Header
echo entryHeader($page);
// Add To Any https://www.addtoany.com/
echo toAny(['t','f','g-p','g-m']);?>

</div><!-- /.entry-header -->

<?=getImage($page,'medium');?>

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
if( page()->opt['enableComments'] == true ) {
// Basic Comments + pagination
echo blogComments($page, 16);
}?>

</div><!-- /#content-body -->

<aside id="sidebar" pw-append>

<?=userInfo(page()->createdUser);?>

<?php wireIncludeFile("inc/_block-blog");?>

</aside>

<?php if(page()->comments && page()->opt['enableComments'] == true):?>

<pw-region id='bottom-region'>

<link rel='stylesheet' href='<?= urls()->FieldtypeComments;?>comments.css'>
<script defer src='<?= urls()->jquery;?>'></script>
<script defer src='<?= urls()->FieldtypeComments;?>comments.min.js'></script>

</pw-region>

<?php endif;