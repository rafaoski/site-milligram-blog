<?php namespace ProcessWire; 
$categories = page()->children("limit=22");
// No Found
if(!count($categories)) echo "<h1 id='content-head'>" . page()->ts['noFound'] . "</h1>";?>

<div id='content-body' pw-prepend>

<?php // Start Loop
foreach ($categories as $category) {
// https://processwire.com/blog/posts/processwire-3.0.107-core-updates/
// get all visible pages referencing this page
$count = count($category->references());

// If category has reference to pages
  if($count != 0) {

  echo "<a class='button m-2'
           href='$category->url'>
           $category->title
           ( $count )
         </a>";
  }

}
// Basic Pagination + custom CSS class 'grid'
echo basicPagination($categories,'container grid');?>

</div><!-- /#content-body -->