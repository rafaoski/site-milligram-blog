<?php namespace ProcessWire;
// Show Home page Children
echo pageChildren(pages(1),
    [
        'limit'=> 12,
      //  'random' => true
    ]
);

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
);