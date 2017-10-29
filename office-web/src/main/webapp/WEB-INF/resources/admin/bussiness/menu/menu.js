(function ($, toastr) {

    $(document).ready(function () {
        var newRowID = null;

        // prepare the data
        var source =
            {
                url: webPath+"/admin/menu/list",
                dataType: "json",
                dataFields: [
                    {name: "Id", type: "number"},
                    {name: "Name", type: "string"},
                    {name: "ParentID", type: "number"},
                    {name: "Population", type: "number"}
                ],
                hierarchy: {
                    keyDataField: {name: 'Id'},
                    parentDataField: {name: 'ParentID'}
                },
                id: 'Id',
                addRow: function (rowID, rowData, position, parentID, commit) {
                    // synchronize with the server - send insert command
                    // call commit with parameter true if the synchronization with the server is successful
                    // and with parameter false if the synchronization failed.
                    // you can pass additional argument to the commit callback which represents the new ID if it is generated from a DB.
                    commit(true);
                    newRowID = rowID;
                },
                updateRow: function (rowID, rowData, commit) {
                    // synchronize with the server - send update command
                    // call commit with parameter true if the synchronization with the server is successful
                    // and with parameter false if the synchronization failed.
                    commit(true);
                },
                deleteRow: function (rowID, commit) {
                    // synchronize with the server - send delete command
                    // call commit with parameter true if the synchronization with the server is successful
                    // and with parameter false if the synchronization failed.
                    commit(true);
                }
            };

        var dataAdapter = new $.jqx.dataAdapter(source, {
            loadComplete: function () {
                debugger
            }
        });

        $("#treeGrid").jqxTreeGrid(
            {
                //width: '100%',
                source: source,
                pageable: true,
                editable: true,
                showToolbar: true,
                altRows: true,
                ready: function () {
                    // called when the DatatreeGrid is loaded.
                },
                pagerButtonsCount: 8,
                toolbarHeight: 35,
                renderToolbar: function (toolBar) {
                    // appends buttons to the status bar.
                    var addButton = $("#addMenuBtn");
                    var editButton = $("#editMenuBtn");
                    var deleteButton = $("#removeMenuBtn");
                    //var cancelButton = $("");
                    //var updateButton = $(buttonTemplate);
                    // container.append(addButton);
                    // container.append(editButton);
                    // container.append(deleteButton);
                    // container.append(cancelButton);
                    // //container.append(updateButton);

                    // toolBar.append(container);
                    addButton.jqxButton({
                        cursor: "pointer",
                        enableDefault: false,
                        disabled: true,
                        height: 25,
                        width: 25
                    });
                    addButton.find('div:first').addClass(toTheme('jqx-icon-plus'));
                    addButton.jqxTooltip({position: 'bottom', content: "Add"});

                    editButton.jqxButton({
                        cursor: "pointer",
                        disabled: true,
                        enableDefault: false,
                        height: 25,
                        width: 25
                    });
                    editButton.find('div:first').addClass(toTheme('jqx-icon-edit'));
                    editButton.jqxTooltip({position: 'bottom', content: "Edit"});

                    deleteButton.jqxButton({
                        cursor: "pointer",
                        disabled: true,
                        enableDefault: false,
                        height: 25,
                        width: 25
                    });
                    deleteButton.jqxTooltip({position: 'bottom', content: "Delete"});


                    cancelButton.jqxButton({
                        cursor: "pointer",
                        disabled: true,
                        enableDefault: false,
                        height: 25,
                        width: 25
                    });
                    cancelButton.jqxTooltip({position: 'bottom', content: "Cancel"});

                    var updateButtons = function (action) {
                        switch (action) {
                            case "Select":
                                addButton.jqxButton({disabled: false});
                                deleteButton.jqxButton({disabled: false});
                                editButton.jqxButton({disabled: false});
                                cancelButton.jqxButton({disabled: true});
                                break;
                            case "Unselect":
                                addButton.jqxButton({disabled: true});
                                deleteButton.jqxButton({disabled: true});
                                editButton.jqxButton({disabled: true});
                                cancelButton.jqxButton({disabled: true});
                                break;
                            case "Edit":
                                addButton.jqxButton({disabled: true});
                                deleteButton.jqxButton({disabled: true});
                                editButton.jqxButton({disabled: true});
                                cancelButton.jqxButton({disabled: false});
                                break;
                            case "End Edit":
                                addButton.jqxButton({disabled: false});
                                deleteButton.jqxButton({disabled: false});
                                editButton.jqxButton({disabled: false});
                                cancelButton.jqxButton({disabled: true});
                                break;

                        }
                    }

                    var rowKey = null;
                    $("#treeGrid").on('rowSelect', function (event) {
                    });
                    $("#treeGrid").on('rowUnselect', function (event) {
                    });
                    $("#treeGrid").on('rowEndEdit', function (event) {
                    });
                    $("#treeGrid").on('rowBeginEdit', function (event) {
                    });
                    addButton.click(function (event) {
                    });

                    cancelButton.click(function (event) {
                        if (!cancelButton.jqxButton('disabled')) {
                            // cancel changes.
                            $("#treeGrid").jqxTreeGrid('endRowEdit', rowKey, true);
                        }
                    });

                    editButton.click(function (event) {
                    });

                    editButton.click(function () {
                    });
                    deleteButton.click(function () {
                        if (!deleteButton.jqxButton('disabled')) {
                            var selection = $("#treeGrid").jqxTreeGrid('getSelection');
                            if (selection.length > 1) {
                                var keys = new Array();
                                for (var i = 0; i < selection.length; i++) {
                                    keys.push($("#treeGrid").jqxTreeGrid('getKey', selection[i]));
                                }
                                $("#treeGrid").jqxTreeGrid('deleteRow', keys);
                            }
                            else {
                                $("#treeGrid").jqxTreeGrid('deleteRow', rowKey);
                            }
                        }
                    });
                },
                columns: [
                    {text: 'Location Name', dataField: "Name", align: 'center', width: '50%'},
                    {text: 'Population', dataField: "Population", align: 'right', cellsAlign: 'right', width: '50%'}
                ]
            });
    })

})(jQuery, toastr)