{$login = $CI->dx_auth->is_logged_in() ? '' : '?wishlist='.$varId}

{if $type == 'button'}

  <!-- Button link, used in catalog page -->
  {if $class != 'btn inWL'}
    <a class="btn-white" href="{$href}{$login}" data-modal rel="nofollow">
      <i class="btn-white__ico btn-white__ico--wishlist">
        <svg class="svg-icon">
          <use xlink:href="#svg-icon__heart"></use>
        </svg>
      </i>
    </a>
  {else:}
    <a class="btn-white btn-white--active" href="{shop_url('profile')}#tab_wishlist" rel="nofollow">
      <i class="btn-white__ico btn-white__ico--wishlist">
        <svg class="svg-icon">
          <use xlink:href="#svg-icon__heart"></use>
        </svg>
      </i>
    </a>
  {/if}

{else:}
  <!-- Text link, used in product page -->
  {if $class != 'btn inWL'}
    <a class="addfavorite detail__tools_link" href="{$href}{$login}" data-modal rel="nofollow"><span class="detail__tools_span">{tlang('Add to Wishlist')}</span></a>
  {else:}
    <a class="addfavorite detail__tools_link" href="{shop_url('profile')}#tab_wishlist" rel="nofollow">
    	<span class="detail__tools_span">{tlang('Open in Wishlist')}</span>
    </a>
  {/if}

{/if}
