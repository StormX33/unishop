<div class="table-responsive">
	<table class="table order__table" cellspacing="0">
		<tbody>
        	<!-- Order id number -->
			<tr>
            	<td>{tlang('Order ID')}</td>
                <td>{echo $model->getId()}</td>
            </tr>
        	<!-- Order status -->
			<tr>
            	<td>{tlang('Order status')}</td>
                <td>{echo $model->getSOrderStatuses()->setLocale(MY_Controller::getCurrentLocale())->getName()}</td>
            </tr>
        	<!-- Order date -->
			<tr>
            	<td>{tlang('Order date')}</td>
                <td>{tpl_locale_date('d F Y', $model->getDateCreated())}</td>
            </tr>
        	<!-- User name  -->
            {if $model->getUserFullName()}
			<tr>
            	<td>{tlang('Name')}</td>
                <td>{echo $model->getUserFullName()}</td>
            </tr>
            {/if}
        	<!-- User phone number -->
            {if $model->getUserPhone()}        	
			<tr>
            	<td>{tlang('Phone number')}</td>
                <td>{echo $model->getUserPhone()}</td>
            </tr>
            {/if}
			<!-- User email -->
            {if $model->getUserEmail()}
			<tr>
            	<td>{tlang('E-mail')}</td>
                <td>{echo $model->getUserEmail()}</td>
            </tr>
            {/if}
        	<!-- User shipping address -->
      		{if $model->getUserDeliverTo()}
			<tr>
            	<td>{tlang('Shipping address')}</td>
                <td>{echo $model->getUserDeliverTo()}</td>
            </tr>
            {/if}
        	<!-- Shipping method -->
      		{if $model->getSDeliveryMethods()}
			<tr>
            	<td>{tlang('Shipping method')}</td>
                <td>{echo $model->getSDeliveryMethods()->getName()}</td>
            </tr>
            {/if}
			{if $paymentMethod}
			<!-- Payment method -->
			<tr>
            	<td>{tlang('Payment method')}</td>
                <td>{echo $paymentMethod->getName()}</td>
            </tr>
            {/if}
        	 <!-- Payment status -->
			<tr>
            	<td>{tlang('Payment status')}</td>
                <td>{echo $model->getPaid() ? tlang('Paid successfully') : tlang('Not paid')}</td>
            </tr>
        	{if $paymentMethod and !$model->getPaid() and $paymentMethod->getPaymentSystemName()}
			<tr>
            	<td></td>
                <td>{echo $paymentMethod->getPaymentForm($model)}</td>
            </tr>
            {/if}
        	{foreach ShopCore::app()->CustomFieldsHelper->getCustomFielsdAsArray('order', $model->getId()) as $item}
            	{if $item.field_data}
				<tr>
            		<td>{$item.field_label}</td>
                    {if $item.field_type_id == 3}
						<td><a class="btn btn--va-m btn-default btn-xs" href="{media_url($item.field_data)}" target="_blank"><span>{tlang('Download')}</span>
            				</a>
                        </td>
                    {else:}
            			<td>{nl2br($item.field_data)}</td>
          			{/if}
            	</tr>
                {/if}
        	{/foreach}
            {if $model->getUserComment()}
			<tr>
            	<td>{tlang('Comments about your order')}</td>
                <td>{echo nl2br($model->getUserComment())}</td>
            </tr>
			{/if}
		</tbody>
	</table><!-- /.order-details -->
</div><!-- /.content__row -->