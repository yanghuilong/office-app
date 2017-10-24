var utils = (function ($) {
    var utils = {
        msg: function (msg) {
            $.gritter.add({
                title:	'信息',
                text:	msg,
                sticky: false,
                time: 1000,
                speed:500
            });
        }
    }
    return utils;
})(jQuery)