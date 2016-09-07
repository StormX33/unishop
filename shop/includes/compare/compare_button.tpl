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
    <!-- Item isn't in compare list -->
    <a class="addcompare detail__tools_link {echo $state?'hidden':''}" href="{shop_url('compare_api/add/'.$model->getId())}" data-compare-add data-loader="{tlang('Loading...')}" rel="nofollow">
      <span class="detail__tools_span">{tlang('Add to compare')}</span>
    </a>
    <!-- Item already is in compare list -->
    <a class="addcompare detail__tools_link {echo $state?'':'hidden'}" href="{shop_url('compare')}" data-compare-open rel="nofollow">
      <span class="detail__tools_span">{tlang('Open in compare list')}</span>
    </a>
  {/if}
</div>