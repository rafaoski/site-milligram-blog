<?php namespace ProcessWire;
// https://processwire.com/blog/posts/processwire-3.0.7-expands-field-rendering-page-path-history-and-more/
// render a thumbnail of the first image
if(count($value)) {

// Reset  
$out = '';

// Get first image ( full size )
$image = $value->first();
  
// Get size
$height = $image->height;
$width = $image->width;
  
// Show image
$out .= "<img data-src='$image->url' 
          class='center lazy' 
          alt='$image->description'
          height='$height' width='$width'>";

// Show Image Size            
if(config()->debug && user()->isSuperuser()) {

// Translatable string  
$strSize = page()->ts['strSize']; 
$fullSize = page()->ts['fullSize']; 
    
// Image Size  
$out .= "<blockquote><h4>";
$out .= icon('image',['stroke' => 2, 'width' => 50, 'height' => 40, 'color' => '#232727' ]);
$out .= sprintf($strSize,$height,$width)  . " <b>( $fullSize )</b></h4></blockquote>";

}           

return $out;
}