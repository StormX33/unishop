<div class="table-responsive">
<table cellpadding="0" cellspacing="0" class="table table__cart">
	<thead>
		<tr>
			<th class="cart__item_delete-title"></th>
			<th colspan="2" class="cart__item_name-title">{tlang('Product')}</th>
			<th class="cart__item_quantity-title">{tlang('Qty')}</th>
			<th class="cart__item_price-title">{tlang('Price')}</th>
		</tr>
	</thead>
    <tbody>
    {foreach $items as $item}
	<tr>
    <!-- url for item delete button depending on if it's simple product or kit -->
    {$loc_delete_url = $item->instance == 'ShopKit' ? "removeKit" : "removeProductByVariantId"}

    <!-- url for change quantity depending on if it's simple product or kit -->
    {$loc_quantity_url = $item->instance == 'ShopKit' ? "setQuantityKitById" : "setQuantityProductByVariantId"}

      <!-- Delete kit of product -->
      <td class="cart__item_delete">
          <a class="cart__item_link item__delete_link" href="{media_url('shop/cart/'. $loc_delete_url .'/'.$item->getId())}" title="{tlang('Delete')}"
             data-cart-summary--delete
             data-cart-summary--item-id="{echo $item->getId()}"
             data-cart-summary--href="{media_url('shop/cart/api/'. $loc_delete_url .'/'.$item->getId())}">
          </a>
      </td>

      <!-- Product kit -->
      {if $item->instance == 'ShopKit'}
      <div class="cart-summary__cell">
        {foreach $item->items as $kit}
        <div class="cart-summary__product cart-summary__product--kit">
          {view('shop/includes/cart/cart_product.tpl', [
            'product_url' => 'product/'.$kit->getSProducts()->getUrl(),
            'product_image' => $kit->getSmallPhoto(),
            'product_title' => $kit->getSProducts()->getName(),
            'variant_title' => $kit->getName(),
            'product_brand' => $kit->getSProducts()->getBrand()
          ])}
        </div>
        {/foreach}
      </div>
      <!-- Simple Product -->
      {else:}
          {view('shop/includes/cart/cart_product.tpl', [
            'product_url' => 'product/'.$item->getSProducts()->getUrl(),
            'product_image' => $item->getSmallPhoto(),
            'product_title' => $item->getSProducts()->getName(),
            'variant_title' => $item->getName(),
            'product_brand' => $item->getSProducts()->getBrand(),
            'product_sku' => $item->getNumber()
          ])}
      {/if}
      <!-- END Including products -->


      <!-- Quantity of product -->
      <td class="cart__item_quantity">
        <form class="cart-summary__quantity" action="{shop_url('cart/'. $loc_quantity_url .'/' . $item->getId())}" method="get"
        data-cart-summary--quantity
        data-cart-summary--href="{shop_url('cart/api/'. $loc_quantity_url .'/' . $item->getId())}">

          {view('includes/forms/input-quantity.tpl', [
            'parent_name' => 'quantity',
            'parent_value' => $item->getQuantity(),
            'parent_cart' => true
          ])}

          {if $_POST['deliveryMethodId']}
            <input type="hidden" name="deliveryMethodId" value="{$_POST['deliveryMethodId']}">
          {/if}

        </form>
      </td>


      <!-- Product Price -->
      <td class="cart__item_total">
      	{echo emmet_money($item->getFinalPrice() * $item->getQuantity(),'span.cart-price__main-value', ' ', 'i.cart-price__main-cur')}
      </td>
    </tr>
    {/foreach}
    </tbody>
  <!-- Gift coupon -->
  <tfoot>
  {view('shop/includes/cart/cart_total.tpl', [
    'parent_type' => $parent_type,
    'parent_coupon' => $parent_coupon,
    'model' => $cart
  ])}
	</tfoot>
</table>
</div>