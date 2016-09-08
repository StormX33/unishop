<div class="frame-crumbs">
    {widget('path')}
</div>
<div class="frame-inside page-text">
    <div class="container">
        <div class="text-left eee">{load_menu('left_menu2')}</div>
            <div class="text-right">
                <h1>{$page.title}</h1>
                <div class="date">
                            <span class="day">{echo date("d", $page.publish_date)} </span>
                            <span class="month">{echo month(date("n", $page.publish_date))} </span>
                            <span class="year">{echo date("Y ", $page.publish_date)}</span>
                 </div>
                 <a  href="{site_url($page['cat_url'])}" class="c_news">{$category.name}</a>
                {$page.full_text}
            </div>

    </div>
</div>