<?php namespace ProcessWire;
if ($input->urlSegment(3)) session()->redirect(pages('http404')->url);

if ($input->urlSegment(1)) {

  if(!is_numeric($input->urlSegment(1)) or !is_numeric($input->urlSegment(2))){

      session()->redirect(pages('http404')->url);
      // throw new Wire404Exception();
  }

}?>

<div id='content-body' pw-prepend>

<?php // Get Image
echo getImage($page,'medium');
// https://feathericons.com/
echo icon('archive', 
[
  'txt' => ' ' . page()->ts['selectArchives'],
  'color' => '#9b4dca',
  'html_el' => 'h3'
]);?>

<form action="./">

  <select name='form' onchange='location = this.options[this.selectedIndex].value;'>

  <option value='#'><?=page()->ts['selectArchives'];?></option>

    <?=blogArchive(page()->opt['archiveDate'])?>

  </select>

</form>

<?php //GET URL SEGMENT
$y = $input->urlSegment(1);
$m = $input->urlSegment(2);
$date_s = "$y/$m/01";
$date_e = "$y/$m/31";
$page_f = $pages->find("template=blog-post, date>=$date_s, date<=$date_e, sort=-date, limit=12");

if($y){

if(count($page_f) == 0) session()->redirect(pages('http404')->url);
  echo "<h3>" . page()->ts['date'] . " -- $y/$m </h3>";
}

foreach ($page_f as $key) {
// Render small text body from /fields/txt-small
  $body = $key->render('body','txt-small');

  echo "<p><blockquote><h4><a href='$key->url'>$key->title</a> -- $key->date</h4>";

  echo "$body <a href='$key->url'>" . page()->ts['readMore'] . "</a></blockquote></p>";

}
// https://processwire.com/api/modules/markup-pager-nav/
echo basicPagination($page_f, 'container grid');?>

</div><!-- /#content-body -->

<aside id="sidebar" pw-append>

<?php wireIncludeFile("inc/_block-blog");?>

</aside>