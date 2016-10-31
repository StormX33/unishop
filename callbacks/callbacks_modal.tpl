<div class="modal-wrapper">
{$subj = $_GET['subj']}
                {if $subj == 2}
                {$headertext = 'Получить консультацию'}
                {/if}
                {if $subj == 3}
                {$headertext = 'Заказать бесплатный замер'}
                {/if}
                {if $subj == 4}
                {$headertext = 'Узнать свою скидку'}
                {/if}
                {if $subj == 5}
                {$headertext = 'Расчет объекта'}
                {$imgname = 'for_calc'}
                {$buttontext = 'Заказать просчет'}
                {/if}
                {if $subj == 6}
                {$headertext = 'Начать сотрудничество'}
                {$imgname = 'for_popup2'}
                {$buttontext = 'Оставить заявку'}
                {/if}

	<div class="remodal remodal-is-initialized remodal-is-opened">
	<!-- Modal Header -->
		<header class="popup_header">
			<button class="popup-window-close" data-modal-close></button>
            
			<div class="popup__header_img-wrap"><img src="{$THEME}images/icons/popup/{echo $imgname ? $imgname : 'for_popup1'}.png" /></div>
			<div class="popup__header_title">
				<h3 class="popup__header_title-text">
                	{echo $headertext ? $headertext : tlang('Request a Call back')}
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
                        'type' => 'tel',
                        'name' => 'Phone',
                        'value' => get_value('Phone'),
                        'required' => true
                      ])}
                      {if $subj == 5 || $subj == 6} 
						{view('includes/forms/input-base.tpl', [
                          'placeholder' => tlang('E-mail'),
                          'type' => 'email',
                          'name' => 'Email',
                          'value' => get_value('Email'),
                          'required' => true
                           ])}
                      {/if}
                  	</div>
              {else:}
                <div class="typo">{$success}</div>
              {/if}
    <!-- /.modal__content -->
				<div class="feedback__button">
					{if !$success}
						<input class="submit__btn_accent feedback-submit" type="submit" value="{echo $buttontext ? $buttontext : tlang('Call back')}">
					{else:}
                    	<button class="submit__btn_accent feedback-submit" type="reset" data-modal-close>{tlang('Close')}</button>
        			{/if}
                </div>
    <input type="hidden" name="template" value="callbacks_modal">
    <input type="hidden" name="theme" value="{$_GET['subj']}">
    {form_csrf()}
  </form>
</div><!-- /.modal -->