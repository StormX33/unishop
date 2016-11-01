<form class="check__wrap" action="{site_url('shop/order/make_order')}" method="post" data-cart-checkout-form>
<div class="check__content">
<div class="row">
	{$loc_validation_errors = $CI->session->flashdata('validation_errors')}
	{if $loc_validation_errors}
		<div class="form__messages">
			<div class="message message--error">{$loc_validation_errors}</div>
		</div>
	{/if}
    <div class="col-sm-6">
        <div class="contacts__form_widget">
            <div class="check__content_title">
                <h3 class="check__title_text">{tlang('Contact details')}</h3>
                {if !$CI->dx_auth->is_logged_in()}
                <a href="{site_url('auth')}" class="contacts__title_link" data-modal="login_popup" rel="nofollow">
                    {tlang('Am a member WT-Prof')}
                </a>
                {/if}
            </div>
              <!-- Name field -->
              {view('includes/forms/input-base.tpl', [
              'placeholder' => tlang('Name'),
              'type' => 'text',
              'name' => 'userInfo[fullName]',
              'value' => get_value('userInfo[fullName]') ? : $profile['name'],
              'required' => $isRequired['userInfo[fullName]'],
              'modifier' => 'form__field--hor form__field--hor-lg'
              ])}
    
              <!-- Email field -->
              {view('includes/forms/input-base.tpl', [
              'placeholder' => tlang('E-mail'),
              'type' => 'email',
              'name' => 'userInfo[email]',
              'value' => get_value('userInfo[email]') ? : $profile['email'],
              'required' => $isRequired['userInfo[email]'],
              'modifier' => 'form__field--hor form__field--hor-lg'
              ])}
    
              <!-- Phone field -->
              {view('includes/forms/input-base.tpl', [
              'placeholder' => tlang('Phone number'),
              'type' => 'text',
              'name' => 'userInfo[phone]',
              'value' => get_value('userInfo[phone]') ? : $profile['phone'],
              'required' => $isRequired['userInfo[phone]'],
              'modifier' => 'form__field--hor form__field--hor-lg'
              ])}
    
              <!-- Shipping address field -->
              {view('includes/forms/input-base.tpl', [
              'placeholder' => tlang('Shipping address'),
              'type' => 'text',
              'name' => 'userInfo[deliverTo]',
              'value' => get_value('userInfo[deliverTo]') ? : $profile['address'],
              'required' => $isRequired['userInfo[deliverTo]'],
              'modifier' => 'form__field--hor form__field--hor-lg'
              ])}
      
                <!-- Additional fields output. Could be in several types -->
              {foreach ShopCore::app()->CustomFieldsHelper->getCustomFielsdAsArray('order') as $field}
            
                <!-- Text field type. field_type_id == 0 -->
                {if $field['field_type_id'] == 0}
                  {view('includes/forms/input-base.tpl', [
                  'placeholder' => $field['field_label'],
                  'type' => 'text',
                  'name' => 'custom_field['.$field['id'].']',
                'value' => get_value('custom_field['.$field["id"].']'),
                'required' => $field['is_required'],
                'desc' => $field['field_description'],
                'modifier' => 'form__field--hor form__field--hor-lg'
                ])}
                  <!-- File input field type. field_type_id == 3 -->
                {elseif $field['field_type_id'] == 3}
                  <!-- Textarea field type. field_type_id == 1 -->
                {else:}
                  {view('includes/forms/textarea-base.tpl', [
                  'placeholder' => $field['field_label'],
                  'name' => 'custom_field['.$field['id'].']',
                'value' => get_value('custom_field['.$field["id"].']'),
                'required' => $field['is_required'],
                'desc' => $field['field_description'],
                'rows' => 5,
                'modifier' => 'form__field--hor form__field--hor-lg'
                ])}
                {/if}
            
              {/foreach}
    
              <!-- Comments about order -->
              {view('includes/forms/textarea-base.tpl', [
              'placeholder' => tlang('Comments about your order'),
              'name' => 'userInfo[commentText]',
              'value' => get_value('userInfo[commentText]'),
              'rows' => 5,
              'modifier' => 'form__field--hor form__field--hor-lg'
              ])}
		</div>
	</div>
	<div class="col-sm-6">
          <!-- Delivery and payment methods -->
          {if count($deliveryMethods) > 0}
          <div class="delivery__check_content">
            <div class="check__content_title">
              <h3 class="check__title_text">{tlang('Shipping & payment')}</h3>
            </div>
              {view('shop/includes/cart/cart_delivery_radio.tpl')}
          </div>
          {/if}
	</div>
</div>  
</div>    <div class="feedback__button">
            <div class="products__buy-btn">
              <button class="feedback-submit" type="submit" value="{tlang('Confirm your order')}" data-cart-checkout-form-button>{tlang('Confirm your order')}</button>
            </div>
          </div>

      <div class="hidden" data-ajax-inject="cart-coupon">
        {if $gift_key}
          <input type="hidden" name="gift" value="{echo $gift_key}">
          <input type="hidden" name="gift_ord" value="1">
        {/if}
      </div>
    
      {form_csrf()}

</form>