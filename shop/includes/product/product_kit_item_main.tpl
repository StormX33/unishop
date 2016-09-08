<div class="related__products">
	<a href="#" class="related__products_link">
		<img src="{echo $model->firstVariant->getSmallPhoto()}" alt="{echo $model->getName()}" class="products__img" title="{echo $model->getName()}">
	</a>
</div>
<div class="related__product_title">{echo $model->getName()}</div>
<div class="related__products_price">
	<div class="products__price_item products__price_old"></div>
	<div class="products__price_item products__price_new">
    	{echo emmet_money($model->firstVariant->getFinalPrice(), 'span.product-price__main-value', '', 'span.product-price__main-cur')}
    </div>
	{$loc_additional_prices = emmet_money_additional($model->firstVariant->getFinalPrice(), 'span.product-price__addition-value', '', 'span.product-price__addition-cur')}
	{if count($loc_additional_prices) > 0}
		{foreach $loc_additional_prices as $additional_price}
			<div class="products__price_item products__price_eur">
				{$additional_price}
			</div>
		{/foreach}
	{/if}
</div>