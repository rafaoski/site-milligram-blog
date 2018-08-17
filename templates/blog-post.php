<?php namespace ProcessWire; ?>

<div id='content-body'>

<p class='entry-header'><?php // Get Some Icon
  echo icon([
      'icon'=> 'user', // https://feathericons.com/
      'txt' => $page->createdUser->title . ' | ' ]); 

    echo icon([
      'icon'=> 'calendar',  
      'txt' => $page->date . ' | ']);
      
    // IF COMMENTS
  if(count($page->comments)) {

    $id = $page->comments->last() ? $page->comments->last()->id : '#';

    echo icon([
      'icon'=> 'message-circle', // https://feathericons.com/
      'txt' => count($page->comments),
      'url' => "$page->url#Comment$id",
    ]);
} ?></p>

<?php // Demo img
    echo imgDemo($page,['demo' => true]);?>

<div class="categories">

<?php // Get Some CATEGORIES Icon
echo icon([
    'icon'=> 'grid', // https://feathericons.com/
    'txt' => ' | ',
    'url' => pages('/categories/')->url,
    'color' => '#9b4dca'
  ]);
// Show CATEGORIES https://processwire.com/api/ref/page-array/each/
  echo $page->categories->each(
    "<a href='{url}'>{title}</a> | "
  ) . ' ... ' ;

// Get Some TAGS Icon
  echo icon([
    'icon'=> 'tag', // https://feathericons.com/
    'txt' => ' | ',
    'url' => pages('/tags/')->url,
    'color' => '#9b4dca'
  ]);
// Show TAGS https://processwire.com/api/ref/page-array/each/
  echo $page->tags->each(
    "<a href='{url}'>{title}</a> | "
  ) . ' ... ';?>

</div>

<br>

<?php // Page body field
    echo page()->body;

// https://processwire.com/blog/posts/processwire-3.0.107-core-updates/
$links = $page->links(); 
if($links->count()) {

  echo "<h3>" . __('You might also like:') . "</h3>";
  echo $links->each("<li><a href={url}>{title}</a></li>");

} ?>

<br>

<?php // Basic Comments + pagination
    echo blogComments($page, 12);?>

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

<pw-region id='bottom-region'>

<link rel='stylesheet' href='<?php echo urls()->FieldtypeComments;?>comments.css'>
<script defer src='<?php echo urls()->jquery?>'></script>
<script defer src='<?php echo urls()->FieldtypeComments;?>comments.min.js'></script>

</pw-region>