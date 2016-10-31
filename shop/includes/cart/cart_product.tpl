    <td class="cart__item_image">
      <a class="cart__image_link product-photo__item product-photo__item--xs" href="{echo shop_url($product_url)}">
        <img class="cart_image product-photo__img" src="{echo $product_image}" alt="{echo $product_title}"
             title="{echo $product_title}">
      </a>
    </td>


  <td class="cart__item_name">
      <a class="cart__name_link" href="{echo shop_url($product_url)}">{echo $product_title}
      <span class="cart__item_name-span">{tlang('Sku')} {echo $product_sku}</span>
    <!-- Product option (variant) -->
    {if $variant_title and trim($variant_title) != trim($product_title)}
      <p class="cart-product__option">{echo $variant_title}</p>
    {/if}
    </a>
  </td><!-- /.__info -->
