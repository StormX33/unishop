 <form action="{site_url('/')}one_click_buy" method="post" style="">

         <input name="UserPhone" type="tel" placeholder="+38(___) ___-__-__" class="buy__click_form-input"/>
         <div class="buy__click_btn-wrap">
             <input type="submit" value="Заказ в 1 клик" class="buy__click_form-submit"/>
             <span class="button-bg"></span>
            </div>
    <input type="hidden" name="ProductId" value="{echo $model->getId()}"/>
    <input type="hidden" name="VariantId" value="{echo $model->firstVariant->getId()}"/>
    <input type="hidden" name="Price" value="{echo $model->firstVariant->toCurrency()}"/>

        {form_csrf()}
    </form>