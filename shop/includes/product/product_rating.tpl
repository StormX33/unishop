<div class="product_ective-element">
	<div data-rating="{echo $model->getRating()}" class="products__raiting"></div>
	<div class="products__reviews">{tpl_product_comments_votes($model)} {tlang('Reviews')}</div>
</div>
