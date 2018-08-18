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
  echo icon([
      'icon'=> 'user', // https://feathericons.com/
      'txt' => $post->createdUser->title . ' | ',
    ]); 
    
// Get created date ( from field date )
  echo icon([
      'icon'=> 'calendar',  
      'txt' => $post->date . ' | ',
  ]); 

// IF COMMENTS
  if(count($post->comments)) {

    $id = $post->comments->last() ? $post->comments->last()->id : '#';

    echo icon([
      'icon'=> 'message-circle', // https://feathericons.com/
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

<div id="page-children">

<?=catTag($pages->get('/categories/'), 
          [
            // 'txt' => __('Categories'),
            'limit' => 16,
          ] 
        );?>

<?=catTag($pages->get('/tags/'), 
          [
            // 'txt' => __('Tags'),
            'limit' => 16,
            'ul_cl' => 'grid', // Element <ul class='grid'
            'li_cl' => 'col', // Element <li class='col'
            'class' => 'button button-outline', // Element <a class='button button-outline',
            'random' => true // Randomize Items
          ] 
        );?>

</div><!-- /#page-children -->