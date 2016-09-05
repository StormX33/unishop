  <!-- Discount -->
  {if $variant->getDiscountStatic() > 0}
      <div class="products__price_item products__price_old">
        {echo emmet_money($variant->getOriginPrice(), 'span.product-price__item-value[data-product-price--origin]', '', 'span.product-price__item-cur')}
      </div>
  {/if}

  <!-- Main Price -->
    <div class="products__price_item products__price_new">
      {echo emmet_money($variant->getFinalPrice(), 'span.product-price__item-value[data-product-price--main]', 'span.product-price__item-coins[data-product-price--coins]', 'span.product-price__item-cur')}
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
