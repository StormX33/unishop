<div class="produt__change-count col-price-buy {$parent_mod_class}" data-form-quantity {echo $parent_cart ? 'data-form-quantity-submit' : ''}>

    <input class="amount" type="text" name="{$parent_name}" autocomplete="off"
           value="{$parent_value}"
           data-cart-summary--quantity-field
           data-form-quantity-field
           data-form-quantity-step="1">
           <div class="change__count_buttons">
            <button class="icon__plus count_buttons" type="button" data-form-quantity-control="plus"><i class="fa fa-plus"></i></button>
            <button class="icon__minus count_buttons" type="button" data-form-quantity-control="minus"><i class="fa fa-minus"></i></button>
           </div>

</div>
