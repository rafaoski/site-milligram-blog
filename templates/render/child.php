<?php namespace ProcessWire;?>

<h3><?=$title;?></h3>

<div class="grid">

<?php foreach ($items as $item):?>

<a class="col-4_sm-12" href='<?=$item->url?>'>

    <h4><?=$item->title?></h4>
   
    <?php // Demo img
      echo imgDemo($page,['demo' => true]);?>

</a>

<?php endforeach; ?>

</div>
