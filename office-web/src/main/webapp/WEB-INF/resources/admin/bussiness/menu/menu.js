(function ($, toastr) {

    $(document).ready(function () {
        //初始化菜单数据

        var data = []
        var $tree = $('#tree').treeview({
            color: "#428bca",
            expandIcon: 'glyphicon glyphicon-chevron-right',
            collapseIcon: 'glyphicon glyphicon-chevron-down',
            nodeIcon: 'glyphicon glyphicon-bookmark',
            data: data
        });

        $("#addMenuBtn").on("click", function (event) {
            // 获取选中的节点
            var selectedNode = $tree.treeview("getSelected");
            if (selectedNode.length == 0) {
                toastr.info("请选择一条记录!")
                return
            }
            var newNodes = {
                "text": "自定义"
            }
            $tree.treeview('addNode',[ newNodes, selectedNode]);
        })
    })

})(jQuery,toastr)