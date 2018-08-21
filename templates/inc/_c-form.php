<?php namespace ProcessWire;
if($enable_cf == false) return '';
// Some translatable strings
$c_u = __('Contact Us');
$l_name = __('Name');
$l_email = __('E-Mail');
$l_message = __('Some Message');
$l_success = __('Success !!! Your message has been sent');
$s_wrong = __('Something Wrong !!! Try it again');
$submit = __('Submit');
$reset = __('Reset');
$show_form = __('Show Form');
$m_subj = __('Mail Subject');

if($input->post->submit) :
 
if($input->firstname) {

    $session->Message = '<h3>' . $s_wrong . "</h3>";
    session()->redirect('./http404');   

}
if($session->CSRF->hasValidToken()) {

$m_name = $sanitizer->text($input->post->name);
$m_from = $sanitizer->email($input->post->email);
$m_message = $sanitizer->text($input->post->message);

if($m_name == false) return '';

if($m_name && $m_from  && $m_message) {
    $html = "<html><body>
                  <h1>$l_success</h1>
                  <h3>$l_name: $m_name</h3>
                  <h3>$l_email: $m_from</h3>
                  <p><b>$l_message:</b> $m_message</p>
             </body></html>";

    $m = wireMail();
    // separate method call usage
    $m->to($mail); // specify CSV string or array for multiple addresses
    $m->from($m_from);
    $m->subject($m_subj);
    $m->bodyHTML("$html");
    $m->send();

// If Enable Save Messages 
if($save_message == true) {
// save to log that can be viewed via the pw backend
  $p = new Page();
  $p->template = "$c_item";
  // $p->parent = 1017;
  $p->parent = pages("/$c_parent/");
  $p->title = $m_from . ' - ' . date("Y.m.d | H:i");
  $p->body = $html;
  $p->addStatus(Page::statusHidden);
  $p->save();
}

$session->Message ="<blockquote>
<h4 class='success'>$l_success</h4>
<h5>$l_name: $m_name</h5>
<h5>$l_email:  $m_from</h5>
<p>$l_message: $m_message</p></blockquote>";
 //finally redirect user to contact-page
 session()->redirect('./');

} else {

    echo '<h1>' . $ts['f_fill'] . '</h1>';
}
// IF CSRF TOKEN NOT FOUND
} else {
    $session->Message = '<h3>' . $s_wrong . "</h3>";
    session()->redirect('./http404');
}

else :

if ($session->Message) {

    echo $session->Message;
    echo "<a href='./' class='button'>$show_form</a>";

} else {

$tokenName = $this->session->CSRF->getTokenName();
$tokenValue = $this->session->CSRF->getTokenValue(); ?>

<h3><?=$c_u?></h3>

<form id='contact-form' class="c-form" action="./" method='post'>

<input type="hidden" id="_post_token" name="<?=$tokenName?>" value="<?=$tokenValue?>">

		<!-- Create fields for the honeypot -->
    <input name="firstname" type="text" id="firstname" class="hide-robot">
		<!-- honeypot fields end -->

    <div class="name">
      <label class="label-name"><?=icon('user')?></label>
      <input name='name' placeholder="<?=$l_name?>" autocomplete="off" type="text" required>
    </div>

    <div class="enmail">
      <label class="label-email"><?=icon('mail')?></label>
      <input name='email' placeholder="<?=$l_email?>" type="email" required>
    </div>

    <div class="message">
      <label class="label-message"><?=icon('message-circle');?></label>
      <textarea class='' name='message' placeholder="<?=$l_message?>" rows="7"  required></textarea>
    </div>

    <input name='submit' value='<?=$submit?>' type="submit">
    <button type="reset"><?=$reset?></button>

</form>

<?php 
echo icon('phone',
[
'txt' => $sanitizer->text($c_phone) . '<br>',  
'url' =>  "tel:{$sanitizer->text($c_phone)}",
'width' => 30,
'height' => 30,
'color' => '#9b4dca',
'stroke' => 1
]);

echo icon('mail',
[
'txt' => $sanitizer->email($c_mail),  
'url' =>  "mailto:{$sanitizer->email($c_mail)}",
'width' => 30,
'height' => 30,
'color' => '#9b4dca',
'stroke' => 1
]);

 } 
  endif;
    // Remove Session Message
    $session->remove('Message');