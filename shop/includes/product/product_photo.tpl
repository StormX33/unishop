<div class="products__slideshow" data-magnific-galley  data-product-photo-scope>
	<div class="products__slideshow-block">
		<!-- Main photo -->
		<a class="products__slideshow-display {if !$model->firstVariant->hasMainImage()}product-photo__item--no-photo{/if}" href="{media_url($model->firstVariant->getLargePhoto())}" target="_blank" data-product-photo-link data-zoom-image="{media_url($model->firstVariant->getLargePhoto())}"
     {if $model->firstVariant->hasMainImage()}
     data-magnific-galley-main
     data-magnific-galley-title="{echo $model->getName()}"
     data-magnific-galley-close-text="{tlang('Close')}"
     {/if}
  >
    <img class="products__slideshow-img" src="{media_url($model->firstVariant->getMainPhoto())}" alt="{echo $model->getName()}" title="{echo $model->getName()}"
         data-product-photo
         data-zoom-image-small
    >
    <!-- Photo labels -->
    {view('shop/includes/product/product_labels.tpl')}
    <span class="product-photo__zoom hidden hidden-sm hidden-xs" data-zoom-wrapper>
      <span data-zoom-frame></span>
    </span>
  </a>
  
  <!-- Additional images -->
  {if count($model->getSProductAdditionalImages()) > 0}
  <ul class="products__slideshow-thumbs">
    
    <!-- First output main image -->
    <li class="products__slideshow-item active">
      <a class="products__slideshow-link" href="{media_url($model->firstVariant->getLargePhoto())}" target="_blank"
         data-product-photo-thumb
         data-product-photo-thumb-active
         data-magnific-galley-thumb
         data-magnific-galley-title="{echo $model->getName()}"
      >
        <img class="products__slideshow-thumbs-img" src="{media_url($model->firstVariant->getSmallPhoto())}" alt="{echo $model->getName()}" title="{echo $model->getName()}"
             data-product-photo-main-thumb>
      </a>
    </li>
    
    <!-- Additional images list -->
    {foreach $model->getSProductAdditionalImages() as $thumb}
    <li class="products__slideshow-item">
      <a class="products__slideshow-link" href="{productImageUrl('products/additional/'.$thumb->getImageName())}" target="_blank"
         data-product-photo-thumb
         data-magnific-galley-thumb
         data-magnific-galley-title="{echo $model->getName()}"
      >
        <img class="products__slideshow-thumbs-img"
             src="{productImageUrl('products/additional/thumb_'.$thumb->getImageName())}"
             alt="{echo $model->getName()} {echo $thumb->getPosition()}"
             title="{echo $model->getName()} {echo $thumb->getPosition()}"
             data-zoom-image-small>
      </a>
    </li>
    {/foreach}
    
  </ul>
  {/if}
</div>
</div>