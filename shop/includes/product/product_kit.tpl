<div class="related__products_header">
	<h3 class="related__products_title">{tlang('Frequently bought together')}</h3>
</div>
<div class="related__products">
	{foreach $model->getShopKits() as $kit}
		<ul class="related__products_list">
        	<li class="related__products_item products_item">
			{view('shop/includes/product/product_kit_item_main.tpl', array('model' => $kit->getSProducts()))}
    		</li>
            {foreach $kit->getShopKitProducts() as $kit_product}
            	<li class="related__products_item">
					<div class="related__products"><span class="related__product_span">+ </span></div>
				</li>
                <li class="related__products_item products_item">
                  {view('shop/includes/product/product_kit_item_add.tpl', array('model' => $kit_product))}
                  </li>
            {/foreach}
            <li class="related__products_item">
				<div class="related__products"><span class="related__product_span">= </span></div>
			</li>
            <li class="related__products_item related__price_item products_item">
				<div class="products__info">
					<div class="products__price">
						<div class="products__price_item products__price_old">
                        	{echo emmet_money($kit->getOriginPrice(), 'span.product-price__item-value', '', 'span.product-price__item-cur')}
                        </div>
						<div class="products__price_item products__price_new">
                        	{echo emmet_money($kit->getFinalPrice(), 'span.product-price__item-value', '', 'span.product-price__item-cur')}
                         </div>
                        {$loc_additional_prices = emmet_money_additional($kit->getFinalPrice(), 'span.product-price__addition-value', '', 'span.product-price__addition-cur')}
                  		{if count($loc_additional_prices) > 0}
                        {foreach $loc_additional_prices as $additional_price}
                            <div class="products__price_item products__price_eur">{$additional_price}</div>
                        {/foreach}
                        {/if}
					</div>
					<div class="products__info-button">
                    	{view('shop/includes/product/product_kit_button.tpl', ['model' => $kit])}
				</div>
			</li>
    	</ul>
    {/foreach}
</div>
<div class="paginations">
	<ul class="pagination__list">
		<li class="pagination__item">
			<button class="pagination__button related__products_prev button_prev"> </button>
		</li>
		<li class="pagination__item">
			<button class="pagination__button related__products_next button_next"></button>
		</li>
	</ul>
</div>

