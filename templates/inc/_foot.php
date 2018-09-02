<?php namespace ProcessWire;?>

<!-- FOOTER -->
<footer id='footer' class='grid container-full p-3'>

    <!-- COPYRIGHT  -->
    <p id='copyright' class='copy col-5_md-6_sm-12'>

        <small class='small'>&copy; <?=date('Y')?> &bull;</small>

        <a href='https://processwire.com'><?=page()->ts['poweredBy'];?></a>

    </p><!-- /#copyright -->

<?php if(page()->opt['socialProfile']):?>

    <p id="social" class='socila-profiles col-7_md-6_sm-12'>

        <?php foreach (page()->opt['socialProfile'] as $icon => $value) {

        echo icon($icon, // Feather Icons
            [
                'url'=> $value,
                't_blank' => true,
                'width' => 40,
                'height' => 35,
                'stroke' => 2,
                'color' => '#9b4dca'
            ]);
        }?>

    </p><!-- /#social -->

<?php endif; ?>

</footer>

<?php if(page()->editable): ?>

    <a class='button edit-btn' href='<?=page()->editUrl?>'>

           <?=page()->ts['editPage'];?>

    </a>

<?php endif; ?>

<?php if(config()->debug && user()->isSuperuser()): // display region debugging info ?>

<section id='debug' class='sec-debug container-fluid'>

    <!--PW-REGION-DEBUG-->

</section>

<?php // End Config Debug
    endif; ?>

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
}
// Privacy Banner
if(page()->opt['enablePrivacy']) {
echo cookieBanner(
    [
       'message' => page()->ts['privacyMessage'],
       'dismiss' => page()->ts['goIt'],
       'link' => page()->ts['learnMore'],
       'href' => page()->opt['privacyUrl']
    ]);
} ?>

</body>
</html>