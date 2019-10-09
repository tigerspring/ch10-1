<div class="box box-primary">
    <#--<div class="box-header with-border">
        <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
        </div>
        <!-- /.box-tools &ndash;&gt;
    </div>-->
    <div class="box-body">
        <div class="input-group">

        </div>
        <div class="input-group">
            <div class="input-group-btn">
                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">请选择...
                    <span class="fa fa-caret-down"></span></button>
                <ul class="dropdown-menu">
                    <li><a onclick="setSelectedTxt(this)" materialType="-1">请选择...</a></li>
                    <li><a onclick="setSelectedTxt(this)" materialType="0">手动设置</a></li>
                    <li><a onclick="setSelectedTxt(this)" materialType="1">单张图片</a></li>
                    <li><a onclick="setSelectedTxt(this)" materialType="2">单个视频</a></li>
                    <li><a onclick="setSelectedTxt(this)" materialType="3">图片组照</a></li>
                    <li><a onclick="setSelectedTxt(this)" materialType="4">视频组照</a></li>
                </ul>
            </div>
            <!-- /btn-group -->
            <input type="text" class="form-control">
            <span class="input-group-btn">
          <button type="button" class="btn btn-primary btn-flat">智能匹配</button>
        </span>
        </div>
        <div class="input-group">
            <div class="input-group-btn">
                <button type="button" class="btn btn-default">标题</button>
            </div>
            <input name="title" type="text" class="form-control">
        </div>
        <div class="input-group">
            <div class="input-group-btn">
                <button type="button" class="btn btn-default">链接</button>
            </div>
            <input name="link" type="text" class="form-control">
        </div>
        <div class="input-group">
            <div class="input-group-btn">
                <button type="button" class="btn btn-default">文案</button>
            </div>
            <input name="word" type="text" class="form-control">
        </div>
    </div>
</div>
<script language="JavaScript">
    function setSelectedTxt(obj){
        var txt = $(obj).text();
        $(".btn.btn-primary.dropdown-toggle").html(txt+'<span class="fa fa-caret-down"></span>');
     }
</script>
