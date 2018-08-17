<?php namespace ProcessWire;
// https://processwire.com/blog/posts/processwire-3.0.7-expands-field-rendering-page-path-history-and-more/
// render a thumbnail of the first image
if(count($value)) {
  $image = $value->first();
  echo "<img data-src='$image->url' alt='$image->description'>";
}