<div class="main-title">{tlang('Brands')}</div>
{foreach $model as $m}
<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
<a class="brand-image" href="{shop_url('brand/'.$m.url)}">
<span class="brand-image__photo">
<img class="brand-image__img" src="{media_url('/uploads/shop/brands/'.$m.image)}" alt="{$m.name}">
</span>
<span class="brand-image__title">
{$m.name}
</span>
</a>

</div>
{/foreach}

