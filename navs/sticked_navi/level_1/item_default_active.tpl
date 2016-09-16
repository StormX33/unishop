<li class="tree-nav__item tree-nav__item--active" {if $wrapper}data-global-doubletap{/if}>
  <a class="tree-nav__link" href="{$link}">{$title}
    {if $wrapper}
      <i class="tree-nav__arrow tree-nav__arrow--right"><svg class="svg-icon"><use xlink:href="#svg-icon__arrow-right"></use></svg></i>
    {/if}
  </a>
  {$wrapper}
</li>