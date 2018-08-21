<?php namespace ProcessWire;
// Get Page children
$posts = page()->children('limit=12');?>

<div id='content-body' class="news grid">

<?php foreach ($posts as $post): ?>

<article class='blog-item col-4_md-6_sm-12'>

  <a href="<?=$post->url?>">

        <h4><?=$post->title?></h4>
        
  </a>

  <small>

  <?php // Get Some User from user Profile
      echo icon('user', // https://feathericons.com/
        [
          'txt' => $post->createdUser->title . ' | ',
        ]); 
        
    // Get created date ( from field date )
      echo icon('calendar',
      [
          'txt' => $post->date . ' | ',
      ]); 

    // IF POST COMMENTS && $dis_comm == false ( variable from _init.php )
      if(count($post->comments) && $dis_comm == false) {

        $id = $post->comments->last() ? $post->comments->last()->id : '#';

        echo icon('message-circle',
        [
          'txt' => count($post->comments),
          'url' => "$post->url#Comment$id",
        ]);
    }
  ?>

  </small>

<a href="<?=$post->url?>">

<?php // Img Demo
      echo imgDemo($post,['demo' => true, 'random' => true]);?>

</a>

  <br><?=$post->render('body','txt-small')?></p>

  <a href="<?=$post->url?>"><?=__('Read More');?></a>

</article>

<?php endforeach;
// Basic Pagination + custom CSS class 'grid'
// https://processwire.com/api/modules/markup-pager-nav/
echo basicPagination($posts, 'container grid');?>

</div><!-- /#content-body -->