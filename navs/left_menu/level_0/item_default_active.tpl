{if $id == 64 && $CI->uri->segment(2) || $id == 68 && $CI->uri->segment(2)}
	<li {if $CI->uri->segment(2) > 0} class="active"{/if}>
		<a href="{$link}" class="{if $wrapper}is-sub{/if}">
        	<span class="text-el">{$title}</span>
    	</a>
    	{$wrapper}
	</li>
	{else:}
	<li class="active">
		<a href="{$link}" class="{if $wrapper}is-sub{/if}">
        	<span class="text-el test">{$title}</span>
    	</a>
    	{$wrapper}
	</li>
{/if}