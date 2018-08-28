<?php namespace ProcessWire; 
if ($input->urlSegment(3)) throw new Wire404Exception(); 

if ($input->urlSegment(1)) {

  if(!is_numeric($input->urlSegment(1)) or !is_numeric($input->urlSegment(2))){

      throw new Wire404Exception();
  }

}?>

<div id='content-body' pw-prepend>

<form action="./">

<?php 
echo icon('archive', // https://feathericons.com/
  [
    'txt' => page()->ts['s_archives'],
    'color' => '#9b4dca',
    'html_el' => 'h3'
  ]);
?>

<select name='form'  onchange='location = this.options[this.selectedIndex].value;'>

<?php
$blog_p = page()->opt['blog_p'];
$startDate = page()->opt['basic_start_date']; // or whenever you want it to end

// $startYear = date("Y"); // this year
$endDate = date("Y"); // this year
$now = time();
echo "<option value='#'>" . page()->ts['s_archives'] . "</option>";
//CODE FROM => https://processwire.com/talk/topic/263-creating-archives-for-newsblogs-sections/
for($year = $endDate; $year >= $startDate; $year--) {
   for($month = 12; $month > 0; $month--) {
       $startTime = strtotime("$year-$month-01"); // 2011-12-01 example
       if($startTime > $now) continue; // don't bother with future dates
       if($month == 12) $endTime = strtotime(($year+1) . "-01-01");
           else $endTime = strtotime("$year-" . ($month+1) . "-01");
       $entries = $blog_p->children("date>=$startTime, date<$endTime"); // or substitute your own date field
       $date = date("Y-m",$startTime);
       $url = $page->url . date("Y",$startTime) . "/" . date("m",$startTime) . '/';
       $count = count($entries);
       if($count > 0) {
           
           echo "<option value='$url'>$date - ($count)</option>";

       }
   }
} ?>

</select>

</form>

<?php
//GET URL SEGMENT
     $y = $input->urlSegment(1);
     $m = $input->urlSegment(2);
$date_s = "$y/$m/01";
$date_e = "$y/$m/31";
$page_f = $pages->find("template=blog-post, date>=$date_s, date<=$date_e, sort=-date, limit=12");

if($y !=''){

  if(count($page_f) == 0) throw new Wire404Exception();

  echo "<h3>" . page()->ts['date'] . " -- $y/$m </h3>";
}

foreach ($page_f as $key) {
  // Render small text body from /fields/txt-small
  $body = $key->render('body','txt-small');

  echo "<p><blockquote><h4><a href='$key->url'>$key->title</a> -- $key->date</h4>";

  echo "$body <a href='$key->url'>" . page()->ts['read_m'] . "</a></blockquote></p>";

}

// https://processwire.com/api/modules/markup-pager-nav/
echo basicPagination($page_f, 'container grid');?>

</div><!-- /#content-body -->