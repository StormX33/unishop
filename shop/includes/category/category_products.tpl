{if $totalProducts > 0}

  {if $_COOKIE['catalog_view'] == 'snippet'}

    <!-- List, snippet view -->
    {foreach $products as $product}
      <div class="content__row content__row--top-md">
        {view('shop/includes/product/product_snippet.tpl', [
        'model' => $product
        ])}
      </div>
    {/foreach}

  {else:}

    <!-- Table, card view. Default view -->
      <ul id="products__list" class="products__list">
        {foreach $products as $product}
          <li class="products__item">
            {view('shop/includes/product/product_cut.tpl', ['model' => $product])}
          </li>
        {/foreach}
      </ul>
  {/if}

{else:}
  <p class="typo">{tlang('There are no items to display. Please come back later!')}</p>
{/if}

<!-- Category pagination -->
{if $pagination}
  <div class="content__pagination">
    {$pagination}
  </div>
{/if}