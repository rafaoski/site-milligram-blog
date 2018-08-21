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
    'item' => $post,  
    'dis_comm' => $dis_comm //  variable from _init.php
    ]); ?>

</div>

<a href="<?=$post->url?>">

<?php // Img Demo
      echo imgDemo($post,['demo' => true, 'random' => true]);
      // echo $post->render('images', 'img-small'); // Uncomment If no demo images ( from fields/img-medium.php )?>

</a>

<p><?=$post->render('body','txt-small')?></p>

</article>

<?php endforeach;
// https://processwire.com/api/modules/markup-pager-nav/
echo basicPagination($posts, 'container grid');?>

</div><!-- /#content-body -->