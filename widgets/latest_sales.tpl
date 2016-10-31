{$loc_items_num = count($recent_news)}
{if $loc_items_num > 0}
	 <!-- URL to Widget First Category | Used to Make Link to All Items Page -->
	{$loc_cat_url = str_replace(strrchr($recent_news[0]['full_url'], "/"), "", $recent_news[0]['full_url'])}
    <div class="section__wrapper">
    <div class="section__header">
        <div class="section__content_title">
            <h3 class="content_title_text">{getWidgetTitle('latest_sales')}</h3>
        </div>
    </div>
    <div class="section__content">
        <ul class="articles__list row">
            {foreach $recent_news as $item}
                <li class="col-sm-4 col-mob"> 
                    <div class="articles__item">
                        <div class="articles__img_wrap">
                            {if trim($item.field_list_image) != ""}
                                <a href="{site_url($item.full_url)}">
                                    <img src="{$item.field_list_image}" alt="{$item.title}" class="article__img">
                                </a>
                            {/if}
                        </div>
                        <div class="item__link_content">
                            <a href="{site_url($item.full_url)}" class="articles__item_link">{$item.title}</a>
                            <div class="date__item">
                                <span class="date__item_span">{tpl_locale_date('d F Y', $item.publish_date)}</span>
                                <a href="{site_url($item.full_url)}" class="date__item_link">{tlang('Read more')}</a>
                            </div>
                        </div>
                    </div>
                </li>
            {/foreach}
        </ul>
        <div class="section__content_title-link"><a href="{site_url($loc_cat_url)}" class="submit__btn_main"><span class="btn__accent_span">Все {mb_strtolower(getWidgetTitle('latest_sales'))}</span></a></div>
    </div>
    </div>
{/if}