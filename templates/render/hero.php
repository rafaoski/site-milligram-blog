<?php namespace ProcessWire;

$intro = isset($intro) ? explode(" ", $intro) : explode(" ", page()->ts['addHero']);?>

<section id="hero" class="hero-content" pw-after="header">

<div class="hero_container">

<h1 class="hero_inner">

<span class="hero_first">
<?php if (isset($intro[0])) {
    echo $intro[0];
}?>
</span>

<span class="hero_small">
<?php if (isset($intro[1])) {
    echo $intro[1];
}
if (isset($intro[2])) {
    echo $intro[2];
}?>
</span>

<span class="hero_of">
<?php if (isset($intro[3])) {
    echo $intro[3];
}?>
</span>

<span class="hero_small">
<?php if (isset($intro[4])) {
    echo $intro[4];
}?>
</span>

</h1>

  <div class="hero_info">

  <p class='p-1'>

    <?=$content?>

    <br>

    <small><?php
    // First Text
      echo $heroTxtFirst;
    // Icon with Text
      echo icon(
          $icon,
          [
            'url' => $iconUrl,
            'txt' => ' ' . $heroTxtNext,
            'before' => true,
            'width' => 30,
            'height' => 30,
            'color' => 'red'
          ]
      );
    // Last Text
      echo $heroTxtLast;?></small>
      
  </p>

  </div><!-- /.hero_info -->

</div><!-- /.hero_container -->

<!-- This is svg particles -->
<div id="hero_particles"></div>

</section>

<style id='head-style' pw-append>

    header {
    /* background: #201f27; */
      background: none;
      position: absolute;
      width: 100%;
    }

    #hero_particles {
      height: <?=$height?>vh;
    }

    /* Smaller than mobile screen */
    @media (max-width: 40.0rem) {
      
    header {
    /* background: #201f27; */
    /* position: static; */
      padding-bottom: 10px;
    }
    
  }

</style>

<pw-region id="bottom-region" pw-append>
<script type="text/javascript">

/* https://developer.mozilla.org/en-US/docs/Web/Events/load */
window.addEventListener("load", function(){

/* ---- particles.js config ---- */
 particlesJS("hero_particles", {

  "particles": {
    "number": {
      "value": 50,
      "density": {
        "enable": true,
        "value_area": 800
      }
    },
    "color": {
    //   "value": "#ffffff"
      // "value": "#e42121"
      "value": "#00b6ff"
    },
    "shape": {
      "type": "circle",
      "stroke": {
        "width": 1,
        // "color": "#e42121"
        "color": "#00b6ff"
      },
      "polygon": {
        "nb_sides": 5
      },
    },
    "opacity": {
      "value": 0.7,
      "random": false,
      "anim": {
        "enable": false,
        "speed": 1,
        "opacity_min": 0.1,
        "sync": false
      }
    },
    "size": {
      "value": 2,
      "random": true,
      "anim": {
        "enable": false,
        "speed": 40,
        "size_min": 0.1,
        "sync": true
      }
    },
    "line_linked": {
      "enable": true,
      "distance": 90,
      "color": "#ffffff",
      "opacity": 0.3,
      "width": 1
    },
    "move": {
      "enable": true,
      "speed": 3,
      "direction": "none",
      "random": false,
      "straight": false,
      "out_mode": "out",
      "bounce": false,
      "attract": {
        "enable": true,
        "rotateX": 600,
        "rotateY": 1200
      }
    }
  },
  "interactivity": {
    "detect_on": "canvas",
    "events": {
      "onhover": {
        "enable": false,
        "mode": "grab"
      },
      "onclick": {
        "enable": false,
        "mode": "push"
      },
      "resize": true
    },
    "modes": {
      "grab": {
        "distance": 400,
        "line_linked": {
          "opacity": 1
        }
      },
      "bubble": {
        "distance": 400,
        "size": 40,
        "duration": 2,
        "opacity": 8,
        "speed": 3
      },
      "repulse": {
        "distance": 200,
        "duration": 0.4
      },
      "push": {
        "particles_nb": 4
      },
      "remove": {
        "particles_nb": 2
      }
    }
  },
  "retina_detect": true
});
});
</script>  
</pw-region>