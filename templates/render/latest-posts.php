<?php namespace ProcessWire;

$children = $item->children("limit=4,sort=random");?>

<section id='<?=$id?>' class="<?=$class?>">

     <?php // Simple Icon
            echo icon('eye', // https://feathericons.com/
            [
              'width' => 70,
              'height' => 70,
              'color' => '#608190',
              'stroke' => 2,
              'html_el' => 'h3',
              'txt' => $heading,
              'url' => $item->url
            ]);?>

  <div class="grid">

    <?php // Start Loop
        foreach ($children as $item):?>

            <div class="col-6_sm-12">

            <a href="<?=$item->url?>">

            <?=getImage($item,'small');?>

            <h4><?=$item->title?></h4>
     
            </a>
            
            </div><!-- /.child -->

        <?php endforeach;?>

    </div><!-- /.grid -->

</section>