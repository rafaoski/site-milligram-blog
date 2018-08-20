<?php namespace ProcessWire;

/**
 * 
 * https://processwire.com/docs/tutorials-old/quick-start/navigation/
 * Usage => <?=simpleNav($pages->get("/"))?>
 * 
 * @param Page|null $root
 * 
 */
function simpleNav($root = null) {
    // $home = pages()->get("/");
    $children = $root->children();
    $children->prepend($root);
    $out = '';
        foreach($children as $child) {
           $class = $child->id == wire('page')->id ? 'active' : 'no-active';
           $out .= "<li class='{$class}'><a class='nav-item' href='{$child->url}'>{$child->title}</a></li>";
        }
    return $out;
}

/**
 * 
 * @param Page|null $root
 * @param array|null $opt
 * 
 */
function burgerNav($root = null, $opt = null) {
$children = $root->children();
// $children->prepend($root);
$out = '';
    $out .="
    <!-- Navigation -->
    <ul class='b-nav'>";

    foreach($children as $child) {
        $class = $child->id == wire('page')->id ? 'b-link--active' : 'no-active';
        $out .= "<li>
                  <a class='b-link {$class}' href='{$child->url}'>
                     {$child->title}
                   </a>
                 </li>";
        }
        $out .= "</ul>";

$out .= "<!-- Burger-Icon -->
    <div class='b-container'>
        <div class='b-menu'>
          <div class='b-bun b-bun--top'></div>
          <div class='b-bun b-bun--mid'></div>
          <div class='b-bun b-bun--bottom'></div>
        </div>";

if(isset($opt['logo_url'])) {
    $alt = isset($opt['alt']) ? $opt['alt'] : '';
    $out .="<!-- Burger-Logo -->
    <a class='logo' href='{$root->httpUrl}'>
        <img src='{$opt['logo_url']}'
        alt='{$alt}'
        width='91' height='49'/>
    </a>";

} else if(isset($opt['brand'])) {

    $out .= "<a href='{$root->httpUrl}' class='b-brand'>" . $opt['brand'] . "</a>";
}

$out .= "</div><!-- /.b-container -->";

    return $out;
}

/**
 *
 * @param Page|PageArray|null $page
 *
 */
function breadCrumb($page = null) {

    if($page == null) return '';

      $out = '';
    		// breadcrumbs are the current page's parents
		foreach($page->parents() as $item) {
        if($item->name == 'home') {
            $out .= "<span class='home'><a href='$item->url'>
            <i data-feather='home'
            width=25 height=25
            stroke-width=1
            color=#9b4dca>
            </i>
            </a> > </span> ";
        } else {
            $out .= "<span><a href='$item->url'>$item->title</a></span> > ";
        }
            
		}
		// optionally output the current page as the last item
        $out .= $page->id != 1  ? "<span>$page->title</span>" : '';
        return $out;
}

/**
 *
 * @param Page|PageArray|null $page
 * @param array|null $opt 
 *
 */
function pageChildren($page = null, $opt = null) {

if(!count($page->children)) return '';

// Reset variables
$out = '';
$random = '';

// Default Text
    $txt = isset($opt['txt']) ? $opt['txt'] : __('Show more Pages');

// Limit Items
    $limit = isset($opt['limit']) ? $opt['limit'] : 8;

// Random Items
if(isset($opt['random']) && $opt['random'] == true) {
    $random = "sort=random,";
  }

    $out .= "<h4>$txt</h4>";

    $out .= "<ul class='page-children'>";

        foreach ($page->children("limit=$limit,$random start=0") as $child) {

            $out .= "<li><a href='$child->url'>$child->title</a></li>";

        }

    $out .= '</ul>';

    return $out;
}

/**
 * 
 * // Basic Example ( also example is inside /render/grid.php )
 *   echo icon([
 *  'icon'=> 'user',  
 *  'height' => 40,
 *  'width' => 40,
 *  'stroke' => 4,
 *  'color' => '#201f27',
 *  'text' => __('Hello'),
 *  'heading' => 'h1',
 *  // 'before' => true,
 *  'url'=>  'https://feathericons.com/',  
 *  'class' => 'custom-class',
 *  ]);
 * 
 * @param array $opt
 * 
 */
function icon(array $opt) {

    // Reset variables    
    
        $out = '';
    
        // Get options
            $icon = isset($opt['icon']) ? $opt['icon'] : 'circle';
            $txt = isset($opt['txt']) ? $opt['txt'] : '';
            $url = isset($opt['url']) ? $opt['url'] : '#';
            $width = isset($opt['width']) ? $opt['width'] : 25;
            $height = isset($opt['height']) ? $opt['height'] : 25;
            $color = isset($opt['color']) ? $opt['color'] : '#303438';
            $stroke = isset($opt['stroke']) ? $opt['stroke'] : 1;
            $heading = isset($opt['heading']) ? $opt['heading'] : "span";
            $class = isset($opt['class']) ? $opt['class'] : 'font-class';
            $a_class = isset($opt['a_class']) ? $opt['a_class'] : 'a-class';
    
        // custom Url
            if(isset($opt['url'])) {
                $out .= "<a class='$a_class' href='$url'>";
            }
    
        // heading like h1 h2 h3 ( default <span clas='font-class') ...
           $out .= "<$heading class='$class'>";
    
        // Show Custom Text Before
        if (isset($opt['before']) && $opt['before'] == true) $out .= $txt;
           
                $out .= "<i data-feather='$icon' 
                width=$width 
                height=$height 
                stroke-width=$stroke
                color=$color>
                </i>";
    
        // Show Custom Text
        if (!isset($opt['before'])) $out .= $txt;
    
        // End custom heading
            $out .= "</$heading>";
    
        // /End custom url
            if(isset($opt['url'])) {
    
                 $out .= "</a>";
    
            }
        
            return $out;
        }

/**
 * 
 * Example usage
 * ~~
 * echo catTag(pages('/categories/'), 
 *   [
 *     'txt' => __('Categories'),
 *      //  'txt_clear' => true, // Show Only Text without <a href''><h3></h3></a>
 *     'ul_cl' => 'element-ul-class',
 *     'li_cl' => 'element-li-class',
 *     'class' => 'element-a-class',
 *     'limit' => 6, // Limit items
 *     'random' => false, // Sort Random
 *     'dis_count' => false
 *   ]);
 * 
 * @param Page|PageArray|null $page
 * @param array|null $opt 
 *
 */
function catTag($item = null, $opt = null) {

// Do not show if the items do not exist
if(!count($item->children)) return '';

// Do not show if the page is the same as item
if(wire('page')->id == $item->id) return '';

// Reset Variables
    $out = '';
    $random = '';
// Heading Text
    $txt = isset($opt['txt']) ? $opt['txt'] : $item->title;
// Random Items
   if(isset($opt['random']) && $opt['random'] == true) {
      $random = "sort=random";
    }

// Limit Items
    $limit = isset($opt['limit']) ? $opt['limit'] : 12;
// Class <ul
    $ul_cl = isset($opt['ul_cl']) ? $opt['ul_cl'] : 'ct-ul';
// Class <li
    $li_cl = isset($opt['li_cl']) ? $opt['li_cl'] : 'ct-li';    
// Basic Class element <a
    $class = isset($opt['class']) ? $opt['class'] : 'cat-tag-class';

// Show Content
if(isset($opt['txt_clear'])) {

    $out.= $opt['txt'];

} else {

    $out .= "<a href='$item->url'><h3>$txt</h3></a>";

}    

    $out .= "<ul class='page-children $item->name $ul_cl'>";

foreach ($item->children("limit=$limit, $random, start=0") as $child) {

    $count =  count( $child->references() );

    $c_txt = '( ' . count( $child->references() ) . ' )';

    if( isset($opt['dis_count']) && $opt['dis_count'] == true ) $c_txt = '';

        // If category has reference to pages
            if($count != 0) {

               $out .= "<li class='$li_cl'>
                            <a class='$class' 
                                href='$child->url'>$child->title $c_txt  
                            </a>
                        </li>";
            }
        }

    $out .= '</ul>';

    return $out;
}

/**
 *
 * @param array $fonts
 *
 */
function googleFonts(array $fonts) {

// Implode to format => 'Roboto','Montserrat','Limelight','Righteous'
$font_family = "'" . implode("','", $fonts) . "'";

return"<script>
/* ADD GOOGLE FONTS WITH WEBFONTLOADER ( BETTER PAGESPEED )
    https://github.com/typekit/webfontloader
    https://fonts.google.com/?subset=latin-ext&selection.family=Comfortaa|Limelight|Montserrat
*/
WebFontConfig = {
        google: {
        families: [$font_family]
    }
};
    (function(d) {
        var wf = d.createElement('script'), s = d.scripts[0];
        wf.src = 'https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js';
        wf.async = true;
        s.parentNode.insertBefore(wf, s);
    })(document);

</script>";
}

/**
 * 
 * START PAGINATION https://processwire.com/api/modules/markup-pager-nav/
 * 
 * @param Page $items
 * @param string|null $class
 *
 */
function basicPagination($items, $class = null) {

    return $items->renderPager(array(
        'nextItemLabel' => __('Next &raquo;'),
        'previousItemLabel' => __('&laquo; Previous'),
        'listMarkup' => "<ul class='MarkupPagerNav $class'>{out}</ul>",
        'itemMarkup' => "<li class='{class}'>{out}</li>",
        'linkMarkup' => "<a href='{url}'><span>{out}</span></a>",
        'numPageLinks' => 10,
        'currentItemClass' => 'active'
    ));

}

/**
 * Given a group of pages, render a <ul> navigation tree
 *
 * This is here to demonstrate an example of a more intermediate level
 * shared function and usage is completely optional. This is very similar to
 * the renderNav() function above except that it can output more than one
 * level of navigation (recursively) and can include other fields in the output.
 *
 * @param array|PageArray $items
 * @param int $maxDepth How many levels of navigation below current should it go?
 * @param string $fieldNames Any extra field names to display (separate multiple fields with a space)
 * @param string $class CSS class name for containing <ul>
 * @return string
 *
 */
function renderNavTree($items, $maxDepth = 0, $fieldNames = '', $class = 'nav') {

	// if we were given a single Page rather than a group of them, we'll pretend they
	// gave us a group of them (a group/array of 1)
	if($items instanceof Page) $items = array($items);

	// $out is where we store the markup we are creating in this function
	$out = '';

	// cycle through all the items
	foreach($items as $item) {

		// markup for the list item...
		// if current item is the same as the page being viewed, add a "current" class to it
		$out .= $item->id == wire('page')->id ? "<li class='current'>" : "<li>";

		// markup for the link
		$out .= "<a href='$item->url'>$item->title</a>";

		// if there are extra field names specified, render markup for each one in a <div>
		// having a class name the same as the field name
		if($fieldNames) foreach(explode(' ', $fieldNames) as $fieldName) {
			$value = $item->get($fieldName);
			if($value) $out .= " <div class='$fieldName'>$value</div>";
		}

		// if the item has children and we're allowed to output tree navigation (maxDepth)
		// then call this same function again for the item's children
		if($item->hasChildren() && $maxDepth) {
			if($class == 'nav') $class = 'nav nav-tree';
			$out .= renderNavTree($item->children, $maxDepth-1, $fieldNames, $class);
		}

		// close the list item
		$out .= "</li>";
	}

	// if output was generated above, wrap it in a <ul>
	if($out) $out = "<ul class='$class'>$out</ul>\n";

	// return the markup we generated above
	return $out;
}

/**
 *
 * @param array $info
 *
 */
function cookieBanner(array $info) {
    
$message = isset($info['message']) ? $info['message'] : __('Privacy & Cookies Policy.');
$dismiss = isset($info['dismiss']) ? $info['dismiss'] : __('Got it!');
$link = isset($info['link']) ? $info['link'] : __('Learn More');
$href = isset($info['href']) ? $info['href'] : __('Privacy & Cookies Policy.');

return "<link rel='stylesheet' type='text/css' href='//cdnjs.cloudflare.com/ajax/libs/cookieconsent2/3.1.0/cookieconsent.min.css' />
<script defer src='//cdnjs.cloudflare.com/ajax/libs/cookieconsent2/3.1.0/cookieconsent.min.js'></script>
<script>
window.addEventListener('load', function(){
window.cookieconsent.initialise({
  'palette': {
    'popup': {
      'background': 'rgba(19, 20, 23, 0.71)'
    },
    'button': {
      'background': '#14a7d0'
    }
  },
  'theme': 'classic',
  'position': 'bottom-right',
  'content': {
    'message': '$message',
    'dismiss': '$dismiss',
    'link': '$link',
    'href': '$href'
  }
})});
</script>";
}

/**
 * 
 * https://developers.google.com/analytics/devguides/collection/analyticsjs/
 * 
 * @param string $code Google Analytics Tracking Code
 *
 */
function gAnalitycs($code)
{
return "\n
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src='https://www.googletagmanager.com/gtag/js?id=UA-{$code}'></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'UA-{$code}');
</script>";
}


/**
 * 
 * @param Page|null $item
 * @param array $opt
 * 
 */    
function imgDemo($item, $opt = null) {

$out = '';
$width = isset($opt['width']) ? $opt['width'] : '640';
$height = isset($opt['height']) ? $opt['height'] : '420';

if(count($item->images)) {

$out .="<img class='center lazy'
        data-src='{$item->images->first->url}'
        alt='{$item->description}'
        width='$width' height='$height'>";
        
} else if(isset($opt) && $opt['demo'] == true ){
        

// Home Page Random images from https://picsum.photos/
if(isset($opt['random']) && $opt['random'] == true) {
    $width = '3' . rand(1,4) . '0';
    $height = '2' . rand(5,9) . '0';
}


$out .="<img class='center lazy'
        data-src='https://picsum.photos/$width/$height'
        alt='$item->title'
        width='$width' height='$height'>";
}

return $out;

}


/**
 * 
 * Prev Next Button
 * Basic Example echo prNx($page, 'grid')
 *
 * @param Page|null $item
 * @param string $class
 * 
 */
function prNx($item = null, $class = 'prev-next') {

// Prev Next Button    
    $p_next = $item->next();
    $p_prev = $item->prev();

$out = '';    

$out .= "<div class='$class'>";

// link to the prev blog post, if there is one
    if($p_prev->id) {

// Get function icon()
    $out .= icon([
        'icon'=> 'arrow-left',
        'txt' => $p_prev->title,
        'url' => $p_prev->url,
        'a_class' => 'm-1 button button-outline',
        ]);
    }

// link to the next blog post, if there is one
    if($p_next->id) {

// Get function icon()
    $out .= icon([
        'icon'=> 'arrow-right',
        'txt' => $p_next->title,
        'url' => $p_next->url,
        'before' => true,
        'a_class' => 'm-1 button button-outline',
        ]);
    }

$out .= '</div>';

    return $out;
}

 /**
 * 
 * Comments + Pagination
 * @param Page $page
 * @param int $limit
 *
 */
function blogComments($page, $limit = 12) {

if (!$page->comments) return ''; 
// Translatable Strings
$cite = __('Name');
$email = __('Email');
$text = __('Comment');
$submit = __('Submit');
$comments_l = __('Comments');
$added = __('Added ');
$in_day = __(' in day ');
$reply = __('Reply');
$join = __('Join The Discussion');
$approved = __('Your comment must be approved by admin');
$thanks = __('Thanks Your comment has been saved');
$errors = __('There were errors and the comment was not approved');
$prev = __('&laquo; Previous Comments');
$next = __('Next Comments &raquo;');


$comm = '';

    $start = (input()->pageNum - 1) * $limit;
    $comments = $page->comments->slice($start, $limit);

    $comm .= $comments->render(array(
     'headline' => "<h3>" . $comments_l . "</h3>",
     'commentHeader' => $added . '{cite}' . $in_day . ' {created} {stars} {votes}',
     'dateFormat' => 'm/d/y - H:i',
     'encoding' => 'UTF-8',
    //  'admin' => false, // shows unapproved comments if true
     'replyLabel' => $reply,
   ));

   $comm .= $page->comments->renderForm(array(
     'headline' => '<h2>' . $join . '</h2>',
     'pendingMessage' => $approved,
     'successMessage' => $thanks,
     'errorMessage' => $errors,
     'attrs' => array(
     'id' => 'CommentForm',
     'action' => './',
     'method' => 'post',
     'class' => 'comm-form c-form',
     'rows' => 5,
     'cols' => 50,
     ),
     'labels' => array(
             'cite' => $cite,
             'email' => $email,
             'text' => $text ,
             'submit' => $submit,
         ),
     ));

     $comm .= "<p class='link-pagination'>";

        if(input()->pageNum > 1) {
        $comm .= "<a class='btn m-1' href='./page" . (input()->pageNum - 1) . "'>" .  $prev . "</a>";
        }
        if($start + $limit < count(page()->comments)) {
        $comm .= "<a class='btn m-1'  href='./page" . (input()->pageNum + 1) . "'>" . $next . "</a>";
        }
        $comm .= "</p>";

return $comm;

}


/**
 * 
 * TRASH DEMO DATA => USAGE: trashDemoData($trash = true);
 * 
 * @param  bool $trash
 * 
*/
function trashDemoData($trash = false) {
    // IF TRUE
    if($trash == true) {
        // GET ID ALL PAGES TO TRASH
        $arr_p = [
            // '1029', // About Page
            '1030','1031','1032','1033', // About Children
            // '1023', // News
            '1024','1025','1026', // News Children
            // '1016', // Basic Page
            '1018','1021', // Basic Page Children
            // '1040', // Blog Page
            '1043','1049','1052', '1057', // Blog Children
            // '1044', // Categories Page
            '1045','1050','1053', // Categories Children
            // '1046', // Tags Page
            '1047','1048','1051','1054','1055','1058' // Tags Children
        ];
            foreach ($arr_p as $key) {
                $trash_p = pages()->get($key);
            // IF PAGE EXSIST
                if($trash_p->name == true) {
            // PAGE TO TRASH
                    pages()->trash($trash_p);
                // OR DELETE
                    // pages()->delete($trash_p);
                }
            }
        }
    }