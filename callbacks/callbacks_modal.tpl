<div class="modal-wrapper">
{$subj = $_GET['subj']}
	<div class="remodal remodal-is-initialized remodal-is-opened">
	<!-- Modal Header -->
		<header class="popup_header">
			<button class="popup-window-close" data-modal-close></button>
            
			<div class="popup__header_img-wrap"><img src="{$THEME}images/icons/popup/{echo $subj == 5 ? 'for_calc' : 'for_popup1'}.png" /></div>
			<div class="popup__header_title">
				<h3 class="popup__header_title-text">
                {if $subj == 1}{tlang('Request a Call back')}{/if}
                {if $subj == 2}Получить консультацию{/if}
                {if $subj == 3}Заказать бесплатный замер{/if}
                {if $subj == 4}Узнать свою скидку{/if}
                {if $subj == 5}Расчет объекта{/if}
                </h3>
			</div>
		</header>
		<div class="form__popup_content">  
			<form action="{site_url('callbacks')}" method="post" data-form-ajax="callback_modal" class="feedback_form popup__feedback_form"> 
				{if !$success}
					<div class="form__input_wrap">
                      <!-- User Name field -->
                      {view('includes/forms/input-base.tpl', [
                        'placeholder' => tlang('Name'),
                        'type' => 'text',
                        'name' => 'Name',
                        'value' => get_value('Name'),
                        'required' => true
                      ])}
                      
                      <!-- User Phone field -->
                      {view('includes/forms/input-base.tpl', [
                        'placeholder' => tlang('Phone number'),
                        'type' => 'text',
                        'name' => 'Phone',
                        'value' => get_value('Phone'),
                        'required' => true
                      ])}
                      {if $subj == 5} 
						{view('includes/forms/input-base.tpl', [
                          'placeholder' => tlang('E-mail'),
                          'type' => 'email',
                          'name' => 'email',
                          'value' => get_value('email'),
                          'required' => true
                           ])}
                      {/if}
                  	</div>
              {else:}
                <div class="typo">{$success}</div>
              {/if}
    <!-- /.modal__content -->
				<div class="feedback__button">
          <div class="submit__btn_accent">
  					{if !$success}
  						<input class="feedback-submit" type="submit" value="{echo $subj == 5 ? 'Заказать просчет' : tlang('Call back')}">
  					{else:}
                <button class="feedback-submit" type="reset" data-modal-close>{tlang('Close')}</button>
          			{/if}
          </div>
        </div>
    <input type="hidden" name="template" value="callbacks_modal">
    <input type="hidden" name="subj" value="{$_GET['subj']}">
    {form_csrf()}
  </form>
</div><!-- /.modal -->