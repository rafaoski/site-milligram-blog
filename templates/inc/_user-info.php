<?php namespace ProcessWire;
if(!isset($author) or $author == '') return '';
if(page()->template != 'blog-post') return '';

echo "<h3>$author->title</h3>";

echo $author->render('images', 'img-small');

echo "<blockquote>$author->headline</blockquote>";

// echo "<p>$author->summary</p>";