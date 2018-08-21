<?php namespace ProcessWire; ?>

<div id='content-body'>

<p class='entry-header'>

<?php // Get Some Icons https://feathericons.com/

  echo icon('user', ['txt' => $page->createdUser->title . ' | ' ]); 

  echo icon('calendar',['txt' => $page->date . ' | ']);
      
  // IF PAGE COMMENTS && $dis_comm == false ( variable from _init.php )
  if(count($page->comments) && $dis_comm == false) {

    $id = $page->comments->last() ? $page->comments->last()->id : '#';

    echo icon('message-circle',
    [
      'txt' => count($page->comments),
      'url' => "$page->url#Comment$id",
    ]);
} ?>

</p>

<?php // Demo img
    echo imgDemo($page,['demo' => true]);?>

<p class="categories">

<?php // Get Some CATEGORIES Icon

echo icon('grid',
  [
    'txt' => ' | ',
    'url' => pages('/categories/')->url,
    'color' => '#9b4dca'
  ]);

// Show CATEGORIES https://processwire.com/api/ref/page-array/each/
  echo $page->categories->each(
    "<a href='{url}'>{title}</a> | "
  ) . ' ... ' ;

// Get Some TAGS Icon
  echo icon('tag',
  [
    'txt' => ' | ',
    'url' => pages('/tags/')->url,
    'color' => '#9b4dca'
  ]);

// Show TAGS https://processwire.com/api/ref/page-array/each/
  echo $page->tags->each(
    "<a href='{url}'>{title}</a> | "
  ) . ' ... ';
  ?>

</p>

<?php 
// Page body field
echo page()->body;

// Prev Next Button
echo prNx($page, 'grid-center');   

 // https://processwire.com/blog/posts/processwire-3.0.107-core-updates/
$links = $page->links();

// If another page has links to this page
if($links->count()) {

  echo "<h3>" . __('You might also like:') . "</h3>";
  echo $links->each("<li><a href={url}>{title}</a></li>");

} ?>

<br>

<?php // $dis_comm == false ( variable from _init.php )
  if($dis_comm == false) {
    
    // Basic Comments + pagination
    echo blogComments($page, 16);

}?>

</div><!-- /#content-body -->

<?php if($dis_comm == false):?>

<pw-region id='bottom-region'>

<link rel='stylesheet' href='<?= urls()->FieldtypeComments;?>comments.css'>
<script defer src='<?= urls()->jquery?>'></script>
<script defer src='<?= urls()->FieldtypeComments;?>comments.min.js'></script>

</pw-region>

<?php endif;?>