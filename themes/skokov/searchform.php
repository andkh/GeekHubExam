<form name="search" action="<?php echo home_url( '/' ) ?>" method="get" class="search-form">
    <div class="wrap-form">
        <input type="text" value="<?php echo get_search_query() ?>" name="s" placeholder="<?php echo __('Search ...');
        ?>" id="text" class="search-field"/>
        <button type="submit" class="search-button">search</button>
    </div>
</form>