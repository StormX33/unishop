{$required = $required ? "required" : ""}
{$placeholder = $placeholder ? "placeholder=\"". $placeholder ."\"" : ""}

    <label class="feedback__form_label">
    <input class="feedback__form-input" type="{$type}" {if $label} placeholder="{$label}" {/if} name="{$name}" value="{$value}" {$placeholder} {$required}>
    {if trim(strip_tags($desc)) != ""}
    	<div class="form__info form__info--help">{$desc}</div>
    {/if}
    {if get_error($name)}
    	<div class="form__info form__info--error">{get_error($name)}</div>
    {/if}
    </label>

