<?php namespace ProcessWire;
// Get Pages if Has Categories
$posts = page()->opt['blogPage']->children("tags=$page, limit=16");
// No Found
if(!count($posts)) echo "<h1 id='content-head'>" . page()->ts['noFound'] . "</h1>";?>

<div id='content-body' class="category grid" pw-prepend>

<?php // Start Loop
foreach ($posts as $post): ?>

<article class='col-6_sm-12'>

<a href="<?=$post->url?>">

<h3><?=$post->title?></h3>

<?=getImage($post,'small');?>

</a>

<br>

<p><?=$post->render('body','txt-small')?></p>

<div class="entry-footer m-1">

  <?=entryFooter($post);?>

</div>

</article>

<?php endforeach;

// Basic Pagination + custom CSS class 'grid'
echo basicPagination($posts, 'container grid');?>

</div><!-- /#content-body -->

<aside id="sidebar" pw-append>

<?php wireIncludeFile("inc/_block-blog");?>

</aside>