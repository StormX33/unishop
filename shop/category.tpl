<div class="main-title">{$title}</div>
<div class="main-content">
	<!-- Left BEGIN -->
	<div class="sidebar">
		<!-- Sub categories -->
		<div class="category_sidebar_wrap">
  			{view('shop/includes/category/category_subnav.tpl')}
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
		{view('shop/includes/category/category_toolbar.tpl', ['parent_default_order' => $category->getOrderMethod()])}

		<!-- Product list -->
		<div class="products">
  			{view('shop/includes/category/category_products.tpl')}
		</div>



	</div><!-- /.content -->
	<!-- END Center -->

</div>
	<!-- Category description -->
	{if trim($category->getDescription()) != "" and $page_number < 2}
		<div class="description__page catalog__description_page">
			<div class="description__page_content">{echo trim($category->getDescription())}</div>
		</div>
	{/if}
{view('shop/includes/category/category_form.tpl')}
