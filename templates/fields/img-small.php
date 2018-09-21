<?php namespace ProcessWire;

// https://processwire.com/blog/posts/processwire-3.0.7-expands-field-rendering-page-path-history-and-more/
// render a thumbnail of the first image
if (count($value)) {
// Reset
    $out = '';

// Get small size ( 480px )
    $small = page()->opt['small'];

// Get first image
    $image = $value->first()->width($small);
  
// Get size
    $height = $image->height;
    $width = $image->width;
  
// Show image
    $out .= "<img data-src='$image->url' 
            class='center lazy' 
            alt='$image->description'
            height='$height' width='$width'>";

// Show Image Size
    if (config()->debug && user()->isSuperuser()) {
    // Translatable string
        $strSize = page()->ts['strSize'];
        $smallSize = page()->ts['smallSize'];
    
    // Image Size
        $out .= "<blockquote><h5>";
        $out .= icon('image', ['stroke' => 2, 'width' => 47, 'height' => 37, 'color' => '#232727' ]);
        $out .= sprintf($strSize, $height, $width)  . " <b>( $smallSize )</b></h5></blockquote>";
    }

    return $out;
}
