{$state = in_array($model->getId(), $CI->session->userdata('shopForCompare')) }

<div data-compare-scope="add_to">

  <!-- Button link, used in catalog page -->
  {if $type == 'button'}

    <!-- Item isn't in compare list -->
    <a class="btn-white {echo $state?'hidden':''}" href="{shop_url('compare_api/add/'.$model->getId())}"
       data-compare-add rel="nofollow">
      <i class="btn-white__ico btn-white__ico--compare">
        <svg class="svg-icon">
          <use xlink:href="#svg-icon__compare"></use>
        </svg>
      </i>
    </a>
    <!-- Item already is in compare list -->
    <a class="btn-white btn-white--active {echo $state?'':'hidden'}" href="{shop_url('compare')}" data-compare-open
       rel="nofollow">
      <i class="btn-white__ico btn-white__ico--compare">
        <svg class="svg-icon">
          <use xlink:href="#svg-icon__compare"></use>
        </svg>
      </i>
    </a>
    <!-- Text link, used in product page -->
  {else:}
    <div class="product-actions__ico product-actions__ico--compare">
      <svg class="svg-icon">
        <use xlink:href="#svg-icon__compare"></use>
      </svg>
    </div>
    <!-- Item isn't in compare list -->
    <a class="product-actions__link {echo $state?'hidden':''}" href="{shop_url('compare_api/add/'.$model->getId())}"
       data-compare-add data-loader="{tlang('Loading...')}" rel="nofollow">
      {tlang('Add to compare')}
    </a>
    <!-- Item already is in compare list -->
    <a class="product-actions__link product-actions__link--open {echo $state?'':'hidden'}" href="{shop_url('compare')}"
       data-compare-open rel="nofollow">
      {tlang('Open in compare list')}
    </a>
  {/if}
</div>