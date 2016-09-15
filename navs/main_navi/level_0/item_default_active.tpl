<li class="nav__item {if $count_item == 2 || $count_item == 5}nav__item-affix{/if} {if $wrapper}nav__item_dropdown{/if}">
	<a class="nav__link {if $wrapper}sf-with-ul{/if}" href="{$link}">
		{$title}{if $wrapper}<span class="nav__span_arrow"></span>{/if}
	</a>
	{$wrapper}
</li>