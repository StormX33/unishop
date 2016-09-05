<ul class="footer__list">
  {if !$CI->dx_auth->is_logged_in()}
    <li class="footer__item">
      <a class="footer__item_link" href="{site_url('auth')}" data-modal="login_popup" rel="nofollow">{tlang('Sign in')}</a>
    </li>
    <li class="footer__item">
      <a class="footer__item_link" href="{site_url('auth/register')}" rel="nofollow">{tlang('Create Account')}</a>
    </li>
  {else:}
    <li class="footer__item">
      <a class="footer__item_link" href="{shop_url('profile')}" rel="nofollow">{tlang('Your Account')}</a>
    </li>
    <li class="footer__item">
      <a class="footer__item_link" href="{site_url('auth/change_password')}" rel="nofollow">{tlang('Change Password')}</a>
    </li>
    <li class="footer__item">
      <a class="footer__item_link" href="{site_url('wishlist')}" rel="nofollow">{tlang('Wishlist')}</a>
    </li>
  {/if}
  <li class="footer__item">
    <a class="footer__item_link" href="{shop_url('compare')}" rel="nofollow">{tlang('Compare')}</a>
  </li>
  <li class="footer__item">
    <a class="footer__item_link" href="{site_url('callbacks')}" data-modal="callbacks_modal"
       rel="nofollow">{tlang('Callback')}</a>
  </li>
  {if $CI->dx_auth->is_logged_in()}
    <li class="footer__item">
      <a class="footer__item_link" href="{site_url('auth/logout')}" rel="nofollow">{tlang('Sign out')}</a>
    </li>
  {/if}
</ul>