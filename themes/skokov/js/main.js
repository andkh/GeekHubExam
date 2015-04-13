jQuery(function ($) {

//region ===== Masonry init =====
var $container = $('#our-post-masonry');
// initialize
$container.masonry({
    columnWidth: 1,
    itemSelector: '.masonry-item',
    isFitWidth: true
});
//endregion

});