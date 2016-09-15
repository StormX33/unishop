 <span class="cart_price_span cart_price_text"> {tlang('In cart')}:</span><span class="cart_price_span">      
      {if $model->getTotalItems() > 0}
        {echo $model->getTotalItems() ? : 0} - {echo emmet_money($model->getFinalPrice())}
      {else:}
        0.00
      {/if}
</span>