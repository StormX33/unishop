<div class="produt__price_buy">
        {view('shop/includes/product/product/price.tpl', [
        'variant' => $model->firstVariant,
        ])}
		 {view('shop/includes/product/product/add_to_cart.tpl', [
        'parent_quantity' => true
        ])}
</div>
{if !$CI->dx_auth->is_logged_in()}
	<ul class="product__tools_list">
		<li class="product__tools_item">
    		<a href="{site_url('callbacks')}?subj=5" class="product__tools_link" data-modal="callbacks_modal" rel="nofollow" >
				<div class="product__tools_img">
        			<img src="{$THEME}/images/icons/product_tools/order.png" alt="order" class="tools_img_main tools_img">
            		<img src="{$THEME}/images/icons/product_tools_hover/order.png" alt="order" class="tools_img">
        		</div>
            	<span class="product__tools_span">Заказать проект</span>
        	</a>
    	</li>
		<li class="product__tools_item product__tools_credit">
        	<a href="#" class="product__tools_link">
				<div class="product__tools_img">
                	<img src="{$THEME}/images/icons/product_tools/credit.png" alt="credit" class="tools_img_main tools_img">
                    <img src="{$THEME}/images/icons/product_tools_hover/credit.png" alt="credit" class="tools_img">
                </div>
                <span class="product__tools_span">Узнать цену в кредит</span>
			</a>
		</li>
		<li class="product__tools_item">
        	<a href="{site_url('callbacks')}?subj=2" class="product__tools_link" data-modal="callbacks_modal" rel="nofollow">
				<div class="product__tools_img">
            		<img src="{$THEME}/images/icons/product_tools/advice.png" alt="advice" class="tools_img_main tools_img">
               		<img src="{$THEME}/images/icons/product_tools_hover/advice.png" alt="advice" class="tools_img">
        		</div>
        		<span class="product__tools_span">Консультация инженера</span>
        	</a>
        </li>
		<li class="product__tools_item">
        	<a href="{site_url('callbacks')}?subj=5}" data-modal="callbacks_modal" rel="nofollow" class="product__tools_link">
				<div class="product__tools_img">
                	<img src="{$THEME}/images/icons/product_tools/calculate.png" alt="calculate" class="tools_img_main tools_img">
                    <img src="{$THEME}/images/icons/product_tools_hover/calculate.png" alt="calculate" class="tools_img">
                </div>
                <span class="product__tools_span">Рассчитать объект</span>
       		</a>
        </li>
	</ul>
{else:}
	<ul class="product__tools_list product__tools_list-login">
		<li class="product__tools_item">
        <a href="{site_url('callbacks')}?subj=2" data-modal="callbacks_modal" rel="nofollow"  class="product__tools_link">
		<div class="product__tools_img"><img src="{$THEME}/images/icons/product_tools_login/advice.png" alt="advice" class="tools_img_main tools_img"><img src="{$THEME}/images/icons/product_tools_login_h/advice.png" alt="advice" class="tools_img"></div><span class="product__tools_span">Консультация инженера</span>
        </a>
        </li>
		<li class="product__tools_item">
        	<a href="#" class="product__tools_link">
				<div class="product__tools_img">
            		<img src="{$THEME}/images/icons/product_tools_login/cost.png" alt="cost" class="tools_img_main tools_img">
            		<img src="{$THEME}/images/icons/product_tools_login_h/cost.png" alt="cost" class="tools_img">
				</div>
				<span class="product__tools_span">Узнать стоимость доставки</span>
			</a>
		</li>
    <li class="product__tools_item">
    	<a href="#" class="product__tools_link">
    		<div class="product__tools_img">
    			<img src="{$THEME}/images/icons/product_tools_login/points.png" alt="points" class="tools_img_main tools_img">
    			<img src="{$THEME}/images/icons/product_tools_login_h/points.png" alt="points" class="tools_img">
    		</div>
    		<span class="product__tools_span">Количество баллов при покупке</span>
    	</a>
    </li>
  <li class="product__tools_item">
    <a href="{site_url('sales')}" class="product__tools_link" data-modal="sales">
      <div class="product__tools_img">
        <img src="{$THEME}/images/icons/product_tools_login/sale.png" alt="sale" class="tools_img_main tools_img">
        <img src="{$THEME}/images/icons/product_tools_login_h/sale.png" alt="sale" class="tools_img">
      </div>
      <span class="product__tools_span">Условия для дополнительной скидки</span>
    </a>
  </li>
</ul>
{/if}
<div class="order_by_click">
    <!-- SCU Number -->
    {if $model->firstVariant->getNumber()}
        <div class="product__code col-price-buy">
            Код: <div class="product__code_span" data-product-number>{echo $model->firstVariant->getNumber()}</div>
        </div>
    {/if}
	<div class="buy__click">
		{echo $CI->load->module('one_click_buy')->getBuyForm ()}
	</div><!-- ./buy__click -->
</div>