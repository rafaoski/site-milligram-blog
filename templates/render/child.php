<?php namespace ProcessWire;?>

<h3><?=$title;?></h3>

<div class="grid">

<?php foreach ($items as $item):?>

<a class="col-4_sm-12" href='<?=$item->url?>'>

    <h4><?=$item->title?></h4>

    <?php // View a replacement image from https://picsum.photos/ 

    if(page()->opt['demo_img']) {

      echo imgDemo($item);

    } else {

      echo $item->render('images', 'img-small');

    }?>

</a>

<?php endforeach; ?>

</div>
