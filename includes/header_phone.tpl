{if trim(siteinfo('mainphone')) != ""}
	<div class="contacts__tel">
		{$phones = explode("|",siteinfo('mainphone'))}
		{$i=0}
			{foreach $phones as $phone}
				{if $i == 0}
					<a href="tel:+38{str_replace(' ', '',$phone)}" class="phone contacts__link">{mb_substr($phone, 0,4)}<span class="contacts__link_span">{mb_substr($phone, 4)}</span></a><span class="contacts__tel_arrow"></span>
				{/if}
				{if $i == 1}
					<ul class="contacts__content_list">
				{/if}
                {if $i >0}
				<li class="contacts__inner-item">
                	<a href="tel:+38{str_replace(' ', '',$phone)}" class="phone__inner_link"><span class="contacts__inner-span">{$phone}</span></a>
                </li>
                {/if}
				{$i++}
			{/foreach}
		{if $i > 0}
			</ul>
		{/if}
        </div>
        		<div class="contacts__callback">
        <a href="{site_url('callbacks')}" data-modal="callbacks_modal" rel="nofollow" class="callback__link"><i aria-hidden="true" class="fa fa-volume-up"></i><span class="callback__span">{tlang('Callback')}</span></a></div>

{/if}