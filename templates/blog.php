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

  <?=entryHeader($post);?>

</div>

<a href="<?=$post->url?>">

<?=getImage($post,'small');?>

</a>

<p><?=$post->render('body','txt-small')?></p>

</article>

<?php endforeach;
// https://processwire.com/api/modules/markup-pager-nav/
echo basicPagination($posts, 'container grid');?>

</div><!-- /#content-body -->