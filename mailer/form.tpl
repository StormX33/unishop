    <form action="{site_url('/')}mailer" method="post" class="subscription_form">
        <input type="text" name="user_email" placeholder="Ваш адрес эл.почты" class="subscription__form-input"/>
        <input class="hidden" type="radio" name="add_user_mail" checked="true" value="2"/>
            <input type="submit" value="Подписаться" class="subscription_form-submit"/>

        {form_csrf()}
    </form>
