<?php namespace ProcessWire;
// Mail To ( Your E-Mail )
$mailTo = isset($mailTo) ? $mailTo : '';
// Mail Subject
$mailSubject = isset($mailSubject) ? $mailSubject : '';
$saveMessage = isset($saveMessage) ? $saveMessage : '';
$contactPage = isset($contactPage) ? $contactPage : '';
$contactItem = isset($contactItem) ? $contactItem : '';
// Translate
$contactUs = page()->ts['contactUs'];
$labelName = page()->ts['labelName'];
$labelEmail = page()->ts['labelEmail'];
$labelMessage = page()->ts['labelMessage'];
$labelSuccess = page()->ts['labelSuccess'];
$labelAccept = page()->ts['labelAccept'];
$labelPrivacy = page()->ts['labelPrivacy'];
$somethingWrong = page()->ts['somethingWrong'];
$fillFields = page()->ts['fillFields'];
$submit = page()->ts['submit'];
$reset = page()->ts['reset'];
$showForm = page()->ts['showForm'];
// Privacy Page
$privacyPage = page()->opt['privacyPage']->url;

if($input->post->submit) :

if($input->firstname) {

    session()->Message = '<h3>' . $somethingWrong . "</h3>";
    session()->redirect('./http404');

}
if(session()->CSRF->hasValidToken()) {

$m_name = $sanitizer->text($input->post->name);
$m_from = $sanitizer->email($input->post->email);
$m_message = $sanitizer->text($input->post->message);

if($m_name == false) return '';

if($m_name && $m_from  && $m_message && input()->post->accept_message) {
    $html = "<html><body>
                  <h1>$labelSuccess</h1>
                  <h3>$labelName: $m_name</h3>
                  <h3>$labelEmail: $m_from</h3>
                  <p><b>$labelMessage:</b> $m_message</p>
             </body></html>";

    $m = wireMail();
    // separate method call usage
    $m->to($mailTo); // specify CSV string or array for multiple addresses
    $m->from($m_from);
    $m->subject($mailSubject);
    $m->body($html);
    $m->send();

// $bool = $mail->mailHTML($to, string $subject, $messageHTML, array $headers = []);

  // $mail->mailHTML($mailTo, $mailSubject,
  // [
  //   'bodyHTML' => $html,
  //   'from' => $m_from
  // ]);

// If Enable Save Messages
if( $saveMessage == true) {

// save to log that can be viewed via the pw backend
  $p = new Page();
  $p->template = $contactItem;
  // $p->parent = 1017;
  $p->parent = $contactPage;
  $p->title = $m_from . ' - ' . date("Y.m.d | H:i");
  $p->body = $html;
  $p->addStatus(Page::statusHidden);
  $p->save();

}
// Session Message
session()->Message ="<blockquote>
<h4 class='success'>$labelSuccess</h4>
<h5>$labelName: $m_name</h5>
<h5>$labelEmail:  $m_from</h5>
<p>$labelMessage: $m_message</p></blockquote>";
//finally redirect user
session()->redirect('./');
} else {
// Fill fields correctly  
    $session->Message = "<h3>$fillFields</h3>";
    session()->redirect('./');
}
// IF CSRF TOKEN NOT FOUND
} else {
    $session->Message = '<h3>' . $somethingWrong . "</h3>";
    session()->redirect('./http404');
}

else :

if ($session->Message) {

    echo $session->Message;
    echo "<a href='./' class='button'>$showForm</a>";

} else {

$tokenName = $this->session->CSRF->getTokenName();
$tokenValue = $this->session->CSRF->getTokenValue();
// Form Icons
$icontactUsser = icon('user');
$icontactMail = icon('mail');
$ic_message = icon('message-circle');

if(page() != page()->opt['contactPage']) {

// More Info
echo icon('navigation',
  [
    'txt' => " $contactUs",
    'width' => 40,
    'height' => 40,
    'color' => '#9b4dca',
    'stroke' => 1,
    'html_el' => 'h3',
    'url' => $contactPage->url,
  ]);

 }

echo "<form id='contact-form' class='c-form' action='./' method='post'>

<input type='hidden' id='_post_token' name='$tokenName' value='$tokenValue'>

		<!-- Create fields for the honeypot -->
    <input name='firstname' type='text' id='firstname' class='hide-robot'>
		<!-- honeypot fields end -->

      <label class='label-name'>$icontactUsser</label>
      <input name='name' placeholder='$labelName' autocomplete='off' type='text' required>
    
      <label class='label-email'>$icontactMail</label>
      <input name='email' placeholder='$labelEmail' type='email' required>
    
      <label class='label-message'>$ic_message</label>
      <textarea class='' name='message' placeholder='$labelMessage' rows='7'  required></textarea>

      <label class='label-check'>
      <input class='accept-message' name='accept_message' type='checkbox' placeholder='$labelMessage' required>
      <small>$labelAccept <a href='$privacyPage'>$labelPrivacy</a>.</small></label>

    <input name='submit' value='$submit' type='submit'>
    <button type='reset'>$reset</button>

</form>";

}
  endif;
    // Remove Session Message
    session()->remove('Message');