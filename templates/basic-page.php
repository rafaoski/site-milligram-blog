<?php namespace ProcessWire;
// Get Name News Page from ( _options.php )
$newsPage = page()->opt['newsPage']->name?>

<div id='content-body' class="<?=page()->name == $newsPage ? 'news grid' : 'basic-page';?>">

<?php // If is news Page
if(page()->name == $newsPage) {

echo wireRenderFile("render/child",
[ 'items' => $page->children("limit=12"),
  'class' => 'news-item col-6_sm-12'
]);

} else {

// Show Image
echo getImage(page(),'medium');

// Show Date ( single news )
if( page()->parent == page()->opt['newsPage'] ) {
  echo "<p><b> -- <small>" . date("F j, Y, g:i a", $page->created) . "</small></b><br>";
}

// Body field
echo page()->body;

echo wireRenderFile("render/child",
[ 'items' => $page->children("limit=12"),
  'container_class' => 'grid',
  'class' => 'col-4_sm-12',
  'more' => page()->ts['morePages']
]);

}?>

</div><!-- /#content-body -->

<aside id="sidebar" pw-append>

<?php // Show Home page Children
    echo pageChildren(pages(1),
    [
        'limit'=> 12,
    //  'random' => true
    ]
);
?>

</aside>