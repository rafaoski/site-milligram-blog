<?php namespace ProcessWire;?>

<!-- FOOTER -->
<footer id='footer' class='grid container-full p-3'>

    <!-- COPYRIGHT  -->
    <p id='copyright' class='copy col-5_md-6_sm-12'>

        <small class='small'>&copy; <?=date('Y')?> &bull;</small>
        <a href='https://processwire.com'><?=__('Powered by ProcessWire CMS');?></a>

    </p><!-- /#copyright -->

    <p id="social" class='socila-profiles col-7_md-6_sm-12'>

        <?php foreach ($soc_p as $icon => $value) {
            
            echo icon($icon, // Feather Icons
            [
                'url'=> $value,
                't_blank' => true,
                'width' => 35,
                'height' => 35,
                'stroke' => 1,
                'color' => '#9b4dca'
            ]); 
        }?>

    </p><!-- /#social -->

</footer>

<?php if(page()->editable): ?>

    <a class='button edit-btn' href='<?=page()->editUrl?>'>

           <?=__('Edit Page');?>

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
    echo googleFonts($g_fonts);

// GOGLE ANALYTICS CODE
    if(isset($ga_code) && $ga_code != '' ) {
        echo gAnalitycs("$ga_code");
    }

// Privacy Banner
if($p_b == true) {
echo cookieBanner(
    [
       'message' => __('Privacy & Cookies Policy. This website uses cookies to ensure you get the best experience on our website.'),
       'dismiss' => __('Got it!'),
       'link' => __('Learn More'),
       'href' => $p_url // Url to Cookie Page
    ]);
} ?>

</body>
</html>