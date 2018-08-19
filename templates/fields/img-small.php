<?php namespace ProcessWire;
// https://processwire.com/blog/posts/processwire-3.0.7-expands-field-rendering-page-path-history-and-more/
// render a thumbnail of the first image
if(count($value)) {
  $image = $value->first()->width(320);
  echo "<img data-src='$image->url' class='center lazy' alt='$image->description'>";
}