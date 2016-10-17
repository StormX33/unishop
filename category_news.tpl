<div class="main-content main-gallery-content">
      <div class="content__sale">
        <div class="page__teaser_wrapper">
            <h1 class='content__title content__sale_title'>{$category.name}</h1>
            <aside class="top-sidebar">
                <div class="content__row content__row--sm">
                    <nav class="gallery-menu">
                        <ul class="gallery-menu__list">
                            {view('includes/cat_list.tpl', ['cat_id' => 69, 'cat_title_class' => 'fa fa-newspaper-o'])}
                            {view('includes/cat_list.tpl', ['cat_id' => 72, 'cat_title_class' => 'fa fa-tag'])}
                        </ul>
                    </nav>
                 </div>
            </aside>
            <div class="gallery__content">
                {if count($pages) > 0}
                    {foreach $pages as $item}
                        <article class="page__teaser page__teaser_sale">
                            {if trim($item.field_list_image) != ""}
                                <div class="page__teaser_image">
                                    <a href="{site_url($item.full_url)}">
                                        <img src="{$item.field_list_image}" alt="{$item.title}">
                                    </a>
                                </div>
                            {/if}
                            {if trim($item.prev_text) != ""}
                               <div class="page__teaser_content">
                                    <header>
                                        <h3 class="page__teaser_title">
                                            <a href="{site_url($item.full_url)}">{$item.title}</a>
                                        </h3>
                                    </header>
                                    <div class="page__teaser_text gallery__item_text">
                                        {$item.prev_text}
                                    </div>
                                    <div class="date__item">
                                        <span class="page__teaser_span date__item_span" datetime="{date('Y-m-d', $item.publish_date)}">{tpl_locale_date('d F Y', $item.publish_date)}</span>
                                        <a class="page__teaser_link date__item_link" href="{site_url($item.full_url)}">{tlang('Read more')}</a>
                                    </div>
                                </div>
                            {/if}
                        </article>
                    {/foreach}
                {else:}
                    <article class="page__teaser">{tlang('There are no items to display. Please come back later!')}</article>
                {/if}
            </div>
        </div>
        <!-- Category pagination BEGIN -->
        {if $pagination}
            <div class="page__pagination">
                {$pagination}
            </div>
        {/if}
        <!-- Category description -->
        {if trim($category.short_desc)}
            <div class="content__row">
                <div class="typo">{$category.short_desc}</div>
            </div>
        {/if}
    </div>
</div><!-- /.content__container -->