{if count($products) > 0}
	<section class="menu__products">
    	<div class="container">
      {view('widgets/includes/widget_hits.tpl', [
      'parent_products' => $products,
      'category_id' => $idCategory,
      'parent_title' => getWidgetTitle('special_products')
      ])}
      
    	</div>
	</section>
{/if}