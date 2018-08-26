<?php namespace ProcessWire;

if($enable == false) return '';

$children = $item->children("limit=4,sort=random");?>

<section id='<?=$id?>' class="<?=$class?>">

     <?php // Simple Icon
            echo icon('eye', // https://feathericons.com/
            [
              'width' => 70,
              'height' => 70,
              'color' => '#608190',
              'stroke' => 2,
              'heading' => 'h3',
              'txt' => $heading,
              'url' => $item->url
            ]);?>

  <div class="grid">

    <?php // Start Loop
        foreach ($children as $item):?>

            <div class="col-6_sm-12">

            <a href="<?=$item->url?>">

            <?php // View a replacement image from https://picsum.photos/ 

                if(page()->opt['demo_img']) {

                echo imgDemo($item);

                } else {

                echo $item->render('images', 'img-small');

            }?>

            <h4><?=$item->title?></h4>
     
            </a>
            
            </div><!-- /.child -->

        <?php endforeach;?>

    </div><!-- /.grid -->

</section>