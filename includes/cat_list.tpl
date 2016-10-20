{$categories_list = get_sub_categories($cat_id)}
<div id="category__title" class="sidebar__title">
  {if isset($cat_title_class)}
    <i class="title-cat {$cat_title_class}" aria-hidden="true"></i>
    {/if}
  <div class="filter__title_text">{get_category_name($cat_id)}</div>
  
</div>
<div class="content__sidebar-item">
  <ul class="sidebar-nav">
  <li class="sidebar-nav__item"> 
    <a class="sidebar-nav__link" href="{site_url(get_category_uri($cat_id))}">Все {get_category_name($cat_id)}</a>
    </li>
  {foreach $categories_list as $catlist}
     <li class="sidebar-nav__item">      
      <a class="sidebar-nav__link" href="{site_url($catlist.path_url)}">{$catlist.name}</a>
    </li>
  {/foreach}
  </ul>
</div>