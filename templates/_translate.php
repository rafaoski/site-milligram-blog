<?php namespace ProcessWire;

// Translate Strings
page()->ts = [

// Language => locale / code prefx
'locale' => _x('en_US', 'HTML locale code'),
'languageCode' => _x('en', 'HTML language code'),

// Main Page ( main.php )
'siteName' => page()->opt['optionsPage']->headline ?: __('Your Site Name'),
'logoAlt' => __('Show My Awesome Logo'),

// Archives Page
'selectArchives' => __('Select The Archives'),
'date' => __('Date'),

// Basic
'readMore' => __('Read More &raquo;'),
'morePages' => __('More Pages'),
'search' => __('Search'),
'recent' =>  __('Recent Posts'),
'noFound' => __('No items found !!!'),

// Images
'strSize' => __("The height %dpx and width %dpx of the Image"),
'thumbSize' => __("thumb size"),
'smallSize' => __("small size"),
'mediumSize' => __("medium size"),
'largeSize' => __("large size"),
'fullSize' => __("full size"),

// Search Page ( search.php )
'foundMatches' => __("Found %d page(s)."),
'noResults' => __('Sorry, no results were found.'),

// Blog Post ( blog-post.php )
'alsoLike' => __('You might also like:'),

// Hero ( home.php )
'heroTxtFirst' => __('A friendly and powerful open source CMS'),
'heroTxtNext' => __('Processwire'),
'heroTxtLast' => __('With an exceptionally strong API'),
'addHero' => __('Add Hero Text'),

// Grid ( grid.php )
'wow' => __(' PROCESSWIRE WOW!!!'),

// Contact Form
'contactUs' => __('Contact Us'),
'labelName' => __('Name'),
'labelEmail' => __('E-Mail'),
'labelMessage' => __('Some Message'),
'labelSuccess' => __('Success !!! Your message has been sent'),
'somethingWrong' => __('Something Wrong !!! Try it again'),
'fillFields' => __('Fill the fields correctly !!!'),
'submit' => __('Submit'),
'reset' => __('Reset'),
'showForm' => __('Show Form'),
'mailSubject' => __('Mail Subject'),
'labelAccept' => __('By submitting a query, you accept'),
'labelPrivacy' => __('privacy policy'),

// Footer ( footer.php )
'poweredBy' => __('Powered by ProcessWire CMS'),
'editPage' => __('Edit Page'),
'privacyMessage' => __('Privacy & Cookies Policy. This website uses cookies to ensure you get the best experience on our website.'),
'goIt' => __('Got it!'),
'learnMore' => __('Learn More'),

// BASIC PAGINATION
'prev' => __('&laquo; Previous'),
'next' => __('Next &raquo;'),

// COMMENTS FORM
'cite' => __('Name'),
'email' => __('Email'),
'text' => __('Comment'),
'submit' => __('Submit'),
'commentsLabel' => __('Comments'),
'added' => __('Added '),
'inDay' => __(' in day '),
'reply' => __('Reply'),
'join' => __('Join The Discussion'),
'approved' => __('Your comment must be approved by admin'),
'thanks' => __('Thanks Your comment has been saved'),
'errors' => __('There were errors and the comment was not approved'),
'previousComments' => __('&laquo; Previous Comments'),
'nextComments' => __('Next Comments &raquo;'),

];
