{widget('brands_top')}
{view ('shop/categories_home.tpl')}
{view ('includes/mainpage/sec-services.tpl')}
{view ('includes/mainpage/sec-orders.tpl')}
{view ('includes/mainpage/sec-advatnages.tpl')}
{widget('projects')}
<section class="articles">
	<div class="container">
		{widget('latest_news')}
		{widget('latest_sales')}
	</div>
</section>
{view ('includes/mainpage/sec-map.tpl')}	
{if widget('start_page_seo_text') && $CI->core->core_data['data_type'] == 'main'}
	<article class="description__page">
		<div class="description__page_wrapper">
			<div class="container">
				<div class="typo typo--seo">{widget('start_page_seo_text')}</div>
			</div>
		</div>
	</article>
{/if}