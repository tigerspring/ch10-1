<#assign path="${springMacroRequestContext.getContextPath()}">
<!-- DataTables -->
<link rel="stylesheet" href="${path}/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
<div class="box">

</div>
<!-- DataTables -->
<script src="${path}/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="${path}/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="${path}/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>

<script language="JavaScript">
    $(function () {
        $.post("${path}/freemarkerCtr/pageTypeList"
                ,function (data) {
                    $(".box").html(data);
                }
        )
    })
</script>
