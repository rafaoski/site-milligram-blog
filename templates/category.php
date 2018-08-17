<?php namespace ProcessWire;
// Get Pages if Has Categories 
$posts = pages()->get('/blog/')->children("categories=$page, limit=16");?>

<div id='content-body' class="category grid" pw-prepend>

<?php foreach ($posts as $post): ?>

<article class='col-4_md-6_sm-12'>

    <a href="<?=$post->url?>">

        <h3><?=$post->title?></h3>

        <?=imgDemo($post,['demo' => true,'random' => true]);?>

    </a>

    <small><?php // Get Some Icon
        echo icon([
        'icon'=> 'grid', // https://feathericons.com/,
        'txt' => ' | ',
        'url' => pages('/categories/')->url,
        'color' => '#9b4dca'
        ]);

        echo $post->categories->each(
        "<a href='{url}'>{title}</a>"
        ) . ' ... ';?>
    </small>
    
    <br>

    <?=$post->render('body','txt-small')?>

    <a href="<?=$post->url?>"><?=__('Read More');?></a>

</article>

<?php endforeach;

// Basic Pagination + custom CSS class 'grid'
   echo basicPagination($posts, 'grid');?>

</div><!-- /#content-body -->

<div id="page-children">

<?=catTag($pages->get('/categories/'), 
          [
            'txt' => __('Categories'),
            'limit' => 16,
          ] 
        );?>

<?=catTag($pages->get('/tags/'), 
          [
            'txt' => __('Tags'),
            'limit' => 16,
            'class' => 'button button-outline',
            'ul_cl' => 'grid',
            'li_cl' => 'col',
          ] 
        );?>

</div><!-- /#page-children -->