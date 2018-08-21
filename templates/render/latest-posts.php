<?php namespace ProcessWire;
if($enable_grid == false) return '';
$children = $item->children("limit=4,sort=random");?>

  <div class="last-post">

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
        foreach ($children as $child):?>

            <div class="col-6_sm-12">

            <a href="<?=$child->url?>">

                <?php // Img Demo
                    echo imgDemo($child,['demo' => true, 'random' => true]);
                // If no demo   
                    // echo $child->render('images', 'img-small');
                ?>

                <h4><?=$child->title?></h4>
      
            <?php // https://processwire.com/blog/posts/processwire-3.0.7-expands-field-rendering-page-path-history-and-more/
                  //  echo $child->render('body','txt-small');?>

            </a>
            
            </div><!-- /.child -->

        <?php endforeach;?>

    </div><!-- /.grid -->

  </div><!-- /.last-post -->