<?php namespace ProcessWire;

?>

<div id='content-body'>

<?php // sitemap.php template file
      // Generate navigation that descends up to 4 levels into the tree.
      // See the _func.php for the renderNav() function definition.
      echo renderNavTree(pages()->get('/'), 4);
?>

</div><!-- /#content-body -->

<aside id="sidebar" pw-append>

<?php // Show Home page Children
    echo pageChildren(
        pages(1),
        [
        'limit'=> 12,
        //  'random' => true
        ]
    );
    ?>

</aside>