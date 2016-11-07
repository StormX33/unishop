{$required = $required ? "required" : ""}
{$placeholder = $placeholder ? "placeholder=\"". $placeholder ."\"" : ""}
{$label_class = $label_class != "" ? $label_class : "feedback__form_label"}
{$class = $class !="" ? $class : "feedback__form-input"}
<div class="form__field_capcha {$modifier}">
	{if $label}
		<div class="form__label">
			{$label}
			{if $required}<i class="form__require-mark"></i>{/if}
		</div>
	{/if}
    <div class="form__capcha" data-captcha-img>{$cap_image}</div>
	<input class="{$class}" type="{$type}" name="{$name}" value="{$value}" autocomplete="off" {$placeholder} {$required}>
	{if trim(strip_tags($desc)) != ""}
		<div class="form__info form__info--help">{$desc}</div>
	{/if}
	{if get_error($name)}
		<div class="form__info form__info--error">{get_error($name)}</div>
	{/if}
</div>