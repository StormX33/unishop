<article class="content-wrapper">
  <div class="container">
		<div class="main-title">{$title}</div>
    <div class="main-content">

      <!-- Left BEGIN -->
      <div class="sidebar">

        <!-- Sub categories -->
        <div class="hidden-xs">
          {view('shop/includes/category/category_subnav.tpl')}
        </div>

        <!-- Filter toggle button on mobile devices -->
        <div class="content__sidebar-item visible-xs">
          <button class="btn btn-default btn-block" data-filter-toggle--btn>
            <span data-filter-toggle--btn-text>{tlang('Show filter')} <i class="btn-default__ico btn-default__ico--down"><svg class="svg-icon"><use xlink:href="#svg-icon__arrow-down"></use></svg></i></span>
            <span class="hidden" data-filter-toggle--btn-text>{tlang('Hide filter')} <i class="btn-default__ico btn-default__ico--top"><svg class="svg-icon"><use xlink:href="#svg-icon__arrow-top"></use></svg></i></span>
          </button>
        </div>

        <!-- Filter -->
        <div class="filter" data-filter-toggle--filter>
          {module('smart_filter')->init();}
        </div>
      </div>
      <!-- END Left -->

      <!-- Center BEGIN -->
      <div class="content">

        <!-- Horisontal banner -->
        {if $loc_banner = getBanner('catalog_horisontal_banner', 'object')}
          <div class="catalog__banner">
          <!-- не сделано -->
            {view('xbanners/banners/banner_simple.tpl', ['parent_banner' => $loc_banner])}
          </div>
        {/if}

        <!-- Products order and view change -->
        {view('shop/includes/category/category_toolbar.tpl', [
          'parent_default_order' => $category->getOrderMethod()
        ])}

        <!-- Filter selected results -->
        {view('smart_filter/includes/filter_results.tpl')}

        <!-- Product list -->
        <div class="products">
          {view('shop/includes/category/category_products.tpl')}
        </div>

        <!-- Category description -->
        {if trim($category->getDescription()) != "" and $page_number < 2}
          <div class="content__row">
            <div class="typo">{echo trim($category->getDescription())}</div>
          </div>
        {/if}

      </div><!-- /.col -->
      <!-- END Center -->

    </div>
  </div><!-- /.content__container -->
  {view('shop/includes/category/category_form.tpl')}
</article><!-- /.content -->