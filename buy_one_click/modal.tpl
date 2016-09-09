<div class="drop-buy drop drop-style" id="drop_buy_{echo $model->getId()}">
    <button type="button" class="icon_times_drop" data-closed="closed-js"></button>
    <div class="drop-header">
        <div class="title">Купить в один клик</div>
    </div>
	
	
    <div class="drop-content">
		<div class="inside-padd" data-rel="pastehere">
			<ul class="porduct-buy-one items items-bask item-report">
				<li>
					<a href="{shop_url('product/'.$model->url)}" class="frame-photo-title" title="HTC One SV White ">
						<span class="photo-block" style="float:left; width:100px;height:100px" data-firstVariantImage="{echo $model->firstVariant->getMediumPhoto()}" >
							<span class="helper"></span>
							<img src="{echo $model->firstVariant->getMediumPhoto()}" alt="">
						</span>
					</a>
					<div class="drop-buy-description" style="margin-left:124px;">
						<span class="title" style="display:block;">{echo $model->getName()}</span>
						{if count($model->getProductVariants()) > 1}
							<div class="check-variants-product" style="margin:10px 0">
								<select class="variantSwitcherBuy" name="variant" style="border:1px solid #999;">
									{foreach $model->getProductVariants() as $key => $productVariant}
										<option value="{echo $productVariant->getId()}" data-id="{echo $productVariant->getId()}" data-prodid="{echo $model->getId()}" data-varid="{echo $productVariant->getId()}" data-price="{echo $productVariant->toCurrency()}"  data-img="{echo $productVariant->getMediumPhoto()}">
											{if $productVariant->getName()}
												{echo ShopCore::encode($productVariant->getName())}
                                            {else:}
                                                {echo ShopCore::encode($model->getName())}
                                            {/if}
                                        </option>
                                    {/foreach}
								</select>
							</div>
						{/if}
               
						<span class="current-prices f-s_0">
                            <span class="price-new" >
                                <span>
                                    <span class="price priceVariant">{echo $model->firstVariant->toCurrency()}</span>
                                    <span class="curr">{$CS}</span>
                                </span>
                            </span>
                        </span>
					</div>
				</li>
			</ul>
			<div class="msg">
				<div class="success"  style="display:none; margin-top:50px;">
					<span class="icon_info"></span>
					<div class="text-el">Благодарим Вас за то, что совершили заказ товара. В скором времени с Вами свяжется наш менеджер для уточнения деталей заказа</div>
				</div>
			</div>

			<form method="post" action="/buy_one_click/buy" class="data-report" onsubmit="return false;" style="clear:both;">
				<div class="horizontal-form">
					{if $settings['1']['active']==1}
					<label>
						<span class="title">Ваше имя:</span>
						<span class="frame-form-field">
							<input type="text" id="" name="UserName" value=""/>
							{if  $settings['1']['required']==1}
								<span class="must">*</span>
							{/if}
						</span>
					</label>
					{/if}
					{if $settings['3']['active']==1}
					<label>
						<span class="title">E-mail</span>
						<span class="frame-form-field">
							<input type="text" id="" name="UserEmail" value=""/>
							{if  $settings['3']['required']==1}
								<span class="must">*</span>
							{/if}
						</span>
					</label>
					{/if}
					{if $settings['2']['active']==1}
					<label>
						<span class="title">Телефон:</span>
						<span class="frame-form-field">
							<input type="text" name="UserPhone" value=""/>
							{if  $settings['2']['required']==1}
								<span class="must">*</span>
							{/if}
						</span>
					</label>
					{/if}
					{if $settings['4']['active']==1}
					<label>
						<span class="title">Комментарий:</span>
						<span class="frame-form-field">
							<textarea name="UserComment"></textarea>
							{if  $settings['4']['required']==1}
								<span class="must">*</span>
							{/if}
						</span>
					</label>
					{/if}
					<div class="frame-label">
						<span class="title">&nbsp;</span>
						<span class="frame-form-field">
							<div class="btn-form" style="margin-bottom:20px">
								<button class="buy-one-click" type="button" onclick="buy_one_click(this)">
									<span class="text-el">Купить</span>
								</button>
							</div>
						</span>
					</div>
				</div>
				<input type="hidden" name="ProductId" value="{echo $model->getId()}"/>
				<input type="hidden" name="VariantId" value="{echo $model->firstVariant->getId()}"/>
				<input type="hidden" name="Price" value="{echo $model->firstVariant->toCurrency()}"/>
			</form>
        </div>
    </div>
    <div class="drop-footer"></div>
</div>