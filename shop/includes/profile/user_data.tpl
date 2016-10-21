<form class="contacts__form" action="{site_url('shop/profile')}" method="POST">
	{if flashdata('success')}
		<div class="form__messages">
			<div class="message message--success">
				{flashdata('success')}
			</div>
		</div>
	{/if}
	<!-- Name field -->
	<div class="contacts__wrap">
    	<label class="contacts__form_label" for="name">{tlang('Name')}:</label>
    	<input class="contacts__form-input" type="text" name="name" value="{get_value('name') ? : $profile->getName()}" required>
    </div>
	<!-- Phone field -->
    <div class="contacts__wrap">
	    <label class="contacts__form_label" for="phone">Телефон:</label>
    	<input class="contacts__form-input" type="tel" name="phone" value="{get_value('phone') ? : $profile->getPhone()}" required>
	</div>
	<!-- Email field -->
	<div class="contacts__wrap">
		<label for="email" class="contacts__form_label">{tlang('E-mail')}</label>
		<input type="email" name="email" placeholder="{echo $profile->getUserEmail()}" class="contacts__form-input contacts__form-email">
		<input type="hidden" name="email" value="{echo $profile->getUserEmail()}">
	</div>
    <!-- Shipping address field -->
	<div class="contacts__wrap">
	    <label class="contacts__form_label" for="city">{tlang('Shipping address')}:</label>
    	<input class="contacts__form-input" type="text" name="city" value="{get_value('address') ? : $profile->getAddress()}">
	</div>

<!-- Additional fields output. Could be in several types -->
{foreach ShopCore::app()->CustomFieldsHelper->getCustomFielsdAsArray('user', $profile->getId()) as $field}

<!-- Text input field type. field_type_id == 0 -->
{if $field['field_type_id'] == 0}
{view('includes/forms/input-base.tpl', [
'label' => $field['field_label'],
'type' => 'text',
'name' => 'custom_field['.$field['id'].']',
'value' => get_value('custom_field['.$field["id"].']')?:$field['field_data'],
'required' => $field['is_required'],
'desc' => $field['field_description']
])}
<!-- File input field type. field_type_id == 3 -->
{elseif $field['field_type_id'] == 3}
<!-- Textarea field type. field_type_id == 1 Do not output in cart page -->
{else:}
{view('includes/forms/textarea-base.tpl', [
'label' => $field['field_label'],
'name' => 'custom_field['.$field['id'].']',
'value' => get_value('custom_field['.$field["id"].']')?:$field['field_data'],
'required' => $field['is_required'],
'desc' => $field['field_description'],
'rows' => 5
])}      
{/if}

{/foreach}

<!-- Submit button -->
<div class="contacts__wrap">
<input class="submit__btn_accent feedback-submit" type="submit" value="Сохранить">
</div>

{form_csrf()}
</form>