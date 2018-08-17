<?php namespace ProcessWire; 
// https://processwire.com/blog/posts/processwire-3.0.7-expands-field-rendering-page-path-history-and-more/
// render the first found paragraph only
if(preg_match('!(<p>.+?</p>)!', $value, $matches)) {
  echo '<blockquote>' . $matches[1] . '</blockquote>';
}