<div class="content-wrapper page__search">
  <div class="container">
    <div class="main-content">

      <!-- Left side, Categories filter -->
      <div class="sidebar pull-left">
      <div class="main__sidebar_item">
      	<div class="main__sidebar_title sidebar__title">
        	{tlang('Categories')}
        </div>
        {view('shop/includes/search_and_brand/cat_filter.tpl', [
        'parent_url' => "search?category=__item__&".tpl_http_query_filter(['category'])
        ])}
        </div>
      </div>

      <!-- Center -->
      <div class="content">

        <!-- Query title -->
        <div class="main-title">
            {tlang('Result for')} "{echo tpl_encode($CI->input->get('text'))}" 
            <span class="main-title-span">{tlang('Found')} {$totalProducts} {echo SStringHelper::Pluralize($totalProducts, array(tlang('pluralize item 1'), tlang('pluralize item 2'), tlang('pluralize item 3')))} 
            {if tpl_encode($CI->input->get('category'))}
              {tlang('in')}
              <q>{tpl_category_active_filter(tpl_encode($CI->input->get('category')), $categories)}</q>
              {/if}</span>
        </div>

        <!-- Horisontal banner -->
        {if $loc_banner = getBanner('catalog_horisontal_banner', 'object')}
          <div class="content__row content__row--sm">
            {view('xbanners/banners/banner_simple.tpl', [
              'parent_banner' => $loc_banner
            ])}
          </div>
        {/if}

        <!-- Products order and view change -->
        {view('shop/includes/category/category_toolbar.tpl', [
          'parent_default_order' => false
        ])}

        <!-- Filter selected results -->
        {if tpl_encode($CI->input->get('category'))}
          <div class="content__row content__row--sm">
            {view('shop/includes/search_and_brand/active_filters.tpl', [
            'parent_url' => "search?".tpl_http_query_filter(['category'])
            ])}
          </div>
        {/if}

        <!-- Product list -->
        <div class="content__row">
          {view('shop/includes/category/category_products.tpl')}
        </div>


      </div><!-- /.col -->
      <!-- END Center -->

    </div><!-- /.row -->
  </div><!-- /.content__container -->
  {view('shop/includes/category/category_form.tpl')}
</div><!-- /.content -->