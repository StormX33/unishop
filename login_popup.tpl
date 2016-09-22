<div class="modal-wrapper">
	<div class="remodal remodal__login remodal-is-initialized remodal-is-opened">
		<!-- Modal Header -->
		<header class="popup_header">
			<button class="popup-window-close" data-modal-close></button>
			<div class="popup__header_img-wrap"><img src="{$THEME}images/icons/popup/for_popup2.png" /></div>
			<div class="popup__header_title">
				<h3 class="popup__header_title-text">{tlang('Sign in')}</h3>
			</div>
		</header>
		<div class="form__popup_content">  
			<form action="{site_url('auth')}" method="post" data-profile-ajax="login_modal" class="popup__feedback_form">
				<!-- Error Message if user was not found -->
				{if $info_message}
					<div class="modal__content-cell">
						<div class="message message--error">{$info_message}</div>
					</div>
				{/if}
      
				<!-- Message if you adding item to wishlist and not authorised -->
				{if strip_tags(trim($_REQUEST['wishlist'])) and !$success}
					<div class="modal__content-cell">
						<div class="typo">{tlang('You must login to add items to your wishlist')}</div>
					</div>
				{/if}
      
				<!-- Login form -->
				{if !$success}
					<!-- User Email field -->
					{view('includes/forms/input-base.tpl', [
                        'label' => tlang('E-mail'),
                        'type' => 'email',
                        'name' => 'email',
                        'value' => get_value('email'),
                        'required' => true
                      ])}
					<!-- User Password field -->
                      {view('includes/forms/input-base.tpl', [
                        'label' => tlang('Password'),
                        'type' => 'password',
                        'name' => 'password',
                        'value' => '',
                        'required' => true
                      ])}
                    <!-- Captcha field -->
                      {if $cap_image}
                        {view('includes/forms/input-captcha.tpl', [
                          'label' => tlang('Security code'),
                          'type' => 'text',
                          'name' => 'captcha',
                          'value' => get_value('captcha'),
                          'required' => true,
                          'desc' => tlang('Type the characters you see in this image.')
                        ])}
                      {/if}
				{else:}
                	<div class="typo">
                      <h3>{tlang('Welcome!')}</h3>
                      <p>{tlang('You have successfully authenticated as ')} {echo $CI->dx_auth->get_username()}</p>
                    </div>
				{/if}
                  
                <div class="feedback__button">
					{if !$success}
          				<input class="submit__btn_accent feedback-submit" type="submit" value="{tlang('Log in')}">
          			{else:}
          				<button class="btn btn--va-m btn-primary" data-profile-button type="button">
            				<span>{tlang('Logining in...')}</span>
          				</button>
                	{/if}
         
          			{if !$success}
          				<a class="feedback__form_link" href="{site_url('auth/forgot_password')}">{tlang('Forgot password?')}</a>
					{/if}
                </div>
    			<input type="hidden" name="template" value="login_popup">
    			{if strip_tags(trim($_REQUEST['wishlist']))}
    				<input type="hidden" name="wishlist" value="{strip_tags(trim($_REQUEST['wishlist']))}" data-profile-wishlist="{strip_tags(trim($_REQUEST['wishlist']))}">
    			{/if}
    			{form_csrf()}
			</form>
		</div>
        {if !$success}
			<div class="popup_footer">
				<div class="popup_footer_content">
					<a class="feedback__form_link" href="{site_url('auth/register')}">Зарегестрируйтесь</a>
					<span class="feedback__form_span"> если вы новый покупатель магазина</span>
				</div>
			</div>
		{/if}
  	</div><!--./ remodal-->
</div><!-- ./modal-wrapper -->