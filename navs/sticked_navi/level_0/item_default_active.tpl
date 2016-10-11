<li class="nav__item {if $count_item == 1 || $count_item == 3 || $count_item == 4}{else:}nav__item-affix{/if} {if $wrapper}nav__item_dropdown{/if}">
	<a class="nav__link {if $wrapper}sf-with-ul{/if}" href="{$link}">
		{$title}{if $wrapper}<span class="nav__span_arrow"></span>{/if}
	</a>
	{$wrapper}
</li>