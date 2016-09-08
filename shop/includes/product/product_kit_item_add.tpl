<div class="related__products">
	<a href="{shop_url('product/'.$model->getSProducts()->getUrl())}" class="related__products_link">
		<img src="{echo $model->firstVariant->getSmallPhoto()}" alt="{echo $model->getSProducts()->getName()}" title="{echo $model->getSProducts()->getName()}" class="products__img">
	</a>
</div>
<div class="related__product_title">{echo $model->getSProducts()->getName()}</div>
{if $model->getDiscountPercent()}
	<div class="products__label_content">
		<div class="label__item">
			<span class="products__label_icon products__label_sale">-{echo $model->getDiscountPercent()}%</span>
		</div>
	</div>
{/if}
<div class="related__products_price">
	<div class="products__price_item products__price_old">
    	{echo emmet_money($model->getOriginPrice())}
    </div>
	<div class="products__price_item products__price_new">
    	{echo emmet_money($model->getFinalPrice())}
    </div>
	{$loc_additional_prices = emmet_money_additional($model->getFinalPrice(), 'span.product-price__addition-value', '', 'span.product-price__addition-cur')}
	{if count($loc_additional_prices) > 0}
		{foreach $loc_additional_prices as $additional_price}
			<div class="products__price_item products__price_eur">
				{$additional_price}
			</div>
		{/foreach}
	{/if}
</div>