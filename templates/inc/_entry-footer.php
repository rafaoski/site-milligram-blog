<?php namespace ProcessWire;

if(!isset($item) or $item == '') return '';

// Show CATEGORIES
echo icon('grid',
  [
    'txt' => ' | ',
    'url' => pages('/categories/')->url,
    'color' => '#9b4dca'
  ]);

// https://processwire.com/api/ref/page-array/each/
  echo $item->categories->each(
    "<a href='{url}'>{title}</a> | "
  ) . ' ... ' ;

// Show TAGS
  echo icon('tag',
  [
    'txt' => ' | ',
    'url' => pages('/tags/')->url,
    'color' => '#9b4dca'
  ]);

// https://processwire.com/api/ref/page-array/each/
  echo $item->tags->each(
    "<a href='{url}'>{title}</a> | "
  ) . ' ... ';