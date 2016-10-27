<div class="price__buy_content">
	<div class="produt__price">
		<span class="produt__label_price pull-left col-price-buy">
			{tlang('Price')}
		</span>
		<span class="current__price pull-right col-price-buy">
			{echo emmet_money($variant->getFinalPrice(), 'span.product-price__item-value[data-product-price--main]', 'span.product-price__item-coins[data-product-price--coins]' ,'span.product-price__item-cur')}
        </span>
	</div>
	<div class="produt__price">
		<!-- Discount -->
		{if $variant->getDiscountStatic() > 0}
			<span class="old__price pull-left">
				{echo emmet_money($variant->getOriginPrice(), 'span.product-price__item-value[data-product-price--origin]', '', 'span.product-price__item-cur')}
			</span>
		{/if}
		{$loc_additional_prices = emmet_money_additional($variant->getFinalPrice(), 'span.product-price__item-value', '', 'span.product-price__item-cur')}
		{if count($loc_additional_prices) > 0}
			{foreach $loc_additional_prices as $additional_price}
				<span class="current__price_eur pull-right">
					{$additional_price}
				</span>
			{/foreach}
		{/if}
       
    </div>
</div>