{if $parent_type == 'order2'}
{$colspan = 1} 
<!-- {else:}
{$colspan = 3} -->
{/if}

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
<td colspan="{$colspan}"></td>
<td class="cart__item_total">
      <p>{if $parent_type == 'order' || $parent_type == 'order2'}
        {tlang('Estimated Total')}
      {else:}
        {tlang('Cart modal total price')}
      {/if}
      </p></td>
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
  <!-- Gift coupon. Not visible in order view page -->
<!--  {if $parent_coupon}
    <div class="cart-summary__total-coupon">
      <form class="form" action="{shop_url('cart')}" method="post" data-cart-summary--coupon>
        {if $model->getGiftValue() > 0}
          <div>{tlang('Your card was successfully applied')}</div>
          <div class="hidden" data-ajax-grab="cart-coupon">
            <input type="hidden" name="gift_ord" value="1">
            <input type="hidden" name="gift" value="{$gift_key}">
          </div>
        {else:}
          <div class="input-group">
            <input class="form-control" type="text" name="gift" value="" placeholder="{tlang('Enter gift card code')}">
            <div class="input-group-btn">
              <button class="btn btn-default" type="submit">{tlang('Apply')}</button>
            </div>
          </div>
        {/if}

        {if $gift_error}
          <div class="form__info form__info--error">{tlang('Code you entered was not valid')}</div>
        {/if}

        {if $_POST['deliveryMethodId']}
          <input type="hidden" name="deliveryMethodId" value="{$_POST['deliveryMethodId']}">
        {/if}
        {form_csrf()}
      </form>
    </div>
  {/if}-->
</div>