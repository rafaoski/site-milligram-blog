# --- WireDatabaseBackup {"time":"2018-09-04 21:21:17","user":"","dbName":"mix-blog","description":"","tables":[],"excludeTables":["pages_drafts","pages_roles","permissions","roles","roles_permissions","users","users_roles","user","role","permission"],"excludeCreateTables":[],"excludeExportTables":["field_roles","field_permissions","field_email","field_pass","caches","session_login_throttle","page_path_history"]}

DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(250) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_admin_theme`;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_admin_theme` (`pages_id`, `data`) VALUES('41', '160');

DROP TABLE IF EXISTS `field_body`;
CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1024', '<p>Welcome to the latest issue of ProcessWire Weekly! This time we\'re going to introduce ProcessWire 3.0.109 and the built-in two-factor authentication support included with it. We\'re also going to introduce a slightly older module – one that we originally skipped for reasons we\'ll explain soon – called Pagefield Pairs.</p>\n\n<p>Our latest site of the week belongs to a Neumünster, Germany based music school, Musikschule Neumünster. This wonderful site was crafted as a co-project of two agencies, and the end result is something that they can both no doubt be proud of – and we\'re absolutely thrilled to see this site being powered by ProcessWire, of course.</p>\n\n<p><em>As always, a big thank you to all of you for being here with us, and please don\'t hesitate to <a href=\"https://weekly.pw/feedback/\">drop us a note</a> if there\'s anything in your mind that you\'d like to share. Your feedback helps us focus on the things that you folks want to hear more about.</em></p>\n\n<blockquote>\n<h3><a href=\"https://weekly.pw/issue/221/\">The article taken from this web page -- PROCESSWIRE WEKKLY --</a></h3>\n</blockquote>\n\n<p> </p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1025', '<p><a href=\"https://processwire.com/talk/profile/495-jonathan-lahijani/\">Jonathan Lahijani</a> recently released a great series of <a href=\"https://processwire.com/blog/posts/wordpress-vs-processwire/#watch-the-wordpress-vs-processwire-videos\">ProcessWire vs. WordPress videos</a>. This week, we\'ll highlight these and take a closer look. The scope, quantity and quality of the videos made me curious about what inspired them, as well as the process that Jonathan used in making them.</p>\n\n<blockquote><a href=\"https://processwire.com/blog/posts/wordpress-vs-processwire/\">The article taken from this web page -- PROCESSWIRE.COM --</a></blockquote>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1026', '<p><strong>By default, processwire renders pages with a file located in \'/templates/\' which shares the same name as the template used to create the page.</strong></p>\n\n<p>For example, if the page has been created using a template called \'basic-page\', then processwire looks for the file \'/templates/basic-page.php\' file to render the content. You can change this behaviour though by specifying that a template uses an alternate template instead.</p>\n\n<p>This means you can put the skeleton of your entire website in one file i.e. main menu, header, footer, things that usually don\'t change much and are repeated across multiple pages, and then just render different body content for each page on your website. This file can be called whatever you like, I\'m using \'_main.php\'.</p>\n\n<blockquote>\n<h3><a href=\"https://www.pwtuts.com/processwire-tutorials/alternate-template-strategy-using-a-single-output-file/\">Read More Here -- PW TUTS --</a></h3>\n</blockquote>\n\n<p> </p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1029', '<p>Your design and development process won\'t be interrupted by ProcessWire – it\'s built to adapt to your way of doing things, not the other way around. ProcessWire gives you the tools to get at your data, but you make the markup. You never have to design a site for ProcessWire, and the system won\'t impose any limitations upon your site\'s design or the designer. ProcessWire is a system that you can feel good about handing the keys over to the client because it\'s easy for them to use and easy to support.</p>\n\n<blockquote>\n<h3>Accommodates unique data needs easily</h3>\n</blockquote>\n\n<h3>Where ProcessWire fits</h3>\n\n<p>In its current state, ProcessWire is not built to a specific need like many CMSs (i.e. like Wordpress is built for blogs). Instead it is built to the needs of well structured, highly indexable, standards compliant web sites in general. Because ProcessWire has strong support for custom data types and fields, you may find it to be an ideal fit with inventories of searchable, relational or cross referenced information. Examples include company directories, real estate listings, media delivery engines, travel listings, map applications, scientific directories, mobile application web services, searchable databases for products or services, and so on.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1030', '<p>ProcessWire is designed to have an approachable simplicity that is retained regardless of scale. Simplicity often implies reduced capability, and this is not the case with ProcessWire. From the surface, there is very little complexity and the application requires no training. But open the hood, and you have a lot of horsepower at your disposal for just about any content need. The goal is jQuery or Google-like simplicity (a simple interface to powerful engineering). Regardless of scale, the inherent simplicity and joy in using the interface and <a href=\"https://processwire.com/api/\">CMS API</a> remains consistent, predictable, and capable.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1031', '<p>ProcessWire\'s API takes it\'s inspiration from jQuery, providing a simple and fun programming interface to working with your content. It\'s all PHP, so you don\'t have another tag-scripting language to learn. While some background in PHP helps with more complex tasks, it is not required to develop your sites with ProcessWire. <a href=\"https://processwire.com/api/\">More about ProcessWire\'s API</a> and <a href=\"http://cheatsheet.processwire.com\">API Cheatsheet</a></p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1032', '<p>We enjoy working with the jQuery javascript library because its syntax is simple and fun to use, and it lets you get a lot done without a lot of work. We\'ve always wished that we could find a similar experience with a CMS platform. As a result, ProcessWire\'s API is inspired by jQuery and its style and syntax.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1033', '<p>Any given pages may cross reference each other in a one-to-one or one-to-many relationship. This gives ProcessWire the ability to function like a relational database on top of a <a href=\"http://processwire.com/\">CMS</a>. The client (or developer of the web site), rather than the software, defines what these relationships are.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1043', '<p>All of the file assets that your website outputs are generally cached by your web browser. Common examples are images (jpg, png, gif, etc.), documents (pdf, doc, etc.), stylesheets and javascript files, but of course it could be any type of file. And it\'s a desirable thing that the browser caches these, because otherwise it would have to reload them on every single request, slowing down the browsing experience, and taxing the server.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1049', '<h3>What is FieldsetPage?</h3>\n\n<p>FieldsetPage uses a separate page (behind the scenes) to store values for the fields you select when configuring the fieldset. Relative to other types of fieldsets, a major benefit is that you can re-use fields that might already be present on your page, outside of the fieldset. For example, you could have a “title” field on your page, and another in your fieldset. Likewise for any other fields. This is possible because fields in the fieldset are in their own namespace. That namespace is another page, separate from the main page.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1052', '<h3>Site profile highlights</h3>\n\n<ul>\n	<li>This profile includes a <a href=\"http://demo.processwire.com/regular/blog/\">blog component</a> and demonstrates how to build a simple blog in ProcessWire.</li>\n	<li>The profile uses the new <a href=\"https://processwire.com/blog/posts/processwire-3.0.50-core-updates/\">markup regions</a> and the new ProcessWire functions API.</li>\n	<li>It uses the new Uikit 3 on the front-end in template files and includes a handy <a href=\"https://github.com/ryancramerdesign/regular/blob/master/site-regular/templates/_uikit.php\">PHP library of Uikit-specific functions</a>.</li>\n	<li>One of the template files (<a href=\"https://github.com/ryancramerdesign/regular/blob/master/site-regular/templates/basic-page-edit.php\">basic-page-edit.php</a>) demonstrates how to implement front-end editing features. When logged in (and page is editable) you can edit any pages using that template on the front-end.</li>\n	<li>Uses pagination (after 10+ blog posts) and demonstrates use of comments as well. Includes a <a href=\"https://github.com/ryancramerdesign/regular/blob/master/site-regular/templates/_uikit.php#L526\">ukPagination()</a> function which tailors ProcessWire\'s MarkupPagerNav module to deliver Uikit pagination.</li>\n	<li>Demonstrates use of a Page reference field, as used by <a href=\"http://demo.processwire.com/regular/categories/\">categories</a> in the blog. This is something that none of our core profiles do at present, and we think they should.</li>\n	<li>The <a href=\"https://github.com/ryancramerdesign/regular/tree/master/site-regular/templates\">template files</a> are easy-to-read and modify, and serve as a good platform to build from. Use of markup regions makes them simple to follow in the same way that template files using direct output tend to be simple to follow.</li>\n	<li>Demonstrates implementation of a custom hook function (see in the /<a href=\"https://github.com/ryancramerdesign/regular/blob/master/site-regular/ready.php\">site/ready.php</a> file).</li>\n</ul>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1057', '<p>Milligram Blog Site Profile For <a href=\"https://processwire.com/\" rel=\"nofollow\">Processwire 3x</a> with include functions like:</p>\n\n<h4><a href=\"https://processwire.com/blog/posts/processwire-3.0.49-introduces-a-new-template-file-strategy/\" rel=\"nofollow\">MarkupRegions</a></h4>\n\n<h4><a href=\"https://processwire.com/blog/posts/processwire-3.0.39-core-updates/\" rel=\"nofollow\">FunctionsAPI</a></h4>\n\n<h4><a href=\"https://processwire.com/blog/posts/processwire-2.5.2/\" rel=\"nofollow\">wireIncludeFile | wireRenderFile</a></h4>\n\n<h4>Essentially, this structure uses minimalist CSS framework <a href=\"https://milligram.io/\" rel=\"nofollow\">Milligram</a> and the Flexbox Grid System <a href=\"https://gridlex.devlint.fr/\" rel=\"nofollow\">Gridlex</a></h4>\n\n<h3>How To Install</h3>\n\n<ol>\n	<li>Download the <a href=\"https://github.com/rafaoski/site-milligram-blog/archive/master.zip\">zip file</a> at Github or clone directly the repo: <code>git clone git@github.com:rafaoski/site-milligram-blog.git</code></li>\n	<li>Extract the folder <strong>site-milligram</strong> into a fresh ProcessWire installation root folder.</li>\n	<li>During the installation of ProcessWire, choose the profile <strong>\"Milligram Blog\"</strong>.</li>\n</ol>\n\n<h4>If you want to use <a href=\"https://github.com/JeffreyWay/laravel-mix\">Laravel Mix</a> you must first ensure that <a href=\"https://nodejs.org/en/download/\" rel=\"nofollow\">Node.js</a> and <a href=\"https://www.npmjs.com/get-npm\" rel=\"nofollow\">NPM</a> are installed on your machine.</h4>\n\n<p>Basic example to Debian and Ubuntu based Linux distributions:</p>\n\n<h4>Node.js</h4>\n\n<p>curl -sL <a href=\"https://deb.nodesource.com/setup_8.x\" rel=\"nofollow\">https://deb.nodesource.com/setup_8.x</a> | sudo -E bash - sudo apt-get install -y nodejs</p>\n\n<p>See more installation options <a href=\"https://nodejs.org/en/download/package-manager/\" rel=\"nofollow\">LINK</a></p>\n\n<h4>npm is installed with Node.js just check in linux terminal like below:</h4>\n\n<p><code>node -v</code><br />\n<code>npm -v</code></p>\n\n<h4>Set BrowserSync inside folder <code>/templates/webpack.mix.js</code> and change your dev url</h4>\n\n<p><code>proxy: \'<a	data-pwid=2	href=\"http://localhost/mix/\" rel=\"nofollow\">http://localhost/mix/</a>\',</code> to your installation processwire folder like:<br />\n<code>proxy: \'<a href=\"http://localhost/your-processwire-installation-folder/\" rel=\"nofollow\">http://localhost/your-processwire-installation-folder/</a>\',</code></p>\n\n<p>Next install npm packages in your templates folder with command <code><strong>npm install</strong></code><br />\nNow, boot up the dev server <code><strong>npm run watch</strong></code>, and you\'re all set go!<br />\nOn completion, use the command <code><strong>npm run production</strong></code> to build styles and scripts in the dist folder</p>\n\n<h4>Simple Usage ( Basic Command )</h4>\n\n<ul>\n	<li><strong>Run</strong> <code>npm install</code></li>\n	<li><strong>Watch</strong> <code>npm run watch</code></li>\n	<li><strong>Build</strong> <code>npm run production</code></li>\n</ul>\n\n<h4>All files to Webpack build steps is inside file ( webpack.mix.js )</h4>\n\n<h4>Folder With all SCSS files is inside templates/src/scss</h4>\n\n<h4>All build styles and scripts is inside the ( dist ) folder</h4>\n\n<h4>References:</h4>\n\n<p><a href=\"https://milligram.io/\" rel=\"nofollow\">Milligram</a><br />\n<a href=\"https://gridlex.devlint.fr/\" rel=\"nofollow\">Gridlex</a><br />\n<a href=\"https://github.com/JeffreyWay/laravel-mix\">Laravel Mix</a><br />\n<a href=\"https://feathericons.com/\" rel=\"nofollow\">Feather Icons</a><br />\n<a href=\"https://github.com/typekit/webfontloader\">Web Font Loader</a><br />\n<a href=\"https://github.com/verlok/lazyload\">Verlok Lazy Load</a><br />\n<a href=\"https://cookieconsent.insites.com/\" rel=\"nofollow\">Cookie Consent</a><br />\n<a href=\"https://vincentgarreau.com/particles.js/\" rel=\"nofollow\">Particles.js</a></p>\n\n<blockquote>\n<p>Also read about this <a	data-pwid=1052	href=\"/blog/regular-blog-site-profile/\">Regular</a> profile</p>\n</blockquote>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1068', '<h2>Who we are</h2>\n\n<p>Our website address is: http://localhost/milligram.</p>\n\n<h2>What personal data we collect and why we collect it</h2>\n\n<h3>Comments</h3>\n\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n\n<h3>Media</h3>\n\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n\n<h3>Contact forms</h3>\n\n<h3>Cookies</h3>\n\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n\n<p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n\n<h3>Embedded content from other websites</h3>\n\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n\n<h3>Analytics</h3>\n\n<h2>Who we share your data with</h2>\n\n<h2>How long we retain your data</h2>\n\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n\n<h2>What rights you have over your data</h2>\n\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n\n<h2>Where we send your data</h2>\n\n<p>Visitor comments may be checked through an automated spam detection service.</p>\n\n<h2>Your contact information</h2>\n\n<h2>Additional information</h2>\n\n<h3>How we protect your data</h3>\n\n<h3>What data breach procedures we have in place</h3>\n\n<h3>What third parties we receive data from</h3>\n\n<h3>What automated decision making and/or profiling we do with user data</h3>\n\n<h3>Industry regulatory disclosure requirements</h3>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1076', '<html><body>\n                  <h1>Success !!! Your message has been sent</h1>\n                  <h3>Name: Alex</h3>\n                  <h3>E-Mail: alex@gmail.com</h3>\n                  <p><b>Some Message:</b> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su</p>\n             </body></html>');

