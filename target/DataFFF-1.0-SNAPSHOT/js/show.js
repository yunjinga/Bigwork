$(function() {
    var uploadsubmenu = '<div id="upload_sub" style="width:100px;">'+
        '<div id="download_templ"><span class="exportDownload"></span>模板下载</div>'+
        '<h1 class="excel-line" id="line1"></h1>'+
        '<div id="import_data"><span class="exportData"></span>导入数据</div>'+
        '</div>';
    if($("#upload_sub").length<1){
        $("body").append(uploadsubmenu);
    }

    //将导入设为菜单按钮
    var importMenu = $('#import').menubutton({
        menu: "#upload_sub",
        iconCls:"icon-import"
    });

    //为子菜单添加点击事件
    $(importMenu.menubutton('options').menu).menu({
        onClick: function (item) {
            if(item.id == 'download_templ'){
                var resouseCode = $('#import').attr('resouseCode');
                var suffix = $('#import').attr('suffix');
                loadTemplate(resouseCode, suffix);
            }
            if(item.id == 'import_data'){
                var importurl = $('#import').attr('importurl');
                var callback = $('#import').attr('callback');
                var resouseCode = $('#import').attr('resouseCode');
                makerUpload(importurl, callback, resouseCode);
            }
        }
    });
});

/**
 * 模板下载
 */
function loadTemplate(resouseCode, suffix) {
    //文件名+后缀名
    var fileName = resouseCode + '.' + suffix

    var templatediv = '<div id="templatediv" style="width:400px;height:200px;">'+
        '</div>';
    if (window.top.$('#templatediv').length == 0) {
        window.top.$("body").append(templatediv);
    }
    var templistspan = "";
    templistspan +='<div class="download-list">'
    templistspan += '<span><a id="downloadBtn" href="file/fileHandle/downloadtemplate.do?fileName='+encodeURI(encodeURI( fileName))+'">'+fileName+'</a></span>'
    templistspan +='</div>';
    window.top.$("#templatediv").html(templistspan);
    //弹出下载模板
    window.top.$("#templatediv").dialog({
        title:"下载模板",
        modal:true
    });

    //下载模板完了就关闭对话框
    window.top.$("#downloadBtn").click(function() {
        window.top.$("#templatediv").dialog('close');
    });
}

/**
 * 上传导入
 */
function makerUpload(importurl, callback, resouseCode) {
    console.log('弹出导入对话框。。');

    //用户详情对话框
    var importWindow = window.top.$('#importWin');
    if(importWindow.length <= 0) {
        importWindow = window.top.$("<div id='importWin'/>").appendTo(window.top.document.body);
    }
    importWindow.window({
        title:'导入',
        closed: false,
        closable: true,
        draggable: true,
        resizable: true,
        width: 500,
        height: 350,
        modal: true,
        href: 'sys/redirect/redirectHomePage.do?path=import&callback=' + callback + '&resouseCode=' + resouseCode + '&importurl=' + importurl,
        onClose: function() {
            importWindow.window("destroy");
        }
    });
}

// document.getElementById('zhezhao').style.display="none";
// function dianwo(){
//     document.getElementById('zhezhao').style.display="";
// }
// function hidder(){
//     document.getElementById('zhezhao').style.display="none";
// }

