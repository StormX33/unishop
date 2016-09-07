{if count($categories) > 0}
<ul class="sidebar__inner_list">
  {foreach $categories as $category}  
      {foreach $category[key($category)] as $item}
        <!-- Building URL depending on page type: search or brand page -->
        {$loc_url = str_replace('__item__', $item.id, $parent_url)}
        <!-- Building active item -->
        {$loc_active = tpl_encode($CI->input->get('category')) == $item.id ? "search-nav__inner-link--active" : ""}
        <li class="sidebar__inner_item">
          <a class="main__sidebar_link {$loc_active}" href="{shop_url($loc_url)}">{$item.name}<span class="search-nav__inner-count">({$item.count})</span></a>
        </li>
      {/foreach}
  {/foreach}
</ul>
{/if}