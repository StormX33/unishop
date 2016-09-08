<div class="frame-crumbs">
    {widget('path')}
</div>
<div class="frame-inside page-text">

    <div class="container">
        <div class="text-left" >{load_menu('left_menu')}</div>
            <div class="text-right"  itemscope itemtype="http://schema.org/NewsArticle">
            <meta itemscope itemprop="mainEntityOfPage" itemType="https://schema.org/WebPage" itemid="https://google.com/article"/>
<span itemprop="author" itemscope itemtype="https://schema.org/Person">
<meta itemprop="name" content="Teplo.ua">
</span>
<span itemprop="publisher" itemscope itemtype="https://schema.org/Organization">
<meta itemprop="name" content="TeploUA">
<span itemprop="logo" itemscope itemtype="https://schema.org/ImageObject">
            <meta itemprop="url" content="{echo site_url(siteinfo('siteinfo_logo_url'))}">
      <meta itemprop="width" content="181">
      <meta itemprop="height" content="57">
            </span>           
</span>
                <h1 itemprop="headline">{$page.title}</h1>
                <div class="date">
                <meta itemprop="datePublished" content="{echo date("Y-n-d", $page.publish_date)}"/>
                <meta itemprop="dateModified" content="{echo date("Y-n-d", $page.updated)}"/>
                            <span class="day">{echo date("d", $page.publish_date)} </span>
                            <span class="month">{echo month(date("n", $page.publish_date))} </span>
                            <span class="year">{echo date("Y ", $page.publish_date)}</span>
                 </div>
                 <a  href="{site_url($page['cat_url'])}" class="c_news">{$category.name}</a>
                 {image_text_replace($page.full_text)}
            </div>

    </div>
</div>