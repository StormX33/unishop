<div class="price__buy_content">
	<div class="produt__price">
    	<span class="produt__label_price pull-left">
        	{tlang('Price')}
        </span>
        <span class="current__price pull-right">
{echo emmet_money($variant->getFinalPrice(), 'span.product-price__item-value[data-product-price--main]', 'span.product-price__item-coins[data-product-price--coins]', 'span.product-price__item-cur')}        </span>
    </div>
    <div class="produt__price">
      <!-- Discount -->
  {if $variant->getDiscountStatic() > 0}
      <span class="old__price pull-left">
        {echo emmet_money($variant->getOriginPrice(), 'span.product-price__item-value[data-product-price--origin]', '', 'span.product-price__item-cur')}
      </span>
  {/if}
    </div>

  {$loc_additional_prices = emmet_money_additional($variant->getFinalPrice(), 'span.product-price__item-value', '', 'span.product-price__item-cur')}
  {if count($loc_additional_prices) > 0}
    <div class="product-price__item">
      <div class="product-price__addition">
        {foreach $loc_additional_prices as $additional_price}
          <div class="product-price__addition-item">
            {$additional_price}
          </div>
        {/foreach}
      </div>
    </div>
  {/if}
</div>