<?php namespace ProcessWire;
// If page has children
if(!count($items)) return '';
// If more text
if(isset($more)) echo "<h3>$more</h3>";
// If isset container
if(isset($container_class)) echo "<div class='$container_class'>";

// Get Items
foreach ($items as $child): ?>

  <div class='<?=$class?>'>

    <a href="<?=$child->url?>">

      <h4><?=$child->title?></h4>

      <?php // Get Image
        echo getImage($child,'small');

        if( $page->name == page()->opt['newsPage']->name ) {
          echo "<p><b> -- <small>" . date("F j, Y, g:i a", $child->created) . "</small></b><br>";
          echo $child->render('body','txt-small') . '</p>';
        }
      ?>

    </a>

  </div><!-- /.news-item -->

<?php endforeach;

// If isset container
if(isset($container_class)) echo "</div>";

// https://processwire.com/api/modules/markup-pager-nav/
echo basicPagination($items, 'container grid');