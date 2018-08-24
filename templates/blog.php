<?php namespace ProcessWire;
// Get Page children
$posts = page()->children('limit=12');?>

<div id='content-body' class="news grid">

<?php foreach ($posts as $post): ?>

<article class='blog-item col-6_sm-12'>

  <a href="<?=$post->url?>">

      <h4><?=$post->title?></h4>
        
  </a>

<div class='entry-header'>

  <?php // Include file
    wireIncludeFile('inc/_entry-header',
    [
    'item' => $post
    ]); ?>

</div>

<a href="<?=$post->url?>">

<?php // View a replacement image from https://picsum.photos/ 

if(page()->opt['demo_img']) {

  echo imgDemo($post,['demo' => true]);

} else {

  echo $post->render('images', 'img-small');

}?>

</a>

<p><?=$post->render('body','txt-small')?></p>

</article>

<?php endforeach;
// https://processwire.com/api/modules/markup-pager-nav/
echo basicPagination($posts, 'container grid');?>

</div><!-- /#content-body -->