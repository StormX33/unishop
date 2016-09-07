<ul class="description_list">
	{foreach $items as $item}
		<li class="description_item">
			<div>{$item.Name}</div>
			<div>{$item.Value}</div>
		</li>
	{/foreach}
</ul>