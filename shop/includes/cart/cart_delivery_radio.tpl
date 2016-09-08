<ul class="delivery__check_list" data-cart-delivery>
	{foreach $deliveryMethods as $delivery}
		<li class="delivery__check_item" data-cart-delivery--item>
			<label class="delivery-radio__title" >
				<input type="radio" class="delivery__check_input" name="deliveryMethodId" value="{echo $delivery->getId()}" id="deliveryMethod_{echo $delivery->getId()}"data-cart-delivery--input data-cart-delivery--href="{shop_url('cart')}" {if $delivery->getId() == get_value('deliveryMethodId')}checked{/if}>
          		<div class="delivery__check-elem"></div>
				<div class="delivery__check_inner">
                	<div class="delivery__check_title">{echo $delivery->getName()}</div>
          			<div class="delivery__check_text">
						{if trim(strip_tags($delivery->getDescription())) != ""}
							<div class="delivery-radio__info">
								{echo $delivery->getDescription()}
							</div>
						{/if}
                		<!-- Delivery Price is undefined -->
                    	{if $delivery->getDeliverySumSpecified()}
                    		<div class="delivery-radio__info">
                        		{echo $delivery->getDeliverySumSpecifiedMessage()}
                    		</div>
                    	<!-- Delivery Price is defined -->
                    	{/if}

                    	{if $delivery->getPrice() > 0}
                    		<div class="delivery-radio__info">
                        		{tlang('Price')}: {echo str_replace(" ","", emmet_money($delivery->getPrice()))}
                    		</div>
                    		{if $delivery->getFreeFrom() > 0}
                    			<div class="delivery-radio__info">
                     				{tlang('Free from')}: {echo str_replace(" ","", emmet_money($delivery->getFreeFrom()))}
                    			</div>
                    		{/if}
                    	{/if}
                    	<!-- Payment methods selection -->
                    	{if count($delivery->getPaymentMethodss()) > 0}
                    		<div class="delivery-radio__select hidden" data-cart-delivery--payment>
                    			<div class="delivery-radio__select-label">
                    				{tlang('Payment method')}:
                    			</div>
                    			<div class="delivery-radio__select-control">
                   					{view('shop/includes/cart/cart_payment_select.tpl', ['delivery' => $delivery])}
                    			</div>
                    		</div>
                    	{/if}
          			</div>
                </div>
			</label>
    </li><!-- /.field -->
  {/foreach}
</ul><!-- /.delivery-radio -->