{if trim(siteinfo('mainphone')) != ""}
	<div class="contacts__tel">
		{$phones = explode("|",siteinfo('mainphone'))}
		{$i=0}
			{foreach $phones as $phone}
				{if $i == 0}
					<span class="phone">{mb_substr($phone, 0,4)}{mb_substr($phone, 4)}</span><span class="contacts__tel_arrow"></span>
				{/if}
				{if $i == 1}
					<ul class="contacts__content_list">
				{/if}
                {if $i >0}
				<li class="contacts__inner-item">
                	<span class="phone__inner_link"><span class="contacts__inner-span{if $i == 1} lifecell-logo{else:}{if  $i == 2} kievstar-logo{else:} vodafone-logo{/if}{/if}">{$phone}</span></span>
                </li>
                {/if}
				{$i++}
			{/foreach}
		{if $i > 0}
			</ul>
		{/if}
        </div>
        	<div class="contacts__callback">
        <a href="{site_url('callbacks')}?subj=1" data-modal="callbacks_modal" rel="nofollow" class="callback__link"><span class="callback__span">{tlang('Callback')}</span></a></div>

{/if}