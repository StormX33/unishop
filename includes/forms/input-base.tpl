{$required = $required ? "required" : ""}
{$placeholder = $placeholder ? "placeholder=\"". $placeholder ."\"" : ""}
{$label_class = $label_class != "" ? $label_class : "feedback__form_label"}
{$class = $class !="" ? $class : "feedback__form-input"}
<label class="{$label_class}" {if $label_place == 'outer'}for="{$name}">{echo $label}</label>{else:}>{/if}
<input class="{$class}" type="{$type}" name="{$name}" value="{$value}" {$placeholder} {$required}>
{if trim(strip_tags($desc)) != ""}
	<div class="form__info form__info--help">{$desc}</div>
{/if}
{if get_error($name)}
	<div class="form__info form__info--error">{get_error($name)}</div>
{/if}
{if $label_place != 'outer'}
	</label>
{/if}

