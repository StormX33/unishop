{if count($wishlists) > 0}
	<div class="check__content_title">
		<div class="cart__title">
			{tlang('Wish list')}
		</div>
	</div>
    <ul class="cart__list">
	{foreach $wishlists as $list}
		{$group = $list[0];}
		<li class="cart__item">
			<div class="table-responsive wishlists__item_header">
				<table cellpadding="0" cellspacing="0" class="table table__cart">
                	<thead>
                    	<tr>
                        	<th id ="cart__item_order-number" class="cart__item_order-number">
                            	<div class="order-number_span">
                            		<span class="wishlists__header_text">{$group.title}</span>	
                            	</div>
                            </th>
                            <th></th>
                            <th class="cart__item_quantity">
                            	<a class="frame-content__header-link" href="{site_url('/wishlist/editWL/'.$group.wish_list_id)}" data-modal>{tlang('Edit')}</a>
                                
                            </th>
							<th class="cart__item_status">
                            	<a class="frame-content__header-link" href="{site_url('/wishlist/deleteWL/'.$group.wish_list_id)}" data-delete>{tlang('Delete')}</a>
                            </th>
                    	</tr>
                    </thead>
				</table>
            </div>
            <div class="table-responsive wishlists__item_content">
				<table cellpadding="0" cellspacing="0" class="table table__cart">
                	<tbody>
						{if $list[0]['id']}
							{foreach $list as $item}
                            	{$product = getProduct($item.id)}
                            	<tr>
                           			<td class="cart__item_delete">
        								<a class="cart__item_link item__delete_link" href="{site_url('/wishlist/deleteItem/' . $item.variant_id .'/'. $item.wish_list_id)}" title="{tlang('Remove from list')}">
										</a>
                            		</td>
                        			<td class="cart__item_image">
                            			<a href="{shop_url('product/'.$product->getUrl())}" class="cart__image_link">
                                			<img src="{echo $product->firstVariant->getSmallPhoto()}" alt="{echo $product->getName()}" class="cart_image">
                                		</a>
                            		</td>
                            		<td class="cart__item_name">
                            			<a href="{shop_url('product/'.$product->getUrl())}" class="cart__name_link">
                                			<span class="cart__item_name-span">{echo $product->firstVariant->getNumber()}</span>
                                            <span class="cart__item_name-span">{echo $product->getName()}</span>
                                            {echo emmet_money($product->firstVariant->getFinalPrice(), 'span.product-price__item-value[data-product-price--main]', 'span.product-price__item-coins[data-product-price--coins]', 'span.product-price__item-cur')}
                                		</a>
                            		</td>
									<td class="cart__item_buy">
                                    	<form action="{site_url('/shop/cart/addProductByVariantId/'.$product->firstVariant->getId())}" method="get" data-product-button--form data-product-button--path="{site_url('/shop/cart/api/addProductByVariantId')}"
	data-product-button--variant="{echo $product->firstVariant->getId()}"
	data-product-button--modal-url="{shop_url('cart')}"
	data-product-button--modal-template="includes/cart/cart_modal" class="compare_buy">
        <!-- Add to cart button -->
		<a style="cursor:pointer" onclick="$(this).submit();" class="products__buy-btn {echo $in_cart > 0 ? 'hidden' : '' }" data-product-button--add data-product-button-item data-product-button--loader><div class="products__buy-content"><span class="products__buy-span">{tlang('Add to Cart')}</span></div></a>
    	<!-- Already in cart button -->
        <a class="products__buy-btn product-buy__btn--in-cart {echo $in_cart > 0 ? '' : 'hidden' }" href="{shop_url('cart')}" data-modal="includes/cart/cart_modal" data-product-button--view data-product-button-item><div class="products__buy-content"><span class="products__buy-span">{tlang('View in Cart')}</span></div></a>
		<input type="hidden" name="redirect" value="cart">
      	{form_csrf()}
</form>
                                    </td>
									<td class="cart__item_total">
										<a class="product-cut__move-link" href="{site_url('/wishlist/renderPopup/'.  $item.variant_id .'/'. $item.wish_list_id  .'/'. $user.id)}" data-modal>{tlang('Change list')}</a>
									</td>
                        		</tr>
							{/foreach}
						{else:}
							<div class="typo">
								<h3>{tlang('This list is empty')}</h3>
									<p>{tlang("Once added new items, you'll be able to continue shopping any time and also share the information about the purchase with your friends.")}</p>
							</div>
						{/if}
                    </tbody>
				</table>
			</div>
		</li>
	{/foreach}
    </ul>
{else:}
	<div class="content__header">
		<h1 class="content__title">
			{tlang('Your wishlist is empty')}
		</h1>
	</div>
	<div class="content__row">
		<p class="typo">{tlang("Once added new items, you'll be able to continue shopping any time and also share the information about the purchase with your friends.")}</p>
	</div>
{/if}