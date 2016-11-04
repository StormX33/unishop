<div class="product_ective-element">
	<div data-rating="{echo $model->getRating()}" class="products__raiting"></div>
	<div class="products__reviews">{tpl_product_comments_votes($model)} {echo SStringHelper::Pluralize(tpl_product_comments_votes($model), array(tlang('pluralize review 1'), tlang('pluralize review 2'), tlang('pluralize review 3')))}</div>
</div>
