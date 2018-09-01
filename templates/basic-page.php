<?php namespace ProcessWire;
// $news = pages()->find("parent.name=news, limit=16"); // Example find with name parent page
// $news = pages()->find("template=basic-page, limit=16"); // Example find with template name
$news_p = page()->opt['news_p']->name?>

<div id='content-body' class="<?=page()->name == $news_p ? 'news grid' : 'basic-page';?>">

<?php // If is news Page
if(page()->name == $news_p) {

echo wireRenderFile("render/child",
[
  'items' => $page->children("limit=12"),
  'class' => 'news-item col-6_sm-12'
]);

} else {

if(page()->opt['demo_img']) {

  echo imgDemo(page());

} else {

  echo page()->render('images', 'img-medium');

}

echo page()->body;

echo wireRenderFile("render/child",
[
  'items' => $page->children("limit=12"),
  'container_class' => 'grid',
  'class' => 'col-4_sm-12',
  'more' => page()->ts['more_pages']
]);

}?>

</div><!-- /#content-body -->