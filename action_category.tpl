<div class="frame-crumbs">
    {widget('path')}
</div>
<div class="frame-inside page-text">
    <div class="container">
            <h1>{echo encode($category.name)}</h1>
            <div class="text-left">{load_menu('left_menu2')}</div>
           <div class="text-right">
            {if $pages == NULL}
                {lang('Категория на стадии разработки', 'newLevel')}
            {else:}
                <ul class="items items-action-category items-text-category">
                    {foreach $pages as $p}
                        <li class="text">
                            <a href="../{$p.cat_url}{$p.url}" class="frame-photo-title {if $p.field_action}is-img{/if}">
                                {if $p.field_action}
                                    <span class="photo-block">
                                        <span class="helper"></span>
                                        <img src="{$p.field_action}"  alt="{$p->name}" title="{$p->name}"/>
                                    </span>
                                {else:} 
                                    <span class="photo-block">
                                        <span class="helper"></span>
                                        <img src="{site_url('uploads/shop/categories/category_nophoto.png')}" alt="{$p->name}" title="{$p->name}" />
                                    </span>
                                {/if}
                                <span class="d_b">
                                    <span class="date f-s_0 d_b">
                                        <span class="day"></span>
                                        <span class="month"></span>
                                        <span class="year"></span>
                                    </span>
                                    <div class="c_news" style="color:#d8180f;">{get_category_name($p.category)}</div>
                                    <span class="title">{$p.title}</span>
                                </span>
                            </a>
                            <div class="description">
                                {$p.prev_text}
                            </div>
                        </li>
                    {/foreach}
                </ul>
                {$pagination}
            {/if}
            </div>
    </div>
</div>
