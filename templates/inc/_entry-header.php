<?php namespace ProcessWire;

echo icon('user', ['txt' => $item->createdUser->title . ' | ' ]); 

echo icon('calendar',
[
  'txt' => $item->date . ' | '
]);
    
// if page comments
if(count($item->comments) && page()->opt['enable_comments'] == true) {

  $id = $item->comments->last() ? $item->comments->last()->id : '#';

  echo icon('message-circle',
  [
    'txt' => count($item->comments),
    'url' => "$item->url#Comment$id",
  ]);

}