<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<input type="file" id="uploadImage" name="uploadImage"  accept="image/*" multiple>
<script src="https://cdn.bootcss.com/bootstrap-fileinput/4.4.5/js/fileinput.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap-fileinput/4.4.5/js/plugins/piexif.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap-fileinput/4.4.5/js/plugins/purify.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap-fileinput/4.4.5/js/plugins/sortable.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap-fileinput/4.4.5/js/locales/zh.min.js"></script>
<script>
    // 动态添加 bootstrap inputfile css 样式
    var header = document.getElementsByTagName("head")
    var link=document.createElement("link");
    link.setAttribute("href","https://cdn.bootcss.com/bootstrap-fileinput/4.4.5/css/fileinput.min.css");
    link.setAttribute("rel","stylesheet")
    link.setAttribute("media","all")
    if (header) {
        header[0].appendChild(link)
    }
    $(document).ready(function () {
        // 定义bootstrap input file Footer 底部模板
        $("#uploadImage").fileinput({
            autoReplace: true,
            maxFileCount: 5,
            allowedFileExtensions: ["jpg", "png", "gif"]
        });
    })
</script>