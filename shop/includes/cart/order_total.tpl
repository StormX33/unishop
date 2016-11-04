{if $model->getOriginPrice() != $model->getFinalPrice()}
<tr>
<td></td>
<td></td>
<td></td>
<td class="cart__item_total">{tlang('Subtotal')}</td>
<td class="cart__item_total">{echo emmet_money($model->getOriginPrice(), 'span.cart-price__main-value', '', 'span.cart-price__main-cur')}</td>
</tr>
 {/if}

 <!-- Total discount -->
 {if $model->getDiscountValue() > 0}
<tr>
<td></td>
<td></td>
<td></td>
<td class="cart__item_total">{tlang('Your discount')}</td>
<td class="cart__item_total">{echo emmet_money($model->getDiscountValue(), 'span.cart-price__main-value', '', 'span.cart-price__main-cur')}</td>
</tr>
  {/if}
<!-- Delivery price -->
{if $model->getDeliveryPrice() > 0}
<tr>
<td></td>
<td></td>
<td></td>
<td class="cart__item_total">{tlang('Shipping')}</td>
<td class="cart__item_total">{echo emmet_money($model->getDeliveryPrice(), 'span.cart-price__main-value', '', 'span.cart-price__main-cur')}</td>
</tr>
  {/if}
    <!-- Gift card code -->
  {if $model->getGiftValue() > 0}
<tr>
<td></td>
<td></td>
<td></td>
<td class="cart__item_total">{tlang('Gift card')}</td>
<td class="cart__item_total">{echo emmet_money($model->getGiftValue(), 'span.cart-price__main-value', '', 'span.cart-price__main-cur')}</td>
</tr>
{/if}
<tr>
<td></td>
<td class="cart__item_total">
      <p>{tlang('Estimated Total')}</p></td>
<td class="cart__item_total">

	     <div class="item__total_price">
          {echo emmet_money($model->getFinalPrice(), 'span.cart-price__main-value', '', 'i.cart-price__main-cur')}
        </div>
        {$loc_additional_prices = emmet_money_additional($model->getFinalPrice(), 'span.cart-price__addition-value', '', 'span.cart-price__addition-cur')}
        {if count($loc_additional_prices) > 0}
          <div class="cart-price__addition">
            {foreach $loc_additional_prices as $additional_price}
              <div class="cart-price__addition-item">
                {$additional_price}
              </div>
            {/foreach}
          </div>
        {/if}
</td>
</tr>
</div>