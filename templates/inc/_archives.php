<?php namespace ProcessWire;
// CODE FROM => https://processwire.com/talk/topic/263-creating-archives-for-newsblogs-sections/
// Get the name of the blog. Where in the site menu Blog ...  Settings => Name => /blog/
// $blog_p = $pages->get("/blog/");
// $arch_p = pages('/archives/')->url; // Archive page url
// $startYear = date("Y"); // this year
// $start_date = 2015; // or whenever you want it to start
// $limit = 20; // Limit items to Year
if($enable == false or page()->url == $arch_p) return '';

// Some Heading
echo icon([
    'icon'=> 'archive', // https://feathericons.com/
    'txt' => ' ' . $title,
    'color' => '#9b4dca',
    'heading' => 'h3',
    'url' => $arch_p
  ]);

// Limit Year 
$item = -1;
$l_y = isset($limit_y) ? $limit_y : 2;

// End Date Today
  $end_date = date("Y"); // End this year
  $now = time(); // Get Time

echo '<ul>';

for($year = $end_date; $year >= $start_date; $year--) {

// Limit Year
$item ++;
    if($l_y == $item) return '';

   for($month = 12; $month > 0; $month--) {

       $startTime = strtotime("$year-$month-01"); // 2011-12-01 example
       if($startTime > $now) continue; // don't bother with future dates
       if($month == 12) $endTime = strtotime(($year+1) . "-01-01");
       else $endTime = strtotime("$year-" . ($month+1) . "-01");
       $entries = $blog_p->children("date>=$startTime, date<$endTime"); // or substitute your own date field
       $date = date("Y-m",$startTime);
       $url = $arch_p . date("Y",$startTime) . "/" . date("m",$startTime);
       $count = count($entries);
       
       if($count > 0) {
      
           echo "<li><a href='$url'>$date - ($count)</a></li>";
       }

   }

}
echo '</ul>';