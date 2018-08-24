<?php namespace ProcessWire;
// $news = pages()->find("parent.name=news, limit=16"); // Example find with name parent page
// $news = pages()->find("template=basic-page, limit=16"); // Example find with template name
$news = page()->children('limit=12');
// If page name is news
if(page()->name == page()->opt['news_p']->name):?>

<div id='content-body' class="news grid">

<?php foreach ($news as $child): ?>

  <div class='news-item col-6_sm-12'>

    <a href="<?=$child->url?>">

      <h4><?=$child->title?></h4>

      <?php // View a replacement image from https://picsum.photos/ 

        if(page()->opt['demo_img']) {

          echo imgDemo($child,['demo' => true]);

        } else {

          echo $child->render('images', 'img-small');

      }?>

      <p><b> -- <small><?= date("F j, Y, g:i a", $child->created);?></small></b>

      <br><?=$child->render('body','txt-small')?></p>

    </a>

  </div><!-- /.news-item -->

<?php endforeach; ?>

  <div class="container">

    <?php // Basic Pagination + custom CSS class 'grid'
          // https://processwire.com/api/modules/markup-pager-nav/
          echo basicPagination($news, 'container grid');?>

  </div>

</div><!-- /#content-body -->

<?php // If basic page ( name != 'news')
    else: ?>

<div id='content-body'>

<?php // View a replacement image from https://picsum.photos/ 

if(page()->opt['demo_img']) {

echo imgDemo(page(),['demo' => true]);

} else {

echo page()->render('images', 'img-small');

}?>
      
<?php // Show created date   
if(page()->parent()->name == 'news'):?>

  <p><b> -- <small><?= date("F j, Y, g:i a", $page->created);?></small></b></p>

<?php endif;?>

  <?=page()->body?>

<?php if(page()->hasChildren()) {

  echo wireRenderFile("render/child",
  [ // Enab
  // Render Grid from this page
    'items' => page()->children(),
    'title' => page()->ts['more_pages'],
  ]);

} ?>

</div><!-- /#content-body -->

<?php endif;