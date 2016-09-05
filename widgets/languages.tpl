{if count($languages) > 1}
  {$loc_cur_lang = getLanguage(array('id'=>CI::$APP->config->config['cur_lang']))}
  {$loc_cur_lang_url = "/" . $loc_cur_lang.identif . $current_address}
        {foreach $languages as $lang}
          {$loc_page_url = "/" . $lang.identif . $current_address}
            <a class="lang__switch_link {if $loc_cur_lang == $lang} active{/if}" href="{$loc_page_url}">
              <span class="lang__switch_span">{$lang.lang_name}</span>
            </a>
          </li>
        {/foreach}

{/if}