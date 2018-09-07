<?php namespace ProcessWire;?>

<!-- FOOTER -->
<footer id='footer' class='grid container-full p-3'>

<?php // Copyrigt Text
if($options->txt_1):?>

    <!-- COPYRIGHT  -->
    <p id='copyright' class='copy col-5_md-6_sm-12'>

        <small class='small'>&copy; <?=date('Y')?> &bull;</small>

        <a href='<?=$options->url_1?>' target='_blank'><?=$options->txt_1?></a>

    </p><!-- /#copyright -->

<?php endif;
// Social Profiles
if($options->rep_url):?>

    <p id="social" class='socila-profiles col-7_md-6_sm-12'>

        <?php foreach ($options->rep_url as $icon) {

        echo icon($icon->txt_1, // Feather Icons
            [
                'url'=> $icon->url_1,
                't_blank' => true,
                'width' => 40,
                'height' => 35,
                'stroke' => 2,
                'color' => '#9b4dca'
            ]);
        }?>

    </p><!-- /#social -->

<?php endif; ?>

<p><b><?=page()->ts['privacyMessage'];?></b>

<a class='button button-outline' href='<?=page()->opt['privacyPage']->url?>'><?=page()->ts['learnMore']?></a>

</p>

</footer>

<?php if(page()->editable): ?>

    <a class='button edit-btn' href='<?=page()->editUrl?>'>

           <?=page()->ts['editPage'];?>

    </a>

<?php endif;
// Display region debugging info 
if(config()->debug && user()->isSuperuser()):?>

<section id='debug' class='sec-debug container-fluid'>

    <!--PW-REGION-DEBUG-->

</section>

<?php endif; ?>

<!-- Main Scripts -->
<script defer src="<?=urls()->templates?>dist/main.js"></script>

<!-- MARGUP REGION BOTTOM -->
<pw-region id="bottom-region"></pw-region>

<!-- Lazy load Images, Map  https://github.com/verlok/lazyload -->
<script type="text/javascript">

   window.lazyLoadOptions = [{
   	elements_selector: ".lazy"
   }];

</script>

<!-- https://feathericons.com/ -->
<script>
window.addEventListener("load", function(){
  feather.replace()
});
</script>

<?php // Get Some Google Fonts https://github.com/typekit/webfontloader
echo googleFonts(page()->opt['googleFonts']);
// GOGLE ANALYTICS CODE
if(page()->opt['gaCode']) {
echo gAnalitycs(page()->opt['gaCode']);
}?>

</body>
</html>