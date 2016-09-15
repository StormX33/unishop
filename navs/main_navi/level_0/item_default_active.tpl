<li class="nav__item {if $count_item == 2 || $count_item == 5}nav__item-affix{/if} {if $wrapper}nav__item_dropdown{/if}">
	<a class="table-nav__link" href="{$link}">
		<span class="table-nav__link-helper">{$title}</span>
	</a>
	{$wrapper}
</li>