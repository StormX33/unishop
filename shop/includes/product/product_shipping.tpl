<h3 class="product__delivery_title">Покупка в <span class="delivery__title_span">Винтерм </span></h3>
<!-- Delivery Methods -->
	<ul class="delivery__list">
		{if count($delivery_methods) > 0}
			<li class="delivery__item">
				<div class="delivery__image_wrap">
					<img src="{$THEME}images/delivery/delivery.png" class="delivery__image" />
				</div>
				<div class="delivery__text">
					<h4 class="delivery__text_title">{tlang('Shipping methods')}</h4>
        				{foreach $delivery_methods as $item}
          				<p>
            				{echo $item->getName()}
          				</p>
        				{/foreach}
                </div>
                </li>
    <!-- /.product-shipping__row -->
  {/if}

  <!-- Payment Methods -->
  {if count($payments_methods) > 0}
      <li class="delivery__item">
      				<div class="delivery__image_wrap">
					<img src="{$THEME}images/delivery/payment.png" class="delivery__image" />
				</div>
<div class="delivery__text">
					<h4 class="delivery__text_title">{tlang('Payment methods')}</h4>
        {foreach $payments_methods as $item}
          {$loc_desc = trim(strip_tags($item->getDescription())) != "" ? "product-shipping__tooltip-link" : ""}
          <p>
            {echo $item->getName()}
          </p>
        {/foreach}
        </div>
        </li>

  {/if}


</ul>