DROP TABLE IF EXISTS `field_categories`;
CREATE TABLE `field_categories` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1043', '1045', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1049', '1050', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1052', '1053', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1057', '1053', '0');

DROP TABLE IF EXISTS `field_check_1`;
CREATE TABLE `field_check_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_check_1` (`pages_id`, `data`) VALUES('1065', '1');

DROP TABLE IF EXISTS `field_comments`;
CREATE TABLE `field_comments` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `cite` varchar(128) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `created` int(10) unsigned NOT NULL,
  `created_users_id` int(10) unsigned NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `user_agent` varchar(250) NOT NULL DEFAULT '',
  `website` varchar(250) NOT NULL DEFAULT '',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  `code` varchar(128) DEFAULT NULL,
  `subcode` varchar(40) DEFAULT NULL,
  `upvotes` int(10) unsigned NOT NULL DEFAULT '0',
  `downvotes` int(10) unsigned NOT NULL DEFAULT '0',
  `stars` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_id_sort` (`pages_id`,`sort`),
  KEY `status` (`status`,`email`),
  KEY `pages_id` (`pages_id`,`status`,`created`),
  KEY `created` (`created`,`status`),
  KEY `code` (`code`),
  KEY `subcode` (`subcode`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO `field_comments` (`pages_id`, `data`, `sort`, `id`, `status`, `cite`, `email`, `created`, `created_users_id`, `ip`, `user_agent`, `website`, `parent_id`, `flags`, `code`, `subcode`, `upvotes`, `downvotes`, `stars`) VALUES('1043', 'Hello Frends', '3', '8', '1', 'rafaoski', 'test@gmail.com', '1534443663', '41', '0.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0', '', '0', '0', 'eLmrGNjwJqSaP2wB2zNP_Gu_eUlsaHpKHoQUrmETunEa2zB5cRccjd7Pse8n9nq8m67sB8a07N88ItkGp786v4l_bPxIf16kkSoffnaPXRCsnm0JoIzSNDllc2BcDrY2', 'wFO4a6wj6cF_ZcNyzhMtHjaTKEDOrcX0fnkeMB8x', '0', '0', NULL);

DROP TABLE IF EXISTS `field_comments_votes`;
CREATE TABLE `field_comments_votes` (
  `comment_id` int(10) unsigned NOT NULL,
  `vote` tinyint(4) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`,`ip`,`vote`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_comments_votes` (`comment_id`, `vote`, `created`, `ip`, `user_id`) VALUES('7', '-1', '2018-08-16 17:54:25', '0.0.0.0', '41');
INSERT INTO `field_comments_votes` (`comment_id`, `vote`, `created`, `ip`, `user_id`) VALUES('7', '1', '2018-08-16 17:54:22', '0.0.0.0', '41');

DROP TABLE IF EXISTS `field_date`;
CREATE TABLE `field_date` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1057', '2017-11-03 00:00:00');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1043', '2018-08-15 00:00:00');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1049', '2018-08-16 00:00:00');
INSERT INTO `field_date` (`pages_id`, `data`) VALUES('1052', '2018-08-16 00:00:00');

DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_fileldset_seo`;
CREATE TABLE `field_fileldset_seo` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_fileldset_seo_end`;
CREATE TABLE `field_fileldset_seo_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_headline`;
CREATE TABLE `field_headline` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1', 'It’s Based Upon Three Simple Core Concepts: Pages, Fields, and Templates');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('41', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1024', 'ProcessWire Weekly #221');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1025', 'WordPress vs. ProcessWire video topics');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1026', 'Alternate template strategy - using a single output file');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1029', 'Build Bigger, Faster, Stronger, Easier.');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1030', 'Simplicity often implies reduced capability, and this is not the case with ProcessWire ...');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1031', 'ProcessWire\'s API takes it\'s inspiration from jQuery');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1032', 'As a result, ProcessWire\'s API is inspired by jQuery and its style and syntax.');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1033', 'ProcessWire is a free PHP content management system and framework (open source CMS/CMF) built to save you time and work the way you do.');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1043', 'ProCache “buster” — browser cache busting for files');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1049', 'FieldsetPage uses a separate page (behind the scenes) to store values for the fields you select when configuring the fieldset.');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1052', 'Consistent with the plans of introducing new site profiles this year, we\'ve started work on the new site profile');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1065', 'Milligram Blog');

DROP TABLE IF EXISTS `field_images`;
CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('41', 'user.png', '0', '', '2018-08-21 18:03:48', '2018-08-21 18:03:48', '');

DROP TABLE IF EXISTS `field_img_1`;
CREATE TABLE `field_img_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_img_1` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1065', 'logo-1.png', '0', '', '2018-09-04 17:59:01', '2018-09-04 17:59:01', '');

DROP TABLE IF EXISTS `field_img_2`;
CREATE TABLE `field_img_2` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_img_2` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1065', 'favicon-1.png', '0', '', '2018-09-04 17:59:01', '2018-09-04 17:59:01', '');

DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_process` (`pages_id`, `data`) VALUES('10', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('23', '10');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('3', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('8', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('9', '14');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('6', '17');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('11', '47');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('16', '48');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('21', '50');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('29', '66');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('30', '68');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('22', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('28', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('2', '87');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('300', '104');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('301', '109');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('302', '121');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('303', '129');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('31', '136');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('304', '138');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1007', '150');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1010', '159');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1012', '161');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1022', '163');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1041', '170');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1061', '171');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1056', '172');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1059', '174');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1074', '175');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1062', '176');

DROP TABLE IF EXISTS `field_rep_url`;
CREATE TABLE `field_rep_url` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_rep_url` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1065', '1069,1070,1071,1072,1073', '5', '1066');

DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_sidebar`;
CREATE TABLE `field_sidebar` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_sidebar` (`pages_id`, `data`) VALUES('1024', '<blockquote>\n<p><em>Read more about the core level two-factor authentication support, the two-factor auth modules mentioned above, and how all this actually looks like from an end-user point of view from <a href=\"http://processwire.com/blog/posts/processwire-3.0.109-adds-two-factor-authentication/\" target=\"_blank\" rel=\"noreferrer noopener\">Ryan\'s latest post at the processwire.com blog</a>!</em></p>\n</blockquote>');
INSERT INTO `field_sidebar` (`pages_id`, `data`) VALUES('1025', '<blockquote>\n<p>As you might know, ProcessWire and WordPress are really different animals, and they can be difficult to directly compare, being so different.</p>\n</blockquote>\n\n<p>Many in the ProcessWire community started with WordPress and then moved on to ProcessWire as their needs as a developer—and very often the needs of their clients—grew and evolved. The title and scope of this video series naturally limits it to aspects that have equivalents between WordPress and ProcessWire, and I imagine it will be especially useful to web designers/developers that are migrating from WP to PW, or those considering it. However I think the <a href=\"https://processwire.com/blog/posts/wordpress-vs-processwire/#watch-the-wordpress-vs-processwire-videos\">videos</a> are also useful even to developers that work with ProcessWire exclusively, as Jonathan really knows his way around the system and there\'s a lot to learn from these.</p>');
INSERT INTO `field_sidebar` (`pages_id`, `data`) VALUES('1026', '<blockquote>\n<p>Remember though that this is just one way of many.</p>\n\n<p>You can check out the <a href=\"https://processwire.com/docs/tutorials/how-to-structure-your-template-files/\" target=\"_blank\" rel=\"noreferrer noopener\">other strategies here</a>.</p>\n</blockquote>');
INSERT INTO `field_sidebar` (`pages_id`, `data`) VALUES('1029', '<blockquote>\n<p>Some very respectable CMSs are encumbered by structure, terminology and processes that relate back to roots in blogging. This is something that I view as a bottleneck and not the fit many designers/developers are looking for (including myself).</p>\n</blockquote>');
INSERT INTO `field_sidebar` (`pages_id`, `data`) VALUES('1064', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d212270.74112889933!2d-84.56068764012305!3d33.767633774005304!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88f5045d6993098d%3A0x66fede2f990b630b!2sAtlanta%2C+Georgia%2C+Stany+Zjednoczone!5e0!3m2!1spl!2spl!4v1536070850425\" width=\"800\" height=\"600\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>');

DROP TABLE IF EXISTS `field_summary`;
CREATE TABLE `field_summary` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1', 'ProcessWire is a free PHP content management system and framework (open source CMS/CMF) built to save you time and work the way you do. Stop trying to bend other open source CMS platforms to your will – ProcessWire provides simpler and stronger control over your pages, fields, templates and markup at any scale.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('41', 'Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1024', 'Welcome to the latest issue of ProcessWire Weekly! This time we\'re going to introduce ProcessWire 3.0.109 and the built-in two-factor authentication support included with it ...');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1025', 'Most of the videos start by looking at the WordPress side of things, and then switch to looking at the same aspect in ProcessWire.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1026', 'By default, processwire renders pages with a file located in \'/templates/\' which shares the same name as the template used to create the page.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1029', 'ProcessWire is a free PHP content management system and framework (open source CMS/CMF) built to save you time and work the way you do.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1030', 'ProcessWire is designed to have an approachable simplicity that is retained regardless of scale. Simplicity often implies reduced capability, and this is not the case with ProcessWire.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1031', 'ProcessWire\'s API takes it\'s inspiration from jQuery, providing a simple and fun programming interface to working with your content. It\'s all PHP, so you don\'t have another tag-scripting language to learn.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1032', 'We enjoy working with the jQuery javascript library because its syntax is simple and fun to use, and it lets you get a lot done without a lot of work.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1033', 'Any given pages may cross reference each other in a one-to-one or one-to-many relationship. This gives ProcessWire the ability to function like a relational database on top of a CMS.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1043', 'Buster updates the URL of files to contain a string that uniquely represents the version of the file. The URL of the file stays the same so long as the contents of the file does. But as soon as the contents of the file changes, so does the URL.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1049', 'FieldsetPage uses a separate page (behind the scenes) to store values for the fields you select when configuring the fieldset. Relative to other types of fieldsets, a major benefit is that you can re-use fields that might already be present on your page, outside of the fieldset.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1052', 'The front-end of this profile uses the Uikit 3 library and includes a library of time-saving functions for working with Uikit 3');

DROP TABLE IF EXISTS `field_tags`;
CREATE TABLE `field_tags` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES('1043', '1047', '0');
INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES('1043', '1048', '1');
INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES('1049', '1051', '0');
INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES('1052', '1054', '0');
INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES('1052', '1055', '1');
INSERT INTO `field_tags` (`pages_id`, `data`, `sort`) VALUES('1057', '1058', '0');

DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1', 'Easy And Enjoyable Processwire CMS');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('2', 'Admin');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('3', 'Pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('6', 'Add Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('7', 'Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('8', 'Tree');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('9', 'Save Sort');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('10', 'Edit');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('11', 'Templates');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('16', 'Fields');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('21', 'Modules');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('22', 'Setup');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('23', 'Login');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('27', '404 Not Found');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('28', 'Access');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('29', 'Users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('30', 'Roles');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('31', 'Permissions');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('32', 'Edit pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('34', 'Delete pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('35', 'Move pages (change parent)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('36', 'View pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('41', 'Alex Brown');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('50', 'Sort child pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('51', 'Change templates on pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('52', 'Administer users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('53', 'User can update profile/password');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('54', 'Lock or unlock a page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('300', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('301', 'Empty Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('302', 'Insert Link');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('303', 'Insert Image');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('304', 'Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1006', 'Use Page Lister');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1007', 'Find');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1010', 'Recent');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1011', 'Can see recently edited pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1012', 'Logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1013', 'Can view system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1014', 'Can manage system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1015', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1016', 'Basic Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1017', 'Sitemap');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1018', 'First Children');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1021', 'Next Children');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1022', 'Export Site Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1023', 'News');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1024', 'Two-factor authentication');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1025', 'PW & WP video series');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1026', 'Alternate template strategy');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1029', 'About');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1030', 'Simple, powerful');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1031', 'Easy to use');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1032', 'Inspired by jQuery');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1033', 'Relational');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1040', 'Blog');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1041', 'Comments');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1042', 'Use the comments manager');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1043', 'ProCache Buster');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1044', 'Categories');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1045', 'Page Speed');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1046', 'Tags');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1047', 'Cache');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1048', 'Speed');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1049', 'New “FieldsetPage” field type');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1050', 'Fields');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1051', 'FieldsetPage');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1052', 'Regular blog site profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1053', 'Profiles');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1054', 'Regular');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1055', 'UIKIT 3');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1056', 'Export Site Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1057', 'New Milligram Blog Profile !!!');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1058', 'Milligram');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1059', 'Export Site Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1060', 'Archives');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1061', 'Export Site Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1062', 'Repeaters');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1063', 'rep_url');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1064', 'Contact');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1065', 'Options');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1066', 'options');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1068', 'Privacy Policy');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1074', 'Export Site Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1076', 'alex@gmail.com - 2018.09.04 | 20:56');

DROP TABLE IF EXISTS `field_txt_1`;
CREATE TABLE `field_txt_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1064', '344-67-89');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1065', 'Powered by ProcessWire CMS');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1069', 'twitter');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1070', 'facebook');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1071', 'activity');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1072', 'youtube');
INSERT INTO `field_txt_1` (`pages_id`, `data`) VALUES('1073', 'github');

DROP TABLE IF EXISTS `field_url_1`;
CREATE TABLE `field_url_1` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1065', 'https://processwire.com');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1069', 'https://twitter.com/processwire');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1070', 'https://pl-pl.facebook.com/processwire/');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1071', 'https://weekly.pw/');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1072', 'https://www.youtube.com/user/ryancramerdesign/videos');
INSERT INTO `field_url_1` (`pages_id`, `data`) VALUES('1073', 'https://github.com/processwire/processwire');

DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES('2', 'admin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('105', 'archives');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('83', 'basic-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('102', 'blog');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('101', 'blog-post');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('103', 'categories');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('104', 'category');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('107', 'contact');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('108', 'contact-item');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('1', 'home');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('109', 'options');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('5', 'permission');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('106', 'repeater_rep_url');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('4', 'role');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('98', 'search');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('97', 'sitemap');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('99', 'tag');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('100', 'tags');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('3', 'user');

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '98', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '99', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '100', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '101', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '102', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '112', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '113', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '114', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '2', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '1', '0', '{\"columnWidth\":20,\"required\":\"\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '3', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '4', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '92', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '97', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '98', '1', '{\"columnWidth\":80}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '100', '2', '{\"columnWidth\":70}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '102', '3', '{\"columnWidth\":30,\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('4', '5', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('5', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '98', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '99', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '100', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '101', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '102', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '112', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '113', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '114', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '98', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '100', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '112', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '113', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '114', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '100', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '112', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '113', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '114', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '98', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '100', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '112', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '113', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '114', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '98', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '100', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '112', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '113', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '114', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '1', '0', '{\"columnWidth\":80}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '98', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '99', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '100', '10', '{\"columnWidth\":80}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '101', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '102', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '103', '1', '{\"columnWidth\":20}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '104', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '105', '2', '{\"columnWidth\":70}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '106', '3', '{\"columnWidth\":30}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '112', '11', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '113', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '114', '12', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '98', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '99', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '100', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '101', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '102', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '112', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '113', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '114', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '100', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '112', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '113', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '114', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '100', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '112', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '113', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '114', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '98', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '99', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '100', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '101', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '102', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '112', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '113', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '114', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '109', '0', '{\"columnWidth\":50,\"label\":\"Reference Text\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '110', '1', '{\"columnWidth\":50,\"label\":\"Url\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '92', '1', '{\"columnWidth\":50,\"themeBorder\":\"none\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '98', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '99', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '100', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '101', '4', '{\"inputfieldClass\":\"InputfieldTextarea\",\"label\":\"Add Iframe Map\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '102', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '109', '2', '{\"columnWidth\":50,\"label\":\"Phone\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '112', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '113', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '114', '10', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '99', '1', '{\"columnWidth\":100}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '1', '0', '{\"collapsed\":\"4\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '98', '8', '{\"label\":\"Site Name\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '107', '1', '{\"columnWidth\":50,\"label\":\"Logo\",\"maxFiles\":1}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '108', '2', '{\"columnWidth\":50,\"label\":\"Favicon\",\"maxFiles\":1}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '109', '4', '{\"columnWidth\":50,\"label\":\"Text Footer Copyright\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '110', '5', '{\"columnWidth\":50,\"label\":\"Copyright Url\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '111', '3', '{\"label\":\"Social Media\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '112', '6', '{\"label\":\"Enable \\/ Disable Comments\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '113', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '114', '9', NULL);

DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(250) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('1', 'FieldtypePageTitle', 'title', '13', 'Title', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255,\"collapsed\":0,\"minlength\":0,\"showCount\":0,\"icon\":\"circle-thin\",\"themeBorder\":\"none\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('92', 'FieldtypeEmail', 'email', '9', 'E-Mail Address', '{\"size\":70,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('97', 'FieldtypeModule', 'admin_theme', '8', 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('98', 'FieldtypeText', 'headline', '0', 'Headline', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"themeBorder\":\"none\",\"icon\":\"circle-o-notch\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('99', 'FieldtypeTextarea', 'body', '0', 'Body', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":10,\"columnWidth\":70,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"themeBorder\":\"none\",\"icon\":\"file-word-o\",\"htmlOptions\":[2]}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('100', 'FieldtypeTextarea', 'summary', '0', 'Summary', '{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":2,\"themeBorder\":\"none\",\"icon\":\"circle-o\",\"themeOffset\":\"none\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('101', 'FieldtypeTextarea', 'sidebar', '32768', 'Sidebar', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":8,\"columnWidth\":30,\"themeBorder\":\"none\",\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"icon\":\"th-list\",\"allowContexts\":[\"textformatters\",\"inputfieldClass\"]}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('102', 'FieldtypeImage', 'images', '0', 'Images', '{\"fileSchema\":6,\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":0,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"collapsed\":0,\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"icon\":\"picture-o\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('103', 'FieldtypeDatetime', 'date', '0', 'Date', '{\"collapsed\":0,\"size\":25,\"datepicker\":3,\"timeInputSelect\":0,\"dateInputFormat\":\"Y-m-d\",\"icon\":\"calendar\",\"defaultToday\":1,\"dateOutputFormat\":\"Y\\/m\\/d\",\"themeBorder\":\"none\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('104', 'FieldtypeComments', 'comments', '0', 'Comments', '{\"moderate\":0,\"useNotify\":0,\"deleteSpamDays\":3,\"depth\":0,\"dateFormat\":\"relative\",\"useVotes\":0,\"useStars\":0,\"schemaVersion\":6,\"collapsed\":0,\"icon\":\"comment-o\",\"themeOffset\":\"s\",\"useGravatar\":\"g\",\"redirectAfterPost\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('105', 'FieldtypePage', 'categories', '0', 'Categories', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldCheckboxes\",\"parent_id\":1044,\"template_id\":50,\"labelFieldName\":\"title\",\"collapsed\":0,\"optionColumns\":1,\"addable\":1,\"icon\":\"sitemap\",\"themeBorder\":\"none\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('106', 'FieldtypePage', 'tags', '0', 'Tags', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldPageAutocomplete\",\"parent_id\":1046,\"template_id\":45,\"labelFieldName\":\"title\",\"collapsed\":0,\"operator\":\"%=\",\"searchFields\":\"title\",\"addable\":1,\"themeBorder\":\"none\",\"icon\":\"tags\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('107', 'FieldtypeImage', 'img_1', '32768', 'Img 1', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":0,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"themeBorder\":\"none\",\"allowContexts\":[\"maxFiles\"],\"fileSchema\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('108', 'FieldtypeImage', 'img_2', '32768', 'Img 2', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":0,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"themeBorder\":\"none\",\"allowContexts\":[\"maxFiles\"],\"fileSchema\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('109', 'FieldtypeText', 'txt_1', '0', 'Txt 1', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"themeBorder\":\"none\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('110', 'FieldtypeURL', 'url_1', '0', 'Url 1', '{\"textformatters\":[\"TextformatterEntities\"],\"noRelative\":0,\"allowIDN\":0,\"allowQuotes\":0,\"addRoot\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":1024,\"showCount\":0,\"size\":0,\"themeBorder\":\"none\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('111', 'FieldtypeRepeater', 'rep_url', '32768', 'Rep Url', '{\"template_id\":52,\"parent_id\":1063,\"repeaterFields\":[109,110],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0,\"themeBorder\":\"none\",\"repeaterTitle\":\"{txt_1}\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('112', 'FieldtypeCheckbox', 'check_1', '32768', 'Without an index ( noidex )', '{\"collapsed\":0,\"icon\":\"check-square-o\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('113', 'FieldtypeFieldsetTabOpen', 'fileldset_seo', '0', 'SEO', '{\"closeFieldID\":114,\"collapsed\":0,\"icon\":\"folder-open-o\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('114', 'FieldtypeFieldsetClose', 'fileldset_seo_END', '0', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'fileldset_seo\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":113,\"icon\":\"folder-o\"}');

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('1', 'FieldtypeTextarea', '1', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('2', 'FieldtypeNumber', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('3', 'FieldtypeText', '1', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('4', 'FieldtypePage', '3', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('6', 'FieldtypeFile', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('7', 'ProcessPageEdit', '1', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('10', 'ProcessLogin', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('14', 'ProcessPageSort', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('15', 'InputfieldPageListSelect', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('17', 'ProcessPageAdd', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('25', 'InputfieldAsmSelect', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('27', 'FieldtypeModule', '1', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('28', 'FieldtypeDatetime', '1', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('29', 'FieldtypeEmail', '1', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('30', 'InputfieldForm', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('32', 'InputfieldSubmit', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('33', 'InputfieldWrapper', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('34', 'InputfieldText', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('35', 'InputfieldTextarea', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('36', 'InputfieldSelect', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('37', 'InputfieldCheckbox', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('38', 'InputfieldCheckboxes', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('39', 'InputfieldRadios', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('40', 'InputfieldHidden', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('41', 'InputfieldName', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('43', 'InputfieldSelectMultiple', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('45', 'JqueryWireTabs', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('46', 'ProcessPage', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('47', 'ProcessTemplate', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('48', 'ProcessField', '32', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('50', 'ProcessModule', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('55', 'InputfieldFile', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('56', 'InputfieldImage', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('57', 'FieldtypeImage', '1', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\",\"InputfieldPageAutocomplete\"]}', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('61', 'TextformatterEntities', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('67', 'MarkupAdminDataTable', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('76', 'ProcessList', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('78', 'InputfieldFieldset', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('79', 'InputfieldMarkup', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('80', 'InputfieldEmail', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('83', 'ProcessPageView', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('84', 'FieldtypeInteger', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('85', 'InputfieldInteger', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('86', 'InputfieldPageName', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('87', 'ProcessHome', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('89', 'FieldtypeFloat', '1', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('90', 'InputfieldFloat', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('94', 'InputfieldDatetime', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('97', 'FieldtypeCheckbox', '1', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('98', 'MarkupPagerNav', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('103', 'JqueryTableSorter', '1', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('105', 'FieldtypeFieldsetOpen', '1', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('106', 'FieldtypeFieldsetClose', '1', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('107', 'FieldtypeFieldsetTabOpen', '1', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('108', 'InputfieldURL', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('109', 'ProcessPageTrash', '1', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('111', 'FieldtypePageTitle', '1', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('112', 'InputfieldPageTitle', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('113', 'MarkupPageArray', '3', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('114', 'PagePermissions', '3', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('115', 'PageRender', '3', '{\"clearCache\":1}', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('116', 'JqueryCore', '1', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('117', 'JqueryUI', '1', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('121', 'ProcessPageEditLink', '1', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('122', 'InputfieldPassword', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('125', 'SessionLoginThrottle', '11', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('129', 'ProcessPageEditImageSelect', '1', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('131', 'InputfieldButton', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('133', 'FieldtypePassword', '1', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('134', 'ProcessPageType', '33', '{\"showFields\":[]}', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('135', 'FieldtypeURL', '1', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('137', 'InputfieldPageListSelectMultiple', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('138', 'ProcessProfile', '1', '{\"profileFields\":[\"admin_theme\",\"email\",\"headline\",\"images\",\"pass\",\"summary\",\"title\"]}', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('139', 'SystemUpdater', '1', '{\"systemVersion\":16,\"coreVersion\":\"3.0.111\"}', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('148', 'AdminThemeDefault', '10', '{\"colors\":\"classic\"}', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('149', 'InputfieldSelector', '42', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('150', 'ProcessPageLister', '32', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('151', 'JqueryMagnific', '1', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('155', 'InputfieldCKEditor', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('156', 'MarkupHTMLPurifier', '0', '', '2018-07-31 15:40:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('159', 'ProcessRecentPages', '1', '', '2018-07-31 15:40:48');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('160', 'AdminThemeUikit', '10', '', '2018-07-31 15:40:48');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('161', 'ProcessLogger', '1', '', '2018-07-31 15:40:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('162', 'InputfieldIcon', '0', '', '2018-07-31 15:40:51');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('164', 'InputfieldPageAutocomplete', '0', '', '2018-08-06 17:12:26');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('168', 'FieldtypeComments', '1', '', '2018-08-15 19:31:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('169', 'InputfieldCommentsAdmin', '0', '', '2018-08-15 19:31:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('170', 'ProcessCommentsManager', '1', '', '2018-08-15 19:31:39');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('172', 'FieldtypeRepeater', '35', '{\"repeatersRootPageID\":1062,\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}', '2018-09-04 13:07:13');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('173', 'InputfieldRepeater', '0', '', '2018-09-04 13:07:13');

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '2015-12-18 06:09:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=InnoDB AUTO_INCREMENT=1077 DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1', '0', '1', 'home', '9', '2018-09-04 20:57:19', '41', '2018-07-31 15:40:12', '2', '2018-07-31 15:40:12', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('2', '1', '2', 'mix', '1035', '2018-09-04 13:04:28', '40', '2018-07-31 15:40:12', '2', '2018-07-31 15:40:12', '16');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('3', '2', '2', 'page', '21', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '2', '2018-07-31 15:40:12', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('6', '3', '2', 'add', '21', '2018-07-31 15:40:54', '40', '2018-07-31 15:40:12', '2', '2018-07-31 15:40:12', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('7', '1', '2', 'trash', '1039', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '2', '2018-07-31 15:40:12', '17');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('8', '3', '2', 'list', '21', '2018-07-31 15:40:55', '41', '2018-07-31 15:40:12', '2', '2018-07-31 15:40:12', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('9', '3', '2', 'sort', '1047', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '2', '2018-07-31 15:40:12', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('10', '3', '2', 'edit', '1045', '2018-07-31 15:40:54', '41', '2018-07-31 15:40:12', '2', '2018-07-31 15:40:12', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('11', '22', '2', 'template', '21', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '2', '2018-07-31 15:40:12', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('16', '22', '2', 'field', '21', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '2', '2018-07-31 15:40:12', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('21', '2', '2', 'module', '21', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '2', '2018-07-31 15:40:12', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('22', '2', '2', 'setup', '21', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '2', '2018-07-31 15:40:12', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('23', '2', '2', 'login', '1035', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '2', '2018-07-31 15:40:12', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('27', '1', '29', 'http404', '1035', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '3', '2018-07-31 15:40:12', '15');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('28', '2', '2', 'access', '13', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '2', '2018-07-31 15:40:12', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('29', '28', '2', 'users', '29', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '2', '2018-07-31 15:40:12', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('30', '28', '2', 'roles', '29', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '2', '2018-07-31 15:40:12', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('31', '28', '2', 'permissions', '29', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '2', '2018-07-31 15:40:12', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('32', '31', '5', 'page-edit', '25', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '2', '2018-07-31 15:40:12', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('34', '31', '5', 'page-delete', '25', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '2', '2018-07-31 15:40:12', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('35', '31', '5', 'page-move', '25', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '2', '2018-07-31 15:40:12', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('36', '31', '5', 'page-view', '25', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '2', '2018-07-31 15:40:12', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('37', '30', '4', 'guest', '25', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '2', '2018-07-31 15:40:12', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('38', '30', '4', 'superuser', '25', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '2', '2018-07-31 15:40:12', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('40', '29', '3', 'guest', '25', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '2', '2018-07-31 15:40:12', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('41', '29', '3', 'test', '1', '2018-09-04 13:04:28', '40', '2018-07-31 15:40:12', '2', '2018-07-31 15:40:12', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('50', '31', '5', 'page-sort', '25', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('51', '31', '5', 'page-template', '25', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('52', '31', '5', 'user-admin', '25', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('53', '31', '5', 'profile-edit', '1', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('54', '31', '5', 'page-lock', '1', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('300', '3', '2', 'search', '1045', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '2', '2018-07-31 15:40:12', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('301', '3', '2', 'trash', '1047', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '2', '2018-07-31 15:40:12', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('302', '3', '2', 'link', '1041', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '2', '2018-07-31 15:40:12', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('303', '3', '2', 'image', '1041', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '2', '2018-07-31 15:40:12', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('304', '2', '2', 'profile', '1025', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '41', '2018-07-31 15:40:12', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1006', '31', '5', 'page-lister', '1', '2018-07-31 15:40:12', '40', '2018-07-31 15:40:12', '40', '2018-07-31 15:40:12', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1007', '3', '2', 'lister', '1', '2018-07-31 15:40:12', '40', '2018-07-31 15:40:12', '40', '2018-07-31 15:40:12', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1010', '3', '2', 'recent-pages', '1', '2018-07-31 15:40:48', '40', '2018-07-31 15:40:48', '40', '2018-07-31 15:40:48', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1011', '31', '5', 'page-edit-recent', '1', '2018-07-31 15:40:48', '40', '2018-07-31 15:40:48', '40', '2018-07-31 15:40:48', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1012', '22', '2', 'logs', '1', '2018-07-31 15:40:51', '40', '2018-07-31 15:40:51', '40', '2018-07-31 15:40:51', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1013', '31', '5', 'logs-view', '1', '2018-07-31 15:40:51', '40', '2018-07-31 15:40:51', '40', '2018-07-31 15:40:51', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1014', '31', '5', 'logs-edit', '1', '2018-07-31 15:40:51', '40', '2018-07-31 15:40:51', '40', '2018-07-31 15:40:51', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1015', '1', '44', 'search', '1025', '2018-07-31 16:15:44', '41', '2018-07-31 15:45:36', '41', '2018-07-31 15:46:03', '14');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1016', '1', '29', 'basic-page', '1', '2018-08-21 16:53:19', '41', '2018-07-31 15:48:27', '41', '2018-07-31 15:48:27', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1017', '1', '43', 'sitemap', '5', '2018-08-07 14:32:34', '41', '2018-07-31 16:17:48', '41', '2018-07-31 16:17:51', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1018', '1016', '29', 'first-children', '1', '2018-08-21 15:09:10', '41', '2018-07-31 16:31:08', '41', '2018-07-31 16:31:11', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1021', '1016', '29', 'next-children', '1', '2018-08-21 15:09:28', '41', '2018-08-02 16:51:05', '41', '2018-08-02 16:51:14', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1023', '1', '29', 'news', '1', '2018-09-04 19:25:28', '41', '2018-08-04 19:20:44', '41', '2018-08-04 19:20:49', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1024', '1023', '29', 'two-factor-authentication', '1', '2018-08-17 09:57:08', '41', '2018-08-04 19:21:05', '41', '2018-08-04 19:21:08', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1025', '1023', '29', 'pw-wp-video-series', '1', '2018-08-17 09:57:08', '41', '2018-08-04 19:21:19', '41', '2018-08-04 19:21:21', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1026', '1023', '29', 'alternate-template-strategy', '1', '2018-08-17 09:57:08', '41', '2018-08-04 19:21:33', '41', '2018-08-04 19:21:35', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1029', '1', '29', 'about', '1', '2018-09-04 19:25:21', '41', '2018-08-05 12:53:14', '41', '2018-08-05 12:53:18', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1030', '1029', '29', 'simple-powerful', '1', '2018-08-17 09:57:08', '41', '2018-08-05 12:58:26', '41', '2018-08-05 12:59:10', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1031', '1029', '29', 'easy-to-use', '1', '2018-08-17 09:57:08', '41', '2018-08-05 13:10:06', '41', '2018-08-05 13:10:46', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1032', '1029', '29', 'inspired-by-jquery', '1', '2018-08-07 14:38:07', '41', '2018-08-05 13:15:41', '41', '2018-08-05 13:15:48', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1033', '1029', '29', 'relational', '1', '2018-08-17 09:57:08', '41', '2018-08-05 13:37:38', '41', '2018-08-05 13:38:36', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1040', '1', '48', 'blog', '1', '2018-08-15 19:33:02', '41', '2018-08-15 19:29:40', '41', '2018-08-15 19:29:44', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1041', '22', '2', 'comments', '1', '2018-08-15 19:31:39', '41', '2018-08-15 19:31:39', '41', '2018-08-15 19:31:39', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1042', '31', '5', 'comments-manager', '1', '2018-08-15 19:31:39', '41', '2018-08-15 19:31:39', '41', '2018-08-15 19:31:39', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1043', '1040', '47', 'procache-buster', '1', '2018-09-04 16:58:30', '41', '2018-08-15 19:41:46', '41', '2018-08-15 19:42:48', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1044', '1', '49', 'categories', '1', '2018-08-16 16:35:35', '41', '2018-08-16 16:35:22', '41', '2018-08-16 16:35:26', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1045', '1044', '50', 'page-speed', '1', '2018-08-16 16:36:15', '41', '2018-08-16 16:36:13', '41', '2018-08-16 16:36:15', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1046', '1', '46', 'tags', '1', '2018-08-16 16:40:41', '41', '2018-08-16 16:39:42', '41', '2018-08-16 16:39:46', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1047', '1046', '45', 'cache', '1', '2018-08-16 17:16:19', '41', '2018-08-16 17:16:19', '41', '2018-08-16 17:16:19', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1048', '1046', '45', 'speed', '1', '2018-08-16 18:14:35', '41', '2018-08-16 18:14:35', '41', '2018-08-16 18:14:35', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1049', '1040', '47', 'new-fieldsetpage-field-type', '1', '2018-08-17 10:10:45', '41', '2018-08-16 18:49:20', '41', '2018-08-16 18:50:12', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1050', '1044', '50', 'fields', '1', '2018-08-16 18:50:40', '41', '2018-08-16 18:50:40', '41', '2018-08-16 18:50:40', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1051', '1046', '45', 'fieldsetpage', '1', '2018-08-16 18:50:40', '41', '2018-08-16 18:50:40', '41', '2018-08-16 18:50:40', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1052', '1040', '47', 'regular-blog-site-profile', '1', '2018-08-17 09:57:08', '41', '2018-08-16 18:53:07', '41', '2018-08-16 18:54:23', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1053', '1044', '50', 'profiles', '1', '2018-08-16 18:57:15', '41', '2018-08-16 18:57:15', '41', '2018-08-16 18:57:15', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1054', '1046', '45', 'regular', '1', '2018-08-16 18:57:15', '41', '2018-08-16 18:57:15', '41', '2018-08-16 18:57:15', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1055', '1046', '45', 'uikit-3', '1', '2018-08-16 18:57:15', '41', '2018-08-16 18:57:15', '41', '2018-08-16 18:57:15', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1057', '1040', '47', 'new-milligram-blog-profile', '1', '2018-08-18 22:25:13', '41', '2018-08-17 10:20:24', '41', '2018-08-17 10:21:20', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1058', '1046', '45', 'milligram', '1', '2018-08-17 10:26:51', '41', '2018-08-17 10:26:51', '41', '2018-08-17 10:26:51', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1060', '1', '51', 'archives', '1', '2018-08-18 22:16:17', '41', '2018-08-18 21:52:26', '41', '2018-08-18 21:52:26', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1062', '2', '2', 'repeaters', '1036', '2018-09-04 13:07:13', '41', '2018-09-04 13:07:13', '41', '2018-09-04 13:07:13', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1063', '1062', '2', 'for-field-111', '17', '2018-09-04 13:07:45', '41', '2018-09-04 13:07:45', '41', '2018-09-04 13:07:45', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1064', '1', '53', 'contact', '1', '2018-09-04 20:57:19', '41', '2018-09-04 13:17:30', '41', '2018-09-04 13:17:36', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1065', '1', '55', 'options', '1025', '2018-09-04 20:47:12', '41', '2018-09-04 13:19:56', '41', '2018-09-04 13:23:27', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1066', '1063', '2', 'for-page-1065', '17', '2018-09-04 13:31:36', '41', '2018-09-04 13:31:36', '41', '2018-09-04 13:31:36', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1068', '1', '29', 'privacy-policy', '1', '2018-09-04 20:36:23', '41', '2018-09-04 13:46:23', '41', '2018-09-04 18:47:34', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1069', '1066', '52', '1536071522-6046-1', '1', '2018-09-04 17:06:53', '41', '2018-09-04 16:32:02', '41', '2018-09-04 16:33:12', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1070', '1066', '52', '1536071541-2209-1', '1', '2018-09-04 17:06:53', '41', '2018-09-04 16:32:21', '41', '2018-09-04 16:33:12', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1071', '1066', '52', '1536071558-1276-1', '1', '2018-09-04 17:06:53', '41', '2018-09-04 16:32:38', '41', '2018-09-04 16:33:13', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1072', '1066', '52', '1536071568-0815-1', '1', '2018-09-04 17:06:53', '41', '2018-09-04 16:32:48', '41', '2018-09-04 16:33:13', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1073', '1066', '52', '1536071583-7998-1', '1', '2018-09-04 17:06:53', '41', '2018-09-04 16:33:03', '41', '2018-09-04 16:33:13', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1076', '1064', '54', 'alex-gmail.com-2018.09.04-20-56', '1025', '2018-09-04 20:56:42', '40', '2018-09-04 20:56:42', '40', '2018-09-04 20:56:42', '1');

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('32', '2', '2018-07-31 15:40:12');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('34', '2', '2018-07-31 15:40:12');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('35', '2', '2018-07-31 15:40:12');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('36', '2', '2018-07-31 15:40:12');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('37', '2', '2018-07-31 15:40:12');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('38', '2', '2018-07-31 15:40:12');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('50', '2', '2018-07-31 15:40:12');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('51', '2', '2018-07-31 15:40:12');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('52', '2', '2018-07-31 15:40:12');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('53', '2', '2018-07-31 15:40:12');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('54', '2', '2018-07-31 15:40:12');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1006', '2', '2018-07-31 15:40:12');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1011', '2', '2018-07-31 15:40:48');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1013', '2', '2018-07-31 15:40:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1014', '2', '2018-07-31 15:40:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1015', '1', '2018-07-31 15:45:36');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1016', '1', '2018-08-07 14:38:23');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1017', '1', '2018-07-31 16:17:48');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1023', '1', '2018-08-04 19:20:44');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1024', '1', '2018-08-07 14:37:41');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1025', '1', '2018-08-07 14:37:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1026', '1', '2018-08-07 14:38:03');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1029', '1', '2018-08-05 12:53:15');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1030', '1', '2018-08-07 14:37:45');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1031', '1', '2018-08-07 14:37:59');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1032', '1', '2018-08-07 14:38:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1033', '1', '2018-08-07 14:38:15');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1040', '1', '2018-08-15 19:29:40');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1042', '2', '2018-08-15 19:31:39');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1043', '1', '2018-08-15 19:41:46');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1044', '1', '2018-08-16 16:35:22');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1045', '1', '2018-08-16 16:36:13');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1046', '1', '2018-08-16 16:39:42');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1047', '1', '2018-08-16 17:16:19');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1048', '1', '2018-08-16 18:14:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1049', '1', '2018-08-16 18:49:20');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1050', '1', '2018-08-16 18:50:40');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1051', '1', '2018-08-16 18:50:40');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1052', '1', '2018-08-16 18:53:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1053', '1', '2018-08-16 18:57:15');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1054', '1', '2018-08-16 18:57:15');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1055', '1', '2018-08-16 18:57:15');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1057', '1', '2018-08-17 10:20:25');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1058', '1', '2018-08-17 10:26:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1060', '1', '2018-08-18 21:52:26');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1064', '1', '2018-09-04 13:17:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1065', '1', '2018-09-04 13:19:56');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1068', '1', '2018-09-04 13:46:23');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1069', '2', '2018-09-04 16:32:02');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1070', '2', '2018-09-04 16:32:21');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1071', '2', '2018-09-04 16:32:38');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1072', '2', '2018-09-04 16:32:48');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1073', '2', '2018-09-04 16:33:03');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1076', '1', '2018-09-04 20:56:42');

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('2', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1062', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1063', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1063', '1062');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1066', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1066', '1062');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1066', '1063');

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('1', 'home', '1', '0', '0', '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-home title\",\"compile\":3,\"modified\":1536060417,\"ns\":\"ProcessWire\",\"roles\":[37]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1535821587,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"compile\":3,\"nameContentTab\":1,\"modified\":1534867081}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('29', 'basic-page', '83', '0', '0', '{\"allowPageNum\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-file-text title\",\"compile\":3,\"modified\":1536060330,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('43', 'sitemap', '97', '0', '0', '{\"noChildren\":1,\"noParents\":-1,\"slashUrls\":1,\"pageLabelField\":\"fa-map-o title\",\"compile\":3,\"modified\":1535821587,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('44', 'search', '98', '0', '0', '{\"noParents\":-1,\"slashUrls\":1,\"pageLabelField\":\"fa-search title\",\"compile\":3,\"modified\":1536060461,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('45', 'tag', '99', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[46],\"allowPageNum\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-tag title\",\"compile\":3,\"modified\":1535876348,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('46', 'tags', '100', '0', '0', '{\"noParents\":-1,\"childTemplates\":[45],\"allowPageNum\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-tags title\",\"compile\":3,\"modified\":1535821587,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('47', 'blog-post', '101', '0', '0', '{\"parentTemplates\":[48],\"allowPageNum\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-quote-left title\",\"compile\":3,\"modified\":1536060441,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('48', 'blog', '102', '0', '0', '{\"noParents\":-1,\"childTemplates\":[47],\"allowPageNum\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-wordpress title\",\"compile\":3,\"modified\":1536060342,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('49', 'categories', '103', '0', '0', '{\"noParents\":-1,\"childTemplates\":[50],\"allowPageNum\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-sitemap title\",\"compile\":3,\"modified\":1536060372,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('50', 'category', '104', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[49],\"allowPageNum\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-simplybuilt title\",\"compile\":3,\"modified\":1536060387,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('51', 'archives', '105', '0', '0', '{\"noChildren\":1,\"noParents\":-1,\"allowPageNum\":1,\"urlSegments\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-archive title\",\"compile\":3,\"modified\":1536060275,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('52', 'repeater_rep_url', '106', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1536059265}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('53', 'contact', '107', '0', '0', '{\"noParents\":-1,\"slashUrls\":1,\"pageLabelField\":\"fa-envelope-o title\",\"compile\":3,\"modified\":1536085517,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('54', 'contact-item', '108', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[53],\"slashUrls\":1,\"pageLabelField\":\"fa-street-view title\",\"compile\":3,\"modified\":1536059935}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('55', 'options', '109', '0', '0', '{\"noChildren\":1,\"noParents\":-1,\"slashUrls\":1,\"pageLabelField\":\"fa-cogs title\",\"compile\":3,\"modified\":1536088126}');

UPDATE pages SET created_users_id=41, modified_users_id=41, created=NOW(), modified=NOW();

# --- /WireDatabaseBackup {"numTables":30,"numCreateTables":36,"numInserts":641,"numSeconds":0}