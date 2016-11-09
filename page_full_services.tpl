<div class="container ">
<div class="main-content services__content">
    <div class="content pull-left" style="margin-bottom:0;">
        <div class="page__full_article-wrapper">
            <article class="page__full_article">
                <header><h2>{$page.title}</h2></header>
                <div class="page__full_article-text">
                    {$page.full_text}
                </div>
            </article>
        </div>
    </div>
    <aside class="sidebar pull-right">
         <div class="form-wrap">
        <header class="form_header">
        <div class="form__header_img-wrap">
          <img src="{$THEME}images/services/personIconHover1.png" />
        </div>
        {if $page.id == 233}
          {$form_title = 'Заказать монтаж'}
        {/if}
        {if $page.id == 234}
          {$form_title = 'Заказать обслуживание'}
        {/if}
        {if $page.id == 235}
          {$form_title = 'Заказать комплектацию'}
        {/if}
        {if $page.id == 236}
          {$form_title = 'Заказать проектирование'}
        {/if}


        <div class="popup__header_title">
          <h3 class="popup__header_title-text">{echo $form_title}</h3>
        </div>
      </header>
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
                         <!-- User Email field -->
                        {view('includes/forms/input-base.tpl', [
                          'placeholder' => tlang('E-mail'),
                          'type' => 'email',
                          'name' => 'email',
                          'value' => get_value('email'),
                          'required' => true
                           ])}
                      </div>
                {else:}
                  <div class="typo">Спасибо, наши менеджеры свяжуться с Вами</div>
                {/if}
      <!-- /.modal__content -->
          <div class="feedback__button">
            <div class="submit__btn_accent">
            {if !$success}
              <input class="feedback-submit" type="submit" value="Заказать">
                {/if}
            </div>
          </div>
          <input type="hidden" name="theme" value="7">
      {form_csrf()}
    </form>
    </div>

    </aside>
</div><!-- /.main-content -->
</div>
{widget('projects')}
{view ('includes/mainpage/sec-advatnages.tpl')}
{widget('brands_top')}
{view('includes/mainpage/sec-map.tpl')}