<div class="table-responsive">
	<table class="table table__cart" cellpadding="0" cellspacing="0">
    	<thead>
        	<tr>
            	<th class="cart__item_image-title">{tlang('Photo')}</th>
                <th colspan="2" class="cart__item_name-title">{tlang('Product')}</th>
            </tr>
        </thead>
        <tbody>
        {foreach $items as $item}
        	<tr>
            {view('shop/includes/cart/cart_product.tpl', [
            'product_url' => 'product/'.$item->getSProducts()->getUrl(),
            'product_image' => $item->getVariant()->getSmallPhoto(),
            'product_title' => $item->getSProducts()->getName(),
            'variant_title' => $item->variant_name,
            'product_brand' => $item->getSProducts()->getBrand(),
            'product_sku'   => $item->getVariant()->getNumber()
            
             ])}
            	<td>{echo $item->getQuantity()} {echo SStringHelper::Pluralize($item->getQuantity(), array(tlang('pluralize item 1'), tlang('pluralize item 2'), tlang('pluralize item 3')))}
                {echo emmet_money($item->getFinalPrice() * $item->getQuantity(), 'span.cart-price__main-value', '', 'span.cart-price__main-cur')}
                </td>
            </tr>
         {/foreach}
			<!-- Product kit BEGIN -->
    {foreach $model->getOrderKits() as $kit_main}
		<tr>
          <!-- Product kit Main product -->

            {view('shop/includes/cart/cart_product.tpl', [
            'product_url' => 'product/'.$kit_main->getKit()->getMainProduct()->getUrl(),
            'product_image' => $kit_main->getKit()->getMainProduct()->firstVariant->getSmallPhoto(),
            'product_title' => $kit_main->getKit()->getMainProduct()->getName(),
            'variant_title' => $kit_main->variant_name,
            'product_brand' => $kit_main->getKit()->getMainProduct()->getBrand()
            ])}
          <!-- Product kit discount products -->
          {foreach $kit_main->getKit()->getShopKitProducts() as $kit}
              {view('shop/includes/cart/cart_product.tpl', [
              'product_url' => 'product/'.$kit->getSProducts()->firstVariant->getUrl(),
              'product_image' => $kit->getSProducts()->firstVariant->getSmallPhoto(),
              'product_title' => $kit->getSProducts()->getName(),
              'variant_title' => $kit->getSProducts()->firstVariant->getName(),
              'product_brand' => $kit->getSProducts()->getBrand()
              ])}

          {/foreach}
          <td>
            {echo $kit_main->getQuantity()} {echo SStringHelper::Pluralize($kit_main->getQuantity(), array(tlang('pluralize kit 1'), tlang('pluralize kit 2'), tlang('pluralize kit 3')))}

                {echo emmet_money($kit_main->getKit()->getFinalPrice() *  $kit_main->getQuantity(), 'span.cart-price__main-value', '', 'span.cart-price__main-cur')}
			</td>
            </tr>
    {/foreach}
        </tbody>


<tfoot>
  {view('shop/includes/cart/order_total.tpl', [
  'coupon' => false,
  'parent_type' => 'order2',
  ])}
</tfoot>
</table>
</div>