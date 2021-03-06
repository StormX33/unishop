<div class="container">
<div class="main-content services__content">
    <div class="content pull-left">
        <div class="page__full_article-wrapper">
            <article class="page__full_article">
                <header><h2>{$page.title}</h2></header>
                <div class="page__full_article-text">
                    {$page.full_text}
                </div>
                <!-- Comments -->
                {if $page.comments_status == 1}
                    <div class="content__row">
                        <section class="frame-content">
                            <div class="frame-content__header">
                                <h2 class="frame-content__title">{tlang('Comments')}</h2>
                            </div>
                            <div class="frame-content__inner" data-comments>
                                {tpl_load_comments()}
                            </div>
                        </section>
                    </div>
                {/if}
            </article>
        </div>
    </div>
        <aside class="sidebar pull-right">
      <div class="form-wrap">
        <header class="form_header">
        <div class="form__header_img-wrap">
          <img src="{$THEME}images/services/personIconHover1.png" />
        </div>
        <div class="popup__header_title">
          <h3 class="popup__header_title-text">Расчет объекта</h3>
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
                          'type' => 'text',
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
                  <div class="typo">{$success}</div>
                {/if}
      <!-- /.modal__content -->
          <div class="feedback__button">
            <div class="submit__btn_accent">
            {if !$success}
              <input class="feedback-submit" type="submit" value="Хочу расчет">
                {/if}
            </div>
          </div>
      {form_csrf()}
    </form>
    </div>
    </aside>
</div><!-- /.main-content -->
</div>