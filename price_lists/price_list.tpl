<div class="main-title"> 
	<h1 class="price__title_text">Прайс-листы на оборудование и материалы для систем отопления и водоснабжения</h1>
</div>
<div class="main-content">
	{if count($price_lists_items) > 0}
        <fieldset class="table-responsive">
    		<table class="table table-condensed table__prices">
    			<tbody>
                {foreach $price_lists_items as $price_list_item}
                	<tr>
                    	<td>
    						<div class="prices__img_wrap">
                            	<img src="{site_url($price_list_item.logo)}" alt="{$price_list_item.name}" class="prices__item_img"/>
                            </div>
                        </td>
                        <td>
                        	<p class="price__text">{$price_list_item.name}</p>
                            {if $price_list_item.description}
                            	<p class="price__text">$price_list_item.description</p>
                            {/if}
                        </td>
                        <td>
                        	{date("d.m.y",$price_list_item.price_list_date)}
                        </td>
                        <td class="download"><a href="{site_url($price_list_item.price_list_xls)}" target="_blank" class="prices_link prices_link_xls">Скачать xls</a></td>
                        {if $price_list_item.price_list_other}
                        {$other = mb_substr($price_list_item.price_list_other, -3)}
                        <td class="download"><a href="{site_url($price_list_item.price_list_other)}" target="_blank" download="" class="prices_link prices_link_{$other}">Скачать {$other}</a></td>
                        {/if}
                        
    				</tr>
    			{/foreach}
                </tbody>
                </table>
        </fieldset>
{/if}

