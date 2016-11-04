<div class="main-title" 22>{echo $model->getName()}</div>
<div class="main-content">
	<div class="sidebar">
		<!-- Sub categories -->
		<div class="category_sidebar_wrap">
        	<div id="category__title" class="sidebar__title">
				<button class="category_sidebar_btn"></button>
				<div class="filter__title_text">{tlang("Categories")}</div>
				<button class="category__toggle_arrow visible-xs"></button>
			</div>
       		<!-- Filter selected results -->
       		{if tpl_encode($CI->input->get('category'))}
       			<div class="content__row content__row--sm">
           			{view('shop/includes/search_and_brand/active_filters.tpl', ['parent_url' => 'brand/'.$model->getUrl().'/?'.tpl_http_query_filter(['category'])])}
       			</div>
       		{/if}
			{view('shop/includes/search_and_brand/cat_filter.tpl', ["parent_url" => "brand/" . $model->getUrl() . "/__item__?".tpl_http_query_filter(['category'])])}
		</div>
	</div>
    <div class="content">
       	<!-- Horisontal banner -->
       	{if $loc_banner = getBanner('catalog_horisontal_banner', 'object')}
       		<div class="content__row content__row--sm">
           		{view('xbanners/banners/banner_simple.tpl', ['parent_banner' => $loc_banner])}
       		</div>
       	{/if}
        <!-- Products order and view change -->
       	{view('shop/includes/category/category_toolbar.tpl', ['parent_default_order' => false])}
       	<!-- Product list -->
       	<div class="products">
       		{view('shop/includes/category/category_products.tpl')}
       	</div>
	</div><!-- /.content -->
</div><!-- /.main-content -->
<!-- Brand description -->
{if trim($model->getDescription()) != "" and $page_number < 2}
	 <div class="description__page catalog__description_page">
		<div class="description__page_content">{echo $model->getDescription()}</div>
	</div>
{/if}
{view('shop/includes/category/category_form.tpl')}
