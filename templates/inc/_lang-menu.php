<?php namespace ProcessWire;
// If Enable Multilanguage Modules
if(!page()->getLanguages()) return '';
// language switcher / navigation
echo "<ul class='$menu_class' role='navigation'>";
// Start Loop
foreach($languages as $language) {
// is page viewable in this language?
    if(!$page->viewable($language)) continue;
    if($language->id == $user->language->id) {
        echo "<li class='active'>";
    } else {
        echo "<li>";
    }
    $url = $page->localUrl($language); 
    $hreflang = $home->getLanguageValue($language, 'name'); 
    echo "<a hreflang='$hreflang' href='$url'>$language->title</a></li>";

}

echo "</ul>";