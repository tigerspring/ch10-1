<#assign path="${springMacroRequestContext.getContextPath()}">
<div class="box-header">
    <h3 class="box-title">页面设置数据表</h3>
</div>
<!-- /.box-header -->
<div class="box-body">
    <table id="example1" class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>ID</th>
            <th>页面类型</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>

        </tbody>
        <tfoot>
        <tr>
            <th>ID</th>
            <th>页面类型</th>
            <th>操作</th>
        </tr>
        </tfoot>
    </table>
</div>
<!-- /.box-body -->

<div class="modal fade" id="modal-default">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Default Modal</h4>
            </div>
            <div class="modal-body">
                <p>One fine body&hellip;</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
        <!-- /.modal-content &ndash;&gt;-->
    </div>
    <!-- /.modal-dialog -->
</div>

<script>
    $(function () {
        $('#example1').DataTable({
            'paging'      : true,
            'lengthChange': true,
            'searching'   : true,
            'ordering'    : false,
            'info'        : true,
            'autoWidth'   : false,
            "ajax": {
                "url" : "${path}/pageDesign/list",
                "dataSrc": ""
                },
            "columns": [{ "data": "id" },{ "data": "pageType" }],
            "columnDefs": [ {
                "targets": 2,
                "data": null,
                "defaultContent": "<button type=\"button\" onclick='loadTuijianwei();' class=\"btn btn-default\" data-toggle=\"modal\" data-target=\"#modal-default\">查看页面</button>"
            } ]
            }
        );

    });
    function loadTuijianwei(){
        $.post(
            "${path}/freemarkerCtr/tuijianwei",
            function(data){
                $("#modal-default .modal-body").html(data);
            }
        );
    }
</script>