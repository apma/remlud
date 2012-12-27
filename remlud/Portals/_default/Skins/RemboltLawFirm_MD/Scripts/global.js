//jQuery("#searchPlacer .NormalTextBox").appendTo(".inputholder").addClass("tooltip_search_field");
//jQuery("#searchPlacer a").appendTo(".buttonholder");

(function ($) {
    $(document).ready(function () {

        $('.vidref').click(function () {
            var video = $('.vidref').attr('link');
            $('#videoclick').attr('href', video);
            console.log(video);
            $('#dnn_ContentPane').fadeOut('slow', function () {
                $('#videoclick').fadeIn('slow', function () {
                    $('#vidback').fadeIn();
                    flowplayer("videoclick", "/Portals/_default/Skins/RemboltLawFirm_MD/Scripts/flowplayer/flowplayer-3.2.12.swf");
                });
            });

        });

        
        





    });
})(jQuery);