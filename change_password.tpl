<div class="contacts__form_widget">
	<div class="check__content_title">
		<div class="cart__title">Смена пароля</div>
	</div>
	<form action="{site_url('auth/change_password')}" method="POST" class="contacts__form">
		{if $info_message}
			<div class="form__messages">
    			<p class="message message--error">{$info_message}</p>
			</div>
		{/if}

<!-- Name field -->
<div class="contacts__wrap">
{view('includes/forms/input-base.tpl', [
    'label_place' =>'outer',
    'label' => tlang('Current password'),
    'type' => 'password',
    'name' => 'old_password',
    'value' => "",
    'class' =>'contacts__form-input',
    'label_class' =>'contacts__form_label',
    'required' => true
])}
</div>

<!-- Name field -->
<div class="contacts__wrap">
{view('includes/forms/input-base.tpl', [
    'label' => tlang('New password'),
    'label_place' =>'outer',
    'type' => 'password',
    'name' => 'new_password',
    'value' => "",
    'class' =>'contacts__form-input',
    'label_class' =>'contacts__form_label',
    'required' => true
])}
</div>

<!-- Name field -->
<div class="contacts__wrap">
{view('includes/forms/input-base.tpl', [
    'label' => tlang('Reenter new password'),
    'label_place' =>'outer',
    'type' => 'password',
    'name' => 'confirm_new_password',
    'value' => "",
    'class' =>'contacts__form-input',
    'label_class' =>'contacts__form_label',
    'required' => true
])}
</div>

<!-- Submit button -->
<div class="contacts__wrap">
    <input class="submit__btn_accent feedback-submit" type="submit" value="{tlang('Save')}">
</div>

{form_csrf()}
</form>
</div>
