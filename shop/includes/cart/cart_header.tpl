      
 <span class="cart_price_span"> {tlang('In cart')}:</span><span class="cart_price_span">      
      {if $model->getTotalItems() > 0}
        {echo $model->getTotalItems() ? : 0} - {echo str_replace(" ", "", emmet_money($model->getFinalPrice()))}
      {else:}
        0.00
      {/if}
</span>