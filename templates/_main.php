<?php namespace ProcessWire; // _main.php template file, called after a page’s template file

// trashDemoData('false'); // Put unnecessary pages into the trash ( change to true ) !!!
$optionsPage = page()->opt['optionsPage']; // Get options page
wireIncludeFile("inc/_head", ['options' => $optionsPage]); // ( Include header )?>

<!-- MAIN CONTENT -->
<main id='main' class='container-medium'>

    <div id='cont-main' class="grid c-main">

        <!-- CONTENT -->
        <div id='content' class='col-9_md-12 c-page'>

        <?php if (page()->template != 'home') :?>
            <!-- HEADING -->
            <h1 id='content-head'>

                <?=page()->get('headline|title')?>

            </h1>
        <?php endif; ?>

            <!-- CONTENT BODY -->
            <div id='content-body' class='c-body'>

                <?=page()->body?>

            </div>

        </div><!-- /#content -->

        <!-- SIDEBAR -->
        <aside id='sidebar' class='col sid'>

            <?=langMenu($page, pages('/'))?>

            <!-- SEARCH FORM  -->
            <form id='search' class='s-form' action='<?=pages()->get('template=search')->url?>' method='get'>

                <input type='search' name='q' class='s-input' placeholder='<?=page()->ts['search'];?>&hellip;' required>

            </form>

        <?php if (page()->sidebar) : ?>
            <div id="content-sidebar">

               <?=page()->sidebar;?>

            </div><!-- /#content-sidebar -->
        <?php endif; ?>

        </aside><!-- /#sidebar -->

    </div><!-- /#cont-main -->

</main>

<?php wireIncludeFile("inc/_foot", ['options' => $optionsPage]); // ( Include footer )