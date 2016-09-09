{$required = $required ? "required" : ""}
{$placeholder = $placeholder ? "placeholder=\"". $placeholder ."\"" : ""}

<label class="feedback__form_label">
    <textarea class="feedback__form-input" name="{$name}" rows="{$rows}" placeholder="{$label}" {$placeholder} {$required}>{$value}</textarea>
    {if trim(strip_tags($desc)) != ""}
    	<div class="form__info form__info--help">{$desc}</div>
    {/if}
    {if get_error($name)}
    	<div class="form__info form__info--error">{get_error($name)}</div>
    {/if}
</label>