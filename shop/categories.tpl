{$scats = getCatParentQuery(0)}
<div class="category__catalog_header">
		<h2 class="category__catalog_title">Каталог продукции </h2>
</div>
<div class="main-content">
	<div class="category__catalog_content">
    	<ul class="category__catalog_list">  
			{foreach $scats as $scat}
            	<li class="category__catalog_item">
                	<div class="catalog__item_content">
                		{if $scat->getImage()} 
							<div class="catalog__item_img-wrap">
                    			<img src="{echo $scat->getImage()}" alt="{echo $scat->getName()}" class="catalog__item_img">
                    		</div>
						{/if}	
                        <h3 class="catalog__item_title">
                            <a href="{shop_url('category/' . $scat->getFullPath())}" class="item__title_link">{echo $scat->getName()}</a>
                        </h3>
                		{$sub_items = getCatParentQuery($scat->getId())}
                		{if count($sub_items) > 0}
                			<div class="item__right_collumn">
                    			<ul class="catalog__inner_list">
                					{foreach $sub_items as $sub_item}
                            			<li class="catalog__inner_item"><a href="#" class="catalog__inner_link">{echo $sub_item->getName()}</a></li>
                            		{/foreach}
                        		</ul>
                    		</div>
                		{/if}
                	</div>	
                </li>
			{/foreach}
        </ul>
	</div>
</div>