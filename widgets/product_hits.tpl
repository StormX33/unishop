{if count($products) > 0} 
	<section class="menu__products">
		<div class="container">
			<div class="section__title">
				<h2 class="section__title_text">{getWidgetTitle($widget_key)}</h2>
			</div>
        	<div class="section__content">
        		<div class="recent__products">
            		<div class="recent__products_content slick__arrows-center">
                		<ul class="products__list products__list_grid similar__products_list">
                    		{foreach $products as $product}
                        		<li class="products__item">
                            		{view('shop/includes/product/product_recent.tpl', ['model' => $product])}
                        		</li>
                    		{/foreach}
                		</ul>
                		<div class="paginations">
                    		<ul class="pagination__list">
                        		<li class="pagination__item">
                            		<button class="pagination__button button_prev similar__products_prev"></button>
                        		</li>
                        		<li class="pagination__item">
                            		<button class="pagination__button button_next similar__products_next"> </button>
                        		</li>
                    		</ul>
                		</div>
            		</div>
				</div>
        	</div>
    	</div>
	</section>
{/if}