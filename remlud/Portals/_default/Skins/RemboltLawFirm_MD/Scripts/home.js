(function ($) {
    $(document).ready(function () {
        jQuery('#slider').nivoSlider({
            effect: 'fade', // Specify sets like: 'fold,fade,sliceDown'
            animSpeed: 500, // Slide transition speed
            pauseTime: 6000, // How long each slide will show
            startSlide: 0, // Set starting Slide (0 index)
            directionNav: true, // Next & Prev navigation
            directionNavHide: true, // Only show on hover
            controlNav: true, // 1,2,3... navigation
            controlNavThumbs: false, // Use thumbnails for Control Nav
            controlNavThumbsFromRel: false, // Use image rel for thumbs
            controlNavThumbsSearch: '.jpg', // Replace this with...
            controlNavThumbsReplace: '_thumb.jpg', // ...this in thumb Image src
            keyboardNav: true, // Use left & right arrows
            pauseOnHover: false, // Stop animation while hovering
            manualAdvance: false, // Force manual transitions
            captionOpacity: 0.8, // Universal caption opacity
            prevText: '<img class="nivoarrowleft" src="/Portals/_default/Skins/RemboltLawFirm_MD/Images/slider-arrow-left-normal-state.png" />', // Prev directionNav text
            nextText: '<img class="nivoarrowright" src="/Portals/_default/Skins/RemboltLawFirm_MD/Images/slider-arrow-right-normal-state.png" />' // Next directionNav text
        });


        //HACK
        //Fix DNN 6.2 Journal bug ignoring item limit
        var count = 0;
        $('#journalItems .journalrow').each(function () {
            count++;
            if (count > 4) {
                $(this).hide();
            }
        });


    });
})(jQuery);
//jQuery(window).load(function() {
//    jQuery('#slider').nivoSlider({
//        effect: 'fade', // Specify sets like: 'fold,fade,sliceDown'
//        animSpeed: 500, // Slide transition speed
//        pauseTime: 6000, // How long each slide will show
//        startSlide: 0, // Set starting Slide (0 index)
//        directionNav: true, // Next & Prev navigation
//        directionNavHide: true, // Only show on hover
//        controlNav: false, // 1,2,3... navigation
//        controlNavThumbs: false, // Use thumbnails for Control Nav
//        controlNavThumbsFromRel: false, // Use image rel for thumbs
//        controlNavThumbsSearch: '.jpg', // Replace this with...
//        controlNavThumbsReplace: '_thumb.jpg', // ...this in thumb Image src
//        keyboardNav: true, // Use left & right arrows
//        pauseOnHover: false, // Stop animation while hovering
//        manualAdvance: false, // Force manual transitions
//        captionOpacity: 0.8, // Universal caption opacity
//        prevText: '<img class="nivoarrowleft" src="/Portals/_default/Skins/RemboltLawFirm_MD/Images/slider-arrow-left-normal-state.png" />', // Prev directionNav text
//        nextText: '<img class="nivoarrowright" src="/Portals/_default/Skins/RemboltLawFirm_MD/Images/slider-arrow-right-normal-state.png" />' // Next directionNav text
//    });
//});