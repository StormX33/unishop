<div class="produt__price_buy">
        {view('shop/includes/product/product/price.tpl', [
        'variant' => $model->firstVariant,
        ])}
		 {view('shop/includes/product/product/add_to_cart.tpl', [
        'parent_quantity' => true
        ])}
<!-- SCU Number -->
{if $model->firstVariant->getNumber()}
	<div class="product__code">
		{tlang('Number')}: <div class="product__code_span" data-product-number>{echo $model->firstVariant->getNumber()}</div>
	</div>
{/if}
</div>
<div class="product__raiting_block">
</div>
