<div class="modal-wrapper">
	<div class="remodal remodal-is-initialized remodal-is-opened">
    	<header class="popup_header">
        	<button class="popup-window-close" data-modal-close></button>
            <div class="popup__header_img-wrap">
            	<img src="{$THEME}images/icons/popup/for_popup1.png" />
            </div>
            <div class="popup__header_title">
            	<h3 class="popup__header_title-text">
                	{tlang('Feedback')}
                </h3>
            </div>
        </header>
        <div class="form__popup_content">  
        	<form action="{site_url('feedback')}" method="post" data-form-ajax="feedback_modal" class="feedback_form popup__feedback_form">
            	{if $message_sent == 1}
                	<div class="typo">{tlang('Your message has been sent')}</div>
                {else:}
                	<div class="form__input_wrap">
                    	<!-- User Name field -->
                    	{view('includes/forms/input-base.tpl', [
                          'placeholder' => tlang('Name'),
                          'type' => 'text',
                          'name' => 'name',
                          'value' => get_value('name'),
                          'required' => true
                        ])}
                        <!-- User E-mail field -->
                        {view('includes/forms/input-base.tpl', [
                          'placeholder' => tlang('E-mail'),
                          'type' => 'email',
                          'name' => 'email',
                          'value' => get_value('email'),
                          'required' => true
                        ])}
                        <!-- Message -->
                        {view('includes/forms/textarea-base.tpl', [
                          'placeholder' => tlang('Message'),
                          'name' => 'message',
                          'value' => get_value('message'),
                          'rows' => 6,
                          'required' => true
                        ])}
                        <!-- Captcha field -->
                        {if $cap_image}
                          {view('includes/forms/input-captcha.tpl', [
                            'type' => 'text',
                            'name' => 'captcha',
                            'value' => get_value('captcha'),
                            'required' => true,
                            'placeholder' => tlang('Security code')
                          ])}
                         {/if}
                    </div>
                {/if}
                <div class="feedback__button">
                	<div class="submit__btn_accent">
                    	{if $message_sent != 1}
                        	<input class="feedback-submit" type="submit" value="{tlang('Send')}">
                        {else:}
                        	<button class="feedback-submit" type="reset" data-modal-close>{tlang('Close')}</button>
                        {/if}
                    </div>
                </div>
                <input type="hidden" name="template" value="feedback_modal">
    			{form_csrf()}
            </form>
        </div>
    </div>
</div>
