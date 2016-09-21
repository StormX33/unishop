{$loc_items = $category->getChildsByParentIdI18n($category->getId())}
{if count($loc_items)}
<div id="category__title" class="sidebar__title">
	<button class="category_sidebar_btn visible-xs"></button>
	<div class="filter__title_text">{tlang("Categories")}</div>
  <button class="category__toggle_arrow visible-xs"></button>
	
</div>
<div class="content__sidebar-item">
  <ul class="sidebar-nav">
    {foreach $loc_items as $item}
    <li class="sidebar-nav__item">      
      <a class="sidebar-nav__link" href="{shop_url('category/' . $item->getFullPath())}">{echo $item->getName()}</a>
    </li>
    {/foreach}
  </ul>
</div>
{/if}