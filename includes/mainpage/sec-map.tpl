<section class="map">
    <div class="map__content">
        <div style="position:relative;z-index:30;">
            <div id="overlay__div" style="width:100%;height:600px; position:absolute; z-index:20;" class="overlay__div"></div>
            <div style="position:relative; z-index:10;">
              <div id="map" style="width:100%;height:600px;"></div>
            </div>
        </div>
    </div>
    <div class="container">
    	{view ('callbacks/callback.tpl')}
    </div>
</section>
