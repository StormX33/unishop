<div class="modal-wrapper">
	<div class="remodal remodal-is-initialized remodal-is-opened">
	<!-- Modal Header -->
		<header class="popup_header">
			<button class="popup-window-close" data-modal-close></button>
			<div class="popup__header_img-wrap"><img src="{$THEME}images/icons/popup/for_popup1.png" /></div>
			<div class="popup__header_title">
				<h3 class="popup__header_title-text">{tlang('Request a Call back')}</h3>
			</div>
		</header>
		<div class="form__popup_content">  
			<form action="{site_url('callbacks')}" method="post" data-form-ajax="callback_modal" class="feedback_form popup__feedback_form"> 
				{if !$success}
					<div class="form__input_wrap">
                      <!-- User Name field -->
                      {view('includes/forms/input-base.tpl', [
                        'label' => tlang('Name'),
                        'type' => 'text',
                        'name' => 'Name',
                        'value' => get_value('Name'),
                        'required' => true
                      ])}
                      
                      <!-- User Phone field -->
                      {view('includes/forms/input-base.tpl', [
                        'label' => tlang('Phone number'),
                        'type' => 'text',
                        'name' => 'Phone',
                        'value' => get_value('Phone'),
                        'required' => true
                      ])}
                  	</div>
              {else:}
                <div class="typo">{$success}</div>
              {/if}
    <!-- /.modal__content -->
				<div class="feedback__button">
					{if !$success}
						<input class="submit__btn_accent feedback-submit" type="submit" value="{tlang('Call back')}">
					{else:}
                    	<button class="submit__btn_accent feedback-submit" type="reset" data-modal-close>{tlang('Close')}</button>
        			{/if}
                </div>
    <input type="hidden" name="template" value="callbacks_modal">
    {form_csrf()}
  </form>
</div><!-- /.modal -->