/* adjust to allow disabled items */

$(document).ready(function () {
    var disabledLink = $("ul.sidenavChild li.submenu").not(":has(a)");
    if (disabledLink.length > 0) {
        console.log('hit');
        $(disabledLink).addClass('disabledSidenavChild');
        console.log(disabledLink.text());
    }
    
});