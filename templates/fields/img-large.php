<?php namespace ProcessWire;
// https://processwire.com/blog/posts/processwire-3.0.7-expands-field-rendering-page-path-history-and-more/
// render a thumbnail of the first image
if(count($value)) {

// Get large size ( 1200px ) 
  $large = page()->opt['large'];
// Get first image 
  $image = $value->first()->width($large);

// Show image
  echo "<img data-src='$image->url' 
            class='center lazy' 
            alt='$image->description'
            height='$image->height' width='$image->width'>";
}