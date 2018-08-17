<?php namespace ProcessWire;
if($enable_grid == false) return '';
$children = $item->children("limit=4");?>

  <h1><?=$item->headline?></h1>

  <div class="grid home-about">

      <div class="col-6_sm-12">

        <?php // Simple Icon
            echo icon([
              'icon'=> 'crosshair', // https://feathericons.com/
              'width' => 150,
              'height' => 150,
              'color' => '#608190',
              'stroke' => 3,
              'heading' => 'h3',
              'txt' => __(' PROCESSWIRE WOW!!!'),
              'url' => $item->url
            ]);?>

          <blockquote>

              <?=$item->summary;?>

          </blockquote>

           <?php // https://processwire.com/blog/posts/processwire-3.0.7-expands-field-rendering-page-path-history-and-more/
                  echo $item->render('body','txt-medium');?>

          <div class="bottom-link">

              <a href="<?=$item->url?>"><?=__('read more');?></a>

          </div>

      </div> <!-- /.col-6_sm-12 -->

      <div class="col-6_sm-12">

          <div class="grid">

            <?php // Custom options
              $icons = ['grid','loader','code','layers']; // https://feathericons.com/
              $size = [90,50,90,90];
              $colors = ['#ec6400','#608190','#8a8381','#0074b4'];
              $stroke = [1,2,2,1];
            // Start Loop
              foreach ($children as $key => $child):?>

                  <div class="col-6_sm-12">

                    <?php // Get icons inside loop
                        echo icon([
                            'icon'=> $icons[$key], // https://feathericons.com/
                            'width' => $size[$key],
                            'height' => $size[$key],
                            'color' => $colors[$key],
                            'stroke' => $stroke[$key],
                            'url' => $child->url,
                        ]);
                    ?>

                      <h4><?=$child->title?></h4>

                    <?php // https://processwire.com/blog/posts/processwire-3.0.7-expands-field-rendering-page-path-history-and-more/
                         echo $child->render('body','txt-small');?>
            
                      <div class="bottom-link">

                          <a href="<?=$child->url?>"><?=__('read more');?></a>

                      </div>

                  </div><!-- /.child -->

              <?php endforeach;?>

          </div><!-- /.grid-->

      </div><!-- /.col-6_sm-12 -->

  </div><!-- /.main-body -->
