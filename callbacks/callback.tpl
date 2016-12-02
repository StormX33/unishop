<div class="feedback">
    <div class="feedback__title">
        <h4 class="feedback__title_text">{echo $titletext ? $titletext : 'Получите бесплатную косультацию и выезд на ваш объект'}</h4>
        <p class="feedback__text">Наш менеджер свяжется с вами в ближайшее время и уточнит детали</p>
    </div>
    <form class="form" action="{site_url('callbacks')}" data-form-ajax="callback" method="post" id="feedback__form" class="feedback__form">
        {if $success}
            <div class="form__messages">
                <div class="message message--success">{$success}</div>
            </div>
        {else:}
        <div class="feedback__wrap">
        <!-- User Name field -->
        {view('includes/forms/input-base.tpl', [
        'placeholder' => tlang('Name'),
        'type' => 'text',
        'name' => 'Name',
        'value' => get_value('Name'),
        'required' => true
        ])}
        </div>
        {if isset($needMail)}
        <div class="feedback__wrap">
         {view('includes/forms/input-base.tpl', [
                        'placeholder' => tlang('E-mail'),
                        'type' => 'email',
                        'name' => 'Email',
                        'value' => get_value('Email'),
                        'required' => true
                        ])}
         </div>
         {/if}
        <div class="feedback__wrap">
        <!-- User Phone field -->
        {view('includes/forms/input-base.tpl', [
        'placeholder' =>'+38 (___) ___-__-__',
        'type' => 'tel',
        'name' => 'Phone',
        'value' => get_value('Phone'),
        'required' => true
        ])}
        </div>
        

        <!-- Submit button -->
        <div class="feedback__button">
                    <div class="submit__btn_accent">
                       <input class="feedback-submit" type="submit" value="{echo isset($butText)?$butText:'Получить консультацию'}">
                   </div>
              </div>
        <input type="hidden" name="subj" value="{echo isset($subj) ? $subj : '2'}"/>
        {form_csrf()}
        {/if}
      </form>
</div><!-- /.content__container -->
