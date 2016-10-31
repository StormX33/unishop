{if $model->getHit()}
	<div class="label__item">
	    <span class="products__label_icon products__label_latest">{tlang('Hit')}</span>
	</div>
{/if}
  {if $model->getHot()}
  	<div class="label__item">
    <span class="products__label_icon products__label_latest">{tlang('New')}</span>
    </div>
  {/if}
  {if $model->getAction()}
  <div class="label__item">
      <span class="products__label_icon products__label_sale">{tlang('Sale')}</span>
   </div>
  {/if}
  {if $model->firstVariant->getDiscountPercent()}
			<span class="product-photo__label-text">-{echo $model->firstVariant->getDiscountPercent()}%</span>
  {/if}
