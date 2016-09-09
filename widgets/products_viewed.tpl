{if count($products) > 0}
	<div class="recent__products">
		<div class="related__products_header">
        	<h3 class="related__products_title">{getWidgetTitle('products_viewed')}</h3>
		</div>
        <div class="recent__products_content slick__arrows-center">
        	<ul class="products__list products__list_grid recent__products_list">
				{foreach $products as $product}
					<li class="products__item">
          				{view('shop/includes/product/product_cut.tpl', ['model' => $product])}
                    </li>
				{/foreach}
			</ul>
			<div class="paginations">
				<ul class="pagination__list">
					<li class="pagination__item">
						<button class="pagination__button button_prev recent__products_prev"></button>
					</li>
					<li class="pagination__item">
						<button class="pagination__button button_next recent__products_next"> </button>
					</li>
				</ul>
			</div>
		</div>
	</div>
{/if}