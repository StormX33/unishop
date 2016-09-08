    <!-- Product rating -->
    <div class="product-intro__addition-item">
      {view('shop/includes/product/product_rating.tpl', [
      'model' => $model
      ])}
    </div>
        <!-- Brand -->
    {if $model->getBrand()}
      <div class="product-intro__addition-item">
        {tlang('Brand')}:
        <a class="product-intro__addition-link" href="{shop_url('brand/'.$model->getBrand()->getUrl())}">
          {echo $model->getBrand()->getName()}
        </a>
      </div>
    {/if}
