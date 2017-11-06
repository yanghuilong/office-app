(function ($, WebUploader) {
    $(document).ready(function () {
        // 初始化选中 特价特价商品
        $("input[name='isSpecial'][value = '0']").attr({checked: 'checked'})
        $("label[for='productSpecialPrice']").parent().hide()
        // 如果点击特价 按钮 显示特价价格输入框
        $("input[name='isSpecial']").on('change',function (event) {
            if (event.target.value == 1) {
                $("label[for='productSpecialPrice']").parent().show()
            } else {
                $("label[for='productSpecialPrice']").parent().hide()
            }
        })

    })



    var uploader = WebUploader.create({
        auto: true, // 选完文件后，是否自动上传
        swf: webPath+'/res/admin/vendor/webuploader/Uploader.swf', // swf文件路径
        server: 'upload.php', // 文件接收服务端
        pick: '#imgPicker', // 选择文件的按钮。可选
        // 只允许选择图片文件。
        accept: {
            title: 'Images',
            extensions: 'gif,jpg,jpeg,bmp,png',
            mimeTypes: 'image/*'
        }
    });
})(jQuery, WebUploader)