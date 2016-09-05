    {if $loc_main_banner = getBanner('main_banner_big', 'object')}
          {view('xbanners/banners/banner_simple.tpl', [
          'parent_banner' => $loc_main_banner
          ])}
    {/if}

