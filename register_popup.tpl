<div class="modal-wrapper">
	<div class="remodal remodal__login remodal-is-initialized remodal-is-opened">
    	<!-- Modal Header -->
		<header class="popup_header">
			<button class="popup-window-close" data-modal-close></button>
			<div class="popup__header_img-wrap"><img src="{$THEME}images/icons/popup/for_popup2.png" /></div>
			<div class="popup__header_title">
				<h3 class="popup__header_title-text">{tlang('Create Account')}</h3>
			</div>
		</header>
        <div class="form__popup_content">
        	  <form class="form" action="{site_url('auth/register')}" method="post">

                <!-- Error Messages -->
                {if validation_errors()}
                <div class="form__messages">
                    <div class="message message--error">
                            <ul class="message__list">
                                    {validation_errors('<li class="message__item">', '</li>')}
                            </ul>
                    </div>
                </div>
                {/if}

                <!-- Name field -->
                {view('includes/forms/input-base.tpl', [
                    'label' => tlang('Name'),
                    'type' => 'text',
                    'name' => 'username',
                    'value' => get_value('username'),
                    'required' => true
                ])}

                <!-- Email field -->
                {view('includes/forms/input-base.tpl', [
                    'label' => tlang('E-mail'),
                    'type' => 'email',
                    'name' => 'email',
                    'value' => get_value('email'),
                    'required' => true
                ])}

                <!-- Custom fields -->
                {foreach ShopCore::app()->CustomFieldsHelper->getCustomFielsdAsArray('user') as $field}

                    <!-- Text input field type. field_type_id == 0 -->
                    {if $field['field_type_id'] == 0}

                        {view('includes/forms/input-base.tpl', [
                            'label' => $field['field_label'],
                            'type' => 'text',
                            'name' => 'custom_field[' . $field['id'] . ']',
                            'value' => get_value($field['field_name']),
                            'required' => $field['is_required'],
                            'desc' => $field['field_description']
                        ])}
                    
                    <!-- File input field type. field_type_id == 3 -->
                    {elseif $field['field_type_id'] == 3}
                    <!-- Textarea field type. field_type_id == 1 -->
                    {else:}

                        {view('includes/forms/textarea-base.tpl', [
                            'label' => $field['field_label'],
                            'name' => 'custom_field[' . $field['id'] . ']',
                            'value' => get_value($field['field_name']),
                            'required' => $field['is_required'],
                            'desc' => $field['field_description'],
                            'rows' => 5
                        ])}

                    {/if}

                {/foreach}

                <!-- Password field -->
                {view('includes/forms/input-base.tpl', [
                    'label' => tlang('Password'),
                    'type' => 'password',
                    'name' => 'password',
                    'value' => '',
                    'required' => true
                ])}

                <!-- Confirm password field -->
                {view('includes/forms/input-base.tpl', [
                    'label' => tlang('Reenter password'),
                    'type' => 'password',
                    'name' => 'confirm_password',
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

                <!-- Submit button -->
                <div class="form__field">
                    <div class="form__label"></div>
                    <div class="form__inner">
                        <input class="btn btn-primary" type="submit" value="{tlang('Create Account')}">
                    </div>
                </div>

                <!-- Additional info -->
                <div class="form__field">
                    <div class="form__label"></div>
                    <div class="form__inner">
                        <div class="form__desc">{tlang('Already Have an Account?')}<br><a class="form__link" href="{site_url('auth')}" data-modal="login_popup" rel="nofollow">{tlang('Sign in')}</a> / <a class="form__link" href="{site_url('auth/forgot_password')}">{tlang('Forgot password?')}</a></div>
                    </div>
                </div>
			<input type="hidden" name="template" value="register_popup">
                {form_csrf()}
            </form>
        </div>
    </div>
</div>
