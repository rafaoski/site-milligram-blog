<?php namespace ProcessWire;

if(!isset($item) or $item == '') return '';

echo icon('user', ['txt' => $item->createdUser->title . ' | ' ]); 

echo icon('calendar',
[
  'txt' => $item->date . ' | '
]);
    
// IF PAGE COMMENTS && $dis_comm == false ( variable from _init.php )
if(count($item->comments) && $dis_comm == false) {

  $id = $item->comments->last() ? $item->comments->last()->id : '#';

  echo icon('message-circle',
  [
    'txt' => count($item->comments),
    'url' => "$item->url#Comment$id",
  ]);
}