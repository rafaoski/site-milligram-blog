<?php namespace ProcessWire;
// https://processwire.com/blog/posts/processwire-3.0.7-expands-field-rendering-page-path-history-and-more/
// render a thumbnail of the first image
if(count($value)) {

// Reset  
$out = '';

// Get medium size ( 640px ) 
$medium = page()->opt['medium'];

// Get first image 
$image = $value->first()->width($medium);

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
$mediumSize = page()->ts['mediumSize']; 
    
// Image Size  
$out .= "<blockquote><h4>";
$out .= icon('image',['stroke' => 2, 'width' => 50, 'height' => 40, 'color' => '#232727' ]);
$out .= sprintf($strSize,$height,$width)  . " <b>( $mediumSize )</b></h4></blockquote>";

}           

return $out;
}