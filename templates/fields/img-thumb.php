<?php namespace ProcessWire;
// https://processwire.com/blog/posts/processwire-3.0.7-expands-field-rendering-page-path-history-and-more/
// render a thumbnail of the first image
if(count($value)) {

// Reset  
$out = '';

// Get thumbnail size ( 180px ) 
$thumb = page()->opt['thumbnail'];

// Get first image 
$image = $value->first()->width($thumb);
  
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
$thumbSize = page()->ts['thumbSize']; 
    
// Image Size  
$out .= "<blockquote>";
$out .= icon('image',['stroke' => 2, 'width' => 45, 'height' => 35, 'color' => '#232727' ]);
$out .= sprintf($strSize,$height,$width)  . " <b>( $thumbSize )</b></blockquote>";

}           

return $out;
}