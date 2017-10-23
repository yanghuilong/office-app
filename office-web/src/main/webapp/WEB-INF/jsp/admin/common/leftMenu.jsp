<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/10/23
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="sidebar">
    <a href="${pageContext.request.contextPath}/admin/home?menu=home" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
    <ul>
        <li class="home"><a href="${pageContext.request.contextPath}/admin/home?menu=home"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
        <li class="submenu product"> <a href="#"><i class="icon icon-info-sign"></i> <span>产品管理</span></a>
            <ul>
                <li><a href="${pageContext.request.contextPath}/admin/to/product?menu=product">新增产品</a></li>
                <li><a>产品列表</a></li>
            </ul>
        </li>
        <li> <a href="charts.html"><i class="icon icon-signal"></i> <span>Charts &amp; graphs</span></a> </li>
        <li> <a href="widgets.html"><i class="icon icon-inbox"></i> <span>Widgets</span></a> </li>
        <li><a href="tables.html"><i class="icon icon-th"></i> <span>Tables</span></a></li>
        <li><a href="grid.html"><i class="icon icon-fullscreen"></i> <span>Full width</span></a></li>
        <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Forms</span> <span class="label label-important">3</span></a>
            <ul>
                <li><a href="form-common.html">Basic Form</a></li>
                <li><a href="form-validation.html">Form with Validation</a></li>
                <li><a href="form-wizard.html">Form with Wizard</a></li>
            </ul>
        </li>
        <li><a href="buttons.html"><i class="icon icon-tint"></i> <span>Buttons &amp; icons</span></a></li>
        <li><a href="interface.html"><i class="icon icon-pencil"></i> <span>Eelements</span></a></li>
        <li class="submenu"> <a href="#"><i class="icon icon-file"></i> <span>Addons</span> <span class="label label-important">5</span></a>
            <ul>
                <li><a href="index2.html">Dashboard2</a></li>
                <li><a href="gallery.html">Gallery</a></li>
                <li><a href="calendar.html">Calendar</a></li>
                <li><a href="invoice.html">Invoice</a></li>
                <li><a href="chat.html">Chat option</a></li>
            </ul>
        </li>
        <li class="submenu"> <a href="#"><i class="icon icon-info-sign"></i> <span>Error</span> <span class="label label-important">4</span></a>
            <ul>
                <li><a href="error403.html">Error 403</a></li>
                <li><a href="error404.html">Error 404</a></li>
                <li><a href="error405.html">Error 405</a></li>
                <li><a href="error500.html">Error 500</a></li>
            </ul>
        </li>
        <li class="content"> <span>Monthly Bandwidth Transfer</span>
            <div class="progress progress-mini progress-danger active progress-striped">
                <div style="width: 77%;" class="bar"></div>
            </div>
            <span class="percent">77%</span>
            <div class="stat">21419.94 / 14000 MB</div>
        </li>
        <li class="content"> <span>Disk Space Usage</span>
            <div class="progress progress-mini active progress-striped">
                <div style="width: 87%;" class="bar"></div>
            </div>
            <span class="percent">87%</span>
            <div class="stat">604.44 / 4000 MB</div>
        </li>
    </ul>
</div>
<script>
    var menuType = '${menu}';
    function fix_position()
    {
        var uwidth = $('#user-nav > ul').width();
        $('#user-nav > ul').css({width:uwidth,'margin-left':'-' + uwidth / 2 + 'px'});

        var cwidth = $('#content-header .btn-group').width();
        $('#content-header .btn-group').css({width:cwidth,'margin-left':'-' + uwidth / 2 + 'px'});
    }
    $(document).ready(function () {
        $('.submenu > a').on('click',function(e)
        {
            e.preventDefault();
            var submenu = $(this).siblings('ul');
            var li = $(this).parents('li');
            var submenus = $('#sidebar li.submenu ul');
            var submenus_parents = $('#sidebar li.submenu');
            if(li.hasClass('open'))
            {
                if(($(window).width() > 768) || ($(window).width() < 479)) {
                    submenu.slideUp();
                } else {
                    submenu.fadeOut(250);
                }
                li.removeClass('open');
            } else
            {
                if(($(window).width() > 768) || ($(window).width() < 479)) {
                    submenus.slideUp();
                    submenu.slideDown();
                } else {
                    submenus.fadeOut(250);
                    submenu.fadeIn(250);
                }
                submenus_parents.removeClass('open');
                li.addClass('open');
            }
        });

        var ul = $('#sidebar > ul');

        // ul  高亮显示
        $.each(ul.find("li"),function (i,d) {
            if ($(d).hasClass("active")) {
                $(d).removeClass("active")
            }
        })
        $("."+menuType).addClass("active")


        $('#sidebar > a').click(function(e)
        {
            e.preventDefault();
            var sidebar = $('#sidebar');
            if(sidebar.hasClass('open'))
            {
                sidebar.removeClass('open');
                ul.slideUp(250);
            } else
            {
                sidebar.addClass('open');
                ul.slideDown(250);
            }
        });

        $(window).resize(function()
        {
            if($(window).width() > 479)
            {
                ul.css({'display':'block'});
                $('#content-header .btn-group').css({width:'auto'});
            }
            if($(window).width() < 479)
            {
                ul.css({'display':'none'});
                fix_position();
            }
            if($(window).width() > 768)
            {
                $('#user-nav > ul').css({width:'auto',margin:'0'});
                $('#content-header .btn-group').css({width:'auto'});
            }
        });

        if($(window).width() < 468)
        {
            ul.css({'display':'none'});
            fix_position();
        }
        if($(window).width() > 479)
        {
            $('#content-header .btn-group').css({width:'auto'});
            ul.css({'display':'block'});
        }
    })
</script>