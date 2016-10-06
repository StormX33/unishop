{$categories_list = get_sub_categories($cat_id)}
<div id="category__title" class="sidebar__title">
	<button class="category_sidebar_btn"></button>
	<div class="filter__title_text">{get_category_name($cat_id)}</div>
  <button class="category__toggle_arrow visible-xs"></button>
</div>
<div class="content__sidebar-item">
  <ul class="sidebar-nav">
	{foreach $categories_list as $catlist}
     <li class="sidebar-nav__item">      
      <a class="sidebar-nav__link" href="{shop_url($catlist.path_url)}">{$catlist.name}</a>
    </li>
	{/foreach}
  </ul>
</div>