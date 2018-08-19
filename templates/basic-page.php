<?php namespace ProcessWire;
// $news = pages()->find("parent.name=news, limit=16"); // Example find with name parent page
// $news = pages()->find("template=basic-page, limit=16"); // Example find with template name
$news = page()->children('limit=12');
// If page name is news
if(page()->name == 'news'):?>

<div id='content-body' class="news grid">

<?php foreach ($news as $child): ?>

  <div class='news-item col-4_md-6_sm-12'>

    <a href="<?=$child->url?>">

      <h4><?=$child->title?></h4>

    <?php // Demo img
         echo imgDemo($child,['demo' => true,'random' => true]);
    // Or https://processwire.com/blog/posts/processwire-3.0.7-expands-field-rendering-page-path-history-and-more/
    // echo page()->render('images', 'img-thumb'); // Go to folder /fields 
    ?>

      <p><b> -- <small><?= date("F j, Y, g:i a", $child->created);?></small></b>

      <br><?=$child->render('body','txt-small')?></p>

    </a>

  </div><!-- /.news-item -->

<?php endforeach; ?>

  <div class="container">

    <?php // Basic Pagination + custom CSS class 'grid'
          // https://processwire.com/api/modules/markup-pager-nav/
          echo basicPagination($news, 'grid');?>

  </div>

</div><!-- /#content-body -->

<div id="page-children">

<?=pageChildren($pages->get('/about/'));?>

</div>

<?php // If basic page ( name != 'news')
    else: ?>

<div id='content-body'>

<?php // Demo img
      echo imgDemo($page,['demo' => true]);?>
      
<?php // Show created date   
if($page->parent()->name == 'news'):?>

  <p><b> -- <small><?= date("F j, Y, g:i a", $page->created);?></small></b></p>

<?php endif;?>

  <?=page()->body?>

</div><!-- /#content-body -->

<?php endif;