<ul class="cart__list">
	{foreach $orders as $order}
		{if $order->getPaid()}
        	{$paid_class = 'status__done'} 
           {$order_st = $order->getSOrderStatuses()}
            {if $order->getSOrderStatuses()->getId() == '1'}
            	{$loc_paid = 'Выполняется'}
            {else:}
        		{$loc_paid = $order->getSOrderStatuses()->setLocale(MY_Controller::getCurrentLocale())->getName()}
            {/if}
        {else:}
        	{$paid_class = 'status__awaiting'} 
        	{$loc_paid = 'Ожидает оплаты'}
        {/if}
        {$items = $order->getOrderProducts()}
		<li class="cart__item">
		<!-- Order Id -->
			<div class="table-responsive cart__item_header">
				<table cellpadding="0" cellspacing="0" class="table table__cart">
					<thead>
						<tr>
							<th class="cart__item_order-number"> <span class="order-number_span">№{echo $order->getId()}</span></th>
							<th class="cart__item_data">{echo tpl_locale_date('d F Y', $order->getDateCreated())}</th>
                           
							<th class="cart__item_quantity"><span class="quantity_span">{echo count($items)} </span>{echo SStringHelper::Pluralize(count($items), array(tlang('pluralize item 1'), tlang('pluralize item 2'), tlang('pluralize item 3')))} на {echo emmet_money($order->getFinalPrice(), 'span.sum_span', '', 'span.cart-price__main-cur')}</th>
							<th class="cart__item_status {$paid_class}">{$loc_paid}</th>
						</tr>
					</thead>
				</table>
			</div>
            <div class="table-responsive cart__item_content">
            	<table cellpadding="0" cellspacing="0" class="table table__cart">
                	<tbody>
                    	
                        {foreach $items as $item}
                        	{$prod_uri = 'product/'.$item->getSProducts()->getUrl()}
                            {$prod_name = $item->getSProducts()->getName()}
                    		<tr>
                        		<td class="cart__item_image">
                            		<a href="{echo $prod_uri}" class="cart__image_link">
                                		<img src="{echo $item->getVariant()->getSmallPhoto()}" alt="{echo $prod_name}" class="cart_image">
                                	</a>
                            	</td>
                            	<td class="cart__item_name">
                            		<a href="#" class="cart__name_link">
                                		<span class="cart__item_name-span">{$item->getVariant()->getNumber()}</span>{echo $prod_name}
                                	</a>
                            	</td>
								<td class="cart__item_quantity">{echo $item->getQuantity()} шт</td>
								<td class="cart__item_total">
									<p> <span>{echo emmet_money($item->getFinalPrice() * $item->getQuantity(), 'span.cart-price__main-value', '', 'span.cart-price__main-cur')}</span></p>
								</td>
                        	</tr>
                        {/foreach}
                    </tbody>
            	</table>
            </div>
		</li>
	{/foreach}
</ul>
