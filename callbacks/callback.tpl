<div class="feedback">
    <div class="feedback__title">
        <h4 class="feedback__title_text">{echo $titletext ? $titletext : 'Получите бесплатную косультацию и выезд на ваш объект'}</h4>
        <p class="feedback__text">Наш менеджер свяжется с вами в ближайшее время и уточнит детали</p>
    </div>
    <form class="form" action="{site_url('callbacks')}" method="post" id="feedback__form" class="feedback__form">
        {if $success}
            <div class="form__messages">
                <div class="message message--success">{$success}</div>
            </div>
        {/if}
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
                       <input class="feedback-submit" type="submit" value="Получить консультацию">
                   </div>
              </div>
        <input type="hidden" name="subj" value="2"/>
        {form_csrf()}
      </form>
</div><!-- /.content__container -->
