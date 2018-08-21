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

    <small><?php // Get Some Icon // https://feathericons.com/,
        echo icon('grid',
        [
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
   echo basicPagination($posts, 'grid container-fluid');?>

</div><!-- /#content-body -->