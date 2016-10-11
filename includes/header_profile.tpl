      {if !$CI->dx_auth->is_logged_in()}
        <!-- User auto menu. Visible when user is not authorized -->
           <a class="user__login" href="{site_url('auth')}" data-modal="login_popup" rel="nofollow">
              <div class="user__login_content">
                  <div class="user__login_title">
                      <img src="{$THEME}images/logos/wt_prof.png" alt="WT-PROF"></div>
                    <div class="user__login_link">
                    <span>Для партнеров</span>
                  </div>
              </div>
            </a>
      {else:}
      <div class="user__login">
        <!-- User profile menu. Visible when user is logged in -->
          <a class="user__login_link" href="{shop_url('profile')}" rel="nofollow">{tlang('Your Account')}</a>
			<br/>
          <a class="user__login_link" href="{site_url('auth/logout')}" rel="nofollow">{tlang('Sign out')}</a>
        </div>

      {/if}
