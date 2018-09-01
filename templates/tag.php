<?php namespace ProcessWire;
// Get Pages if Has Categories
$posts = page()->opt['blog_p']->children("tags=$page, limit=16");?>

<div id='content-body' class="category grid" pw-prepend>

<?php foreach ($posts as $post): ?>

<article class='col-6_sm-12'>

<a href="<?=$post->url?>">

<h3><?=$post->title?></h3>

<?php // View a replacement image from https://picsum.photos/

if(page()->opt['demo_img']) {

    echo imgDemo($post);

} else {

    echo $post->render('images', 'img-small');

}?>

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