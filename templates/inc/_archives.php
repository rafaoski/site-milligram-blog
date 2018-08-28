<?php namespace ProcessWire;
// CODE FROM => https://processwire.com/talk/topic/263-creating-archives-for-newsblogs-sections/
// Get archives url
$arch_url = page()->opt['arch_p']->url;

$blog_p = page()->opt['blog_p'];

if( page()->opt['enable_archive'] == false or page()->url == $arch_url ) return '';

// Some Heading
echo icon('archive', // https://feathericons.com/
  [ 
    'txt' => ' ' . page()->ts['s_archives'],
    'color' => '#9b4dca',
    'html_el' => 'h3',
    'url' => $arch_url
  ]);

// End Date Today
  $end_date = date("Y"); // End this year
  $now = time(); // Get Time

echo '<ul>';

for($year = $end_date; $year >= page()->opt['sidebar_start_date']; $year--) {

   for($month = 12; $month > 0; $month--) {

       $startTime = strtotime("$year-$month-01"); // 2011-12-01 example
       if($startTime > $now) continue; // don't bother with future dates
       if($month == 12) $endTime = strtotime(($year+1) . "-01-01");
       else $endTime = strtotime("$year-" . ($month+1) . "-01");
       $entries = $blog_p->children("date>=$startTime, date<$endTime"); // or substitute your own date field
       $date = date("Y-m",$startTime);
       $url = $arch_url . date("Y",$startTime) . "/" . date("m",$startTime);
       $count = count($entries);
       
       if($count > 0) {
      
           echo "<li><a href='$url'>$date - ($count)</a></li>";
       }

   }

}
echo '</ul>';