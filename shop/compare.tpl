      <h1 class="main-title" style="text-align:center">
        {tlang('Product comparasion')}
      </h1>

    {if count($categories) > 0}

      {foreach $categories as $category}
        {$param_names = tpl_category_properties($category.Id)}
        <div class="content__row">

          <section class="frame-content">
            <div class="frame-content__header">
              <h2 class="frame-content__title">
                {$category.Name}
              </h2>
            </div>
            <div class="frame-content__inner">
              {view('shop/includes/compare/compare_products.tpl', [
              'parent_params' => $param_names,
              'parent_products' => $products,
              'parent_category' => $category
              ])}
            </div>
          </section>

        </div>
      {/foreach}

    {else:}
      <div class="content__row">
        <p class="typo">{tlang('You have no items to compare')}</p>
      </div>
    {/if}
