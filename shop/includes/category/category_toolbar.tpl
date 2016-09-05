<ul class="sort__list">
 	<!-- Order BEGIN -->
	{$loc_sorting_list = ShopCore::app()->SSettings->getSortingFront()}
	{if $loc_sorting_list}
		<li class="sort__item"> 
    	   {$loc_current_sort = tpl_get_default_sorting($parent_default_order)}
 	       {$loc_default_sort = tpl_get_default_sorting($parent_default_order, false)}
			<div class="sort__title sort__title_price">
            	{foreach $loc_sorting_list as $key => $order}
                	<div class="sort__title_text {if $loc_current_sort == $order.get}active{/if}" data-title="{$order.get}">{$order.name_front}</div>
                {/foreach}
                <span class="sort__span"></span>
			</div>
		</li>
	{/if}
  	<!-- END Order -->
    <!-- Per page items BEGIN -->
	<li class="sort__item">
		{$loc_per_page_items = tpl_per_page_array()}
		{if count($loc_per_page_items) > 1}
		<div class="sort__title">
			{tlang('Per page')}: 
			{foreach $loc_per_page_items as $per_page_item}
            	 <span class="sotr__text {if tpl_per_page_selected($per_page_item)}active{/if}">{$per_page_item}</span><span class="sort__span"> </span>
             {/foreach}
            <span class="sotr__text"> 100</span><span class="sort__span"> </span>
		</div>
        {/if}
	</li>
	<!-- END Per page items -->
      <!-- Change View BEGIN -->
      <li class="sort__item sort-view">
      	<div class="sort__title">
      		{$totalProducts}
        </div>
		<ul class="sort__view-list">
			<li data-view="grid" class="{if !$_COOKIE['catalog_view'] || $_COOKIE['catalog_view'] == 'card'}active{/if} sort__view-item sort__view_grid">
            	<a href="#" class="sort__view-link" title={tlang("Card")}>
					<div class="sort__view-icon"></div>
                </a>
           	</li>
			<li data-view="rows" class="{if $_COOKIE['catalog_view'] == 'snippet'}active{/if} sort__view-item sort__view_rows">
            	<a href="#" class="sort__view-link" title={tlang("List")}>
					<div class="sort__view-icon"></div>
                </a>
           	</li>
		</ul>
     </li>
      <!-- END Change View -->
</ul>