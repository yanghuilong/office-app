$(document).ready(function () {

    var login = $('#loginform');
    var recover = $('#recoverform');
    var speed = 400;

    $('#to-recover').click(function () {

        $("#loginform").slideUp();
        $("#recoverform").fadeIn();
    });
    $('#to-login').click(function () {

        $("#recoverform").hide();
        $("#loginform").fadeIn();
    });


    /**
     * 提交登录表单
     */
    $("#loginform").validate({
        rules:{
            userName:{
                required:true
            },
            passWord:{
                required:true
            }
        },
        messages: {
            userName: {
                required: "请输入你的名字"
            },
            passWord:{
                required:"请输入你的密码"
            }
        },
        errorClass: "help-inline",
        errorElement: "span",
        highlight:function(element, errorClass, validClass) {
            $(element).parents('.control-group').addClass('error');
        },
        unhighlight: function(element, errorClass, validClass) {
            $(element).parents('.control-group').removeClass('error');
            $(element).parents('.control-group').addClass('success');
        },
        errorPlacement: function(error, element) {
            error.appendTo(element.parents(".main_input_box"));
        },
        submitHandler: function(form)
        {
            $(form).ajaxSubmit({
                success: function(data) { // data 保存提交后返回的数据，一般为 json 数据
                    if (data.status != 200) {
                        // 此处可对 data 作相关处理
                        $.gritter.add({
                            title:	'Message',
                            text:	data.message,
                            sticky: false,
                            time: 1000,
                            speed:500
                        });
                        return
                    }
                    window.location.href = webpath+"/admin/home"
                },
                error: function (error) {
                }
            });
        }
    });

    if ($.browser && $.browser.version.slice(0, 3) < 10) {
        $('input[placeholder]').each(function () {

            var input = $(this);

            $(input).val(input.attr('placeholder'));

            $(input).focus(function () {
                if (input.val() == input.attr('placeholder')) {
                    input.val('');
                }
            });

            $(input).blur(function () {
                if (input.val() == '' || input.val() == input.attr('placeholder')) {
                    input.val(input.attr('placeholder'));
                }
            });
        });
    }
});