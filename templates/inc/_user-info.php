<?php namespace ProcessWire;

if(page()->opt['user_info'] == false ) return '';

if(!isset($author) or $author == '') return '';

if(page()->template != 'blog-post') return '';

echo "<h3>$author->title</h3>";

echo $author->render('images', 'img-thumb');

echo "<blockquote>$author->headline</blockquote>";

// echo "<p>$author->summary</p>";