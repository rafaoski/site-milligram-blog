<?php namespace ProcessWire;?>

<!-- FOOTER -->
<footer id='footer' class='grid container-full p-3'>

    <!-- COPYRIGHT  -->
    <p id='copyright' class='copy col-5_md-6_sm-12'>

        <small class='small'>&copy; <?=date('Y')?> &bull;</small>

        <a href='https://processwire.com'><?=page()->ts['powered_by'];?></a>

    </p><!-- /#copyright -->

<?php if(page()->opt['soc_p']):?>

    <p id="social" class='socila-profiles col-7_md-6_sm-12'>

        <?php foreach (page()->opt['soc_p'] as $icon => $value) {

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

           <?=page()->ts['edit_page'];?>

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
echo googleFonts(page()->opt['g_fonts']);
// GOGLE ANALYTICS CODE
if(page()->opt['ga_code']) {
    echo gAnalitycs(page()->opt['ga_code']);
}
// Privacy Banner
if(page()->opt['p_b']) {
echo cookieBanner(
    [
       'message' => page()->ts['p_message'],
       'dismiss' => page()->ts['go_it'],
       'link' => page()->ts['learn_more'],
       'href' => page()->opt['p_url']
    ]);
} ?>

</body>
</html>
