<?php namespace ProcessWire;
// $news = pages()->find("parent.name=news, limit=16"); // Example find with name parent page
// $news = pages()->find("template=basic-page, limit=16"); // Example find with template name
$newsPage = page()->opt['newsPage']->name?>

<div id='content-body' class="<?=page()->name == $newsPage ? 'news grid' : 'basic-page';?>">

<?php // If is news Page
if(page()->name == $newsPage) {

echo wireRenderFile("render/child",
[
  'items' => $page->children("limit=12"),
  'class' => 'news-item col-6_sm-12'
]);

} else {

// Show Image
echo getImage(page(),'medium');

// Body field
echo page()->body;

echo wireRenderFile("render/child",
[
  'items' => $page->children("limit=12"),
  'container_class' => 'grid',
  'class' => 'col-4_sm-12',
  'more' => page()->ts['morePages']
]);

}?>

</div><!-- /#content-body -->