<div class="col-md-3 col-hidden-mb">
	<div class="footer__info_block">
		<h3 class="footer__info_block-title">Новости </h3>
		<div class="subscription">
            {echo $CI->load->module('mailer')->getForm ()}
			<div class="subscription__text">Получайте обновления любимого магазина или товара </div>
		</div>
	</div>
	<div class="footer__socials">
		<h3 class="footer__info_block-title">Будьте на связи </h3>
		{if trim(siteinfo('vk-link')) != ""}
			<div class="socials__item_vk">
            	<a class="socials__link" href="{siteinfo('vk-link')}" target="_blank"><div class="socials__icon"></div></a>
            </div>
		{/if}
		{if trim(siteinfo('fb-link')) != ""}
			<div class="socials__item_fb">
            	<a class="socials__link" href="{siteinfo('fb-link')}" target="_blank"><div class="socials__icon"></div></a>
            </div>
		{/if}
		{if trim(siteinfo('google-link')) != ""}
			<div class="socials__item_ge"><a class="socials__link" href="{siteinfo('google-link')}" target="_blank"><div class="socials__icon"></div></a>
         </div>
		{/if}
	</div>
</div>
<div class="col-md-9 col-footer-mob">
	<div class="page__footer_menu">
		<ul class="footer__menu_list">
			<li class="footer__menu_item">
				<h3 class="footer__title">{tlang('Conditions')}</h3>
				{load_menu('footer_cond')}
			</li>
			<li class="footer__menu_item">
				<h3 class="footer__title">{tlang('Store')}</h3>
				{load_menu('info_footer')}
			</li>
			<li class="footer__menu_item">
				<h3 class="footer__title">{tlang('User menu')}</h3>
				{view('includes/footer_profile.tpl')}
			</li>
			<li class="footer__menu_item">
				<h3 class="footer__title">{tlang('Contacts')}</h3>
					<ul class="footer__list">
						{if trim(siteinfo('mainphone')) != ""}
							{$phones = explode("|",siteinfo('mainphone'))}
							{foreach $phones as $phone}
								<li class="footer__item"><span>{$phone}</span></li>
							{/foreach}
						{/if}
						{if trim(siteinfo('adminemail')) != ""}
							<li class="footer__item"><span>{siteinfo('adminemail')}</span></li>
	        			{/if}
	        			<li class="footer__item">
	        				<a class="footer__item_link" href="{site_url('feedback')}" data-modal="feedback_modal" rel="nofollow"> {tlang('Feedback')} </a>
	        			</li>
	      			</ul>
			</li>
			<li class="studio__copyright-xs visible-xs-inline-block">
				<div class="studio__copyright">
				<div class="copyright_text">
					{if trim(siteinfo('companytype')) != ""}
						{siteinfo('companytype')}
					{/if}
				</div>
				<span class="studio__copyright_span">Разработано в <a href="http://spoonstudio.com.ua/" target="_blank" class="studio__link">SpoonStudio</a></span> 
				</div>
			</li>
		</ul>
		<div class="studio__copyright hidden-xs">
			<div class="copyright_text">
            {if trim(siteinfo('companytype')) != ""}
            {siteinfo('companytype')}
            {/if}</div>
			<span class="studio__copyright_span">Разработано в <a href="http://spoonstudio.com.ua/" target="_blank" class="studio__link">SpoonStudio</a></span> 
		</div><!-- studio__copyright -->
	</div>
</div>