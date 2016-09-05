      {if !$CI->dx_auth->is_logged_in()}
        <!-- User auto menu. Visible when user is not authorized -->
           <a class="user__login" href="{site_url('auth')}" data-modal="login_popup" rel="nofollow">
             <div class="user__login_title"> <img src="{$THEME}images/logos/wt_prof.png" alt="WT-PROF"></div>
             <div class="user__login_link">
             <span>{tlang('Sign in')}</span>
             </div>
            </a>
      {else:}
        <!-- User profile menu. Visible when user is logged in -->
        <div class="overlay__item">
          <a class="overlay__link" href="{shop_url('profile')}" rel="nofollow">{tlang('Your Account')}</a>
        </div>
        <div class="overlay__item">
          <a class="overlay__link" href="{site_url('auth/change_password')}"
             rel="nofollow">{tlang('Change Password')}</a>
        </div>
        <div class="overlay__item">
          <a class="overlay__link" href="{site_url('auth/logout')}" rel="nofollow">{tlang('Sign out')}</a>
        </div>
      {/if}
