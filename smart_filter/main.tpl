<div class="sidebar__title"> 
	<div class="filter__title_text">{tlang('Filter')}</div><a href="#" class="filter__reset filter__reset_price">{tlang('Reset')}</a>
</div>
<div class="filter" data-filter data-filter-category="{shop_url('category/'.$category->getFullPath())}">
	<!-- Price -->
	{if $curMax > 0}
		<div class="filter__price">
			<div class="filter__title filter__title-price">
				<div class="filter__title-link">{tlang('Price range')}</div>
			</div>
			<div class="filter__price_content">
				<div class="filter__slider">
					<div class="filter__slider-displays">
						<div class="filter__slider-left">
							<div class="filter__slider-text">от</div>
							<input class="filter__slider-input filter__slider-input_from" type="text" form="catalog-form" name="lp" value="{echo $curMin}" data-filter-price-min="{echo $minPrice}">
						</div>
						<div class="filter__slider-right">
							<div class="filter__slider-text">до</div>
							<input class="filter__slider-input filter__slider-input_to" type="text" form="catalog-form" name="rp" value="{echo $curMax}" data-filter-price-max="{echo $maxPrice}">
						</div>
					</div>
					<div data-min="{echo $minPrice}" data-max="{echo $maxPrice}" class="filter__slider-element"></div>
				</div>
			</div>
		</div>
	{/if}
	<ul class="filter__list">
		<!-- Brands -->
		{if count($brands) > 0}
			<li class="filter__item" data-filter-name="brand" data-filter-position="0">
				<div class="filter__title"><a class="filter__title-link">{tlang('Brand')}</a></div>
				<div class="filter__content">
                	<ul class="filter__choose filter__choose_checkboxes">
						{foreach $brands as $item}
							{$loc_checked = in_array($item->id, $CI->input->get('brand')) ? "checked" : ""}
							{$loc_available = $item->countProducts > 0 || $loc_checked ? "" : "disabled"}
							<li class="filter__choose-item">
								<label class="filter__choose-label">
									<input type="checkbox" name="brand[]" form="catalog-form" class="filter__choose-input" value="{echo $item->id}" {$loc_checked} {$loc_available} data-filter-control="brand-{echo $item->url}" data-filter-alias="{echo $item->url}">
									<div class="filter__choose-elem"></div>
									<div class="filter__chose-text {$loc_available}">{echo $item->name}</div>
								</label>
								<span class="filter__chose-span">({echo $item->countProducts})</span>
            				</li>
						{/foreach}
                    </ul>
        		</div>
      		</li>
		{/if}


    <!-- Properties -->
    {if count($propertiesInCat) > 0}
      {foreach $propertiesInCat as $prop}

        <!-- if filter has dropDown type -->
        {$loc_is_dropdown = in_array('dropDown', getPropertyTypes($prop->property_id)) ? true : false}
        <!-- if false, properties will be visible by default -->
        {$loc_dropdown_hidden = $prop->selectedValues ? false : true}
        <!-- if filter has scroll type -->
        {$loc_is_scroll = in_array('scroll', getPropertyTypes($prop->property_id)) ? true : false}
		<li class="filter__item" data-filter-name="property-{echo $prop->csv_name}" data-filter-position="{echo $prop->property_id}">
			
          <div class="filter__title" {if $loc_is_dropdown}data-filter-drop-handle{/if}><a class="filter__title-link">{echo $prop->name}</a></div>  
          
          <div class="filter__content">
			<ul class="filter__choose filter__choose_checkboxes">
            {foreach $prop->possibleValues as $item}
              {$loc_checked = in_array($item.id, $CI->input->get('pv')[$prop->property_id]) ? "checked" : ""}
              {$loc_available = $item.count > 0 || $loc_checked ? "" : "disabled"}
              <li class="filter__choose-item">
              <label class="filter__choose-label">
                <input type="checkbox" name="pv[{echo $prop->property_id}][]" class="filter__choose-input" form="catalog-form" value="{echo $item.id}" {$loc_checked} {$loc_available} data-filter-control="property-{echo $prop->csv_name}-{echo $item.id}" data-filter-alias="{echo $item.id}">
                       <div class="filter__choose-elem"></div>
                       <div class="filter__chose-text {$loc_available}">{echo $item.value}</div>
              </label>
              <span class="filter__chose-span">({echo $item.count})</span>
              </li>
            {/foreach}
            </ul>
          </div><!-- /.filter__content -->

        </li>
        <!-- /.filter__item -->

      {/foreach}
    {/if}
    </ul>
</div>

