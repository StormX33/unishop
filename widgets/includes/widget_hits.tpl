<div class="section__title">
	<h2 class="section__title_text">{$parent_title}</h2>
</div>
  <div class="widget-primary__inner">
    <div class="row row--ib row--vindent-m">
      {foreach $parent_products as $product}
     
        <div class="col-xs-12 {echo $category_id} col-sm-6 col-md-4 col-lg-2 {$category_id}"  data-slider-slide>
          {view('shop/includes/product/product_cut.tpl', [
          'model' => $product
          ])}
          
        </div>
        
      {/foreach}
    </div>
  </div>