<?php namespace ProcessWire;
// If Multi Language Modules activate
if(!page()->getLanguages()) return '';
// handle output of 'hreflang' link tags for multi-language
// this is good to do for SEO in helping search engines understand
// what languages your site is presented in
foreach($languages as $language) {
    // if this page is not viewable in the language, skip it
    if(!$page->viewable($language)) continue;
    // get the http URL for this page in the given language
    $url = $page->localHttpUrl($language);
    // hreflang code for language uses language name from homepage
    $hreflang = $home->getLanguageValue($language, 'name');
    // output the <link> tag: note that this assumes your language names are the same as required by hreflang.
    echo "\t<link rel='alternate' hreflang='$hreflang' href='$url' />\n";
}