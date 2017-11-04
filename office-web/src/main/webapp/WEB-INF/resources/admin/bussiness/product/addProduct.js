(function ($) {
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
})(jQuery)