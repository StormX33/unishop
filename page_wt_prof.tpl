<div class="container">
    <div class="main-content">
    	{if !$CI->dx_auth->is_logged_in()}
            <aside class="sidebar pull-right">
            	<div class="form-wrap">
                	<header class="form_header">
                    	<div class="popup__header_title">
                        	<h3 class="popup__header_title-text">Вход</h3>
                   	 	</div>
                	</header>
                	<form action="{site_url('auth')}" method="post" class="feedback_form popup__feedback_form">
                        <!-- Messages -->
                        {if $info_message}
                            <div class="form__messages">
                                <div class="message message--error">{$info_message}</div>
                            </div>
                        {/if}
                        <div class="form__input_wrap">
                            <!-- User Email field -->
                            {view('includes/forms/input-base.tpl', [
                                'placeholder' => 'Ваш ID',
                                'type' => 'text	',
                                'name' => 'email',
                                'value' => get_value('email'),
                                'required' => true
                            ])}
                        <!-- User Password field -->
                        {view('includes/forms/input-base.tpl', [
                            'placeholder' => tlang('Password'),
                            'type' => 'password',
                            'name' => 'password',
                            'value' => '',
                            'required' => true
                        ])}
                        <!-- Captcha field -->
                        {if $cap_image}
                            {view('includes/forms/input-captcha.tpl', [
                                'placeholder' => tlang('Security code'),
                                'type' => 'text',
                                'name' => 'captcha',
                                'value' => get_value('captcha'),
                                'required' => true,
                                'desc' => tlang('Type the characters you see in this image.')
                            ])}
                        {/if}
                        </div>
                        <!-- Submit button -->
                        <div class="feedback__button">
                            <div class="submit__btn_accent">
                                <input class="feedback-submit" type="submit" value="{tlang('Log in')}">
                            </div>
                        </div>
                        {form_csrf()}
                	</form>
                </div>
        	</aside>
        {/if}
        <div class="content pull-left"{if $CI->dx_auth->is_logged_in()} style="width:100%"{/if}>
            <div class="page__full_article-wrapper">
                <article class="page__full_article">
                    <header><h2>{$page.title}</h2></header>
                    <div class="page__full_article-text">
                        {$page.full_text}
                    </div>
                </article>
            </div>
                    <div style="text-align:center; clear:both;">
            {if !$CI->dx_auth->is_logged_in()}
                <a href="{site_url('callbacks')}?subj=6" class="submit__btn_accent" data-modal="callbacks_modal" rel="nofollow">
	                <span class="btn__accent_span">Начать сотрудничество</span>
                </a>
            {else:}
                <a href="{shop_url('profile')}" class="submit__btn_accent">
                	<span class="btn__accent_span">WT-PROF</span>
                </a>
            {/if}
        </div>

        </div>
    </div><!-- /.main-content -->
</div>