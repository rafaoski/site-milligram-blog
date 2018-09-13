<?php namespace ProcessWire;
// Get Categories
echo catTag(page()->opt['categoryPage'],
    [
      // 'txt' => __('Categories'),
        'limit' => 9,
        'random' => true // Randomize Items
    ]
);

// Get Tags
echo catTag(page()->opt['tagsPage'],
    [
      // 'txt' => __('Tags'),
        'limit' => 8,
        'ul_cl' => 'grid', // Element <ul class='grid'
        'li_cl' => 'col', // Element <li class='col'
        'class' => 'button button-outline', // Element <a class='button button-outline',
        'random' => true, // Randomize Items
        'dis_count' => true // hide Count Down
    ]
);?>

<?php if(page() != page()->opt['archivesPage']):?>

<div id="content-archive">

    <ul><?=blogArchive(page()->opt['sidebarDate']);?></ul>

</div><!-- /#content-archive -->

<?php endif;?>