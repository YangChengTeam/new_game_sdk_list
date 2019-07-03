const { ipcRenderer } = require('electron')
const path = require('path')
const sdk = require('./sdk')
const $ = require("jquery")

sdkinfos = [{
    name: "6071",
    packageName: 'com.yc.test2',
    appNameKey: "app_name",
    path: `.${path.sep}channels${path.sep}gsdk.apk`,
    dir: `.${path.sep}temp${path.sep}gsdk`,
    meta: [
        {
            key: "GROUP_AGENTID",
            value: "1"
        }
    ]
}, {
    name: "九玩",
    packageName: 'com.yc.test',
    appNameKey: "app_name",
    path: `.${path.sep}channels${path.sep}Jiuwansdk.apk`,
    dir: `.${path.sep}temp${path.sep}Jiuwansdk`,
    meta: [
        {
            key: "GROUP_AGENTID",
            value: "6"
        }
    ]
}, {
    name: "多游",
    packageName: 'com.yc.test3',
    appNameKey: "app_name",
    path: `.${path.sep}channels${path.sep}Duoyousdk.apk`,
    dir: `.${path.sep}temp${path.sep}Duoyousdk`,
    meta: [
        {
            key: "GROUP_AGENTID",
            value: "40"
        }
    ]
}
]


$(function () {
    initSdkInfos()

    $(document).on({
        dragleave: function (e) {
            e.preventDefault()
        },
        drop: function (e) {
            e.preventDefault()
        },
        dragenter: function (e) {
            e.preventDefault()
        },
        dragover: function (e) {
            e.preventDefault()
        }
    });


    $(".area").on('drop', async function (e) {
        e.stopPropagation()
        e.preventDefault()
        var files = e.originalEvent.dataTransfer.files
        console.log(e.originalEvent.dataTransfer.files[0])
        if (files[0].type == 'application/vnd.android.package-archive') {
            $(".area").html(files[0].path)
            sdk.gameinfo.path = files[0].path     
        } else {
            alert("请上传apk格式文件")
        }
    })

    var isStarting = false
    $(".start").click(async function () {

        if(isStarting){
            alert("正在打包中...")
            return
        }
        
        if(!sdk.gameinfo.path){
            alert("请选上传一个聚合游戏")
            return
        }

        var isCheckOne = false

        for (var i = 0; i < sdkinfos.length; i++) {
            isStarting = true
            var checked = $(".checkbox").eq(i).prop("checked")
            if (checked) {
                isCheckOne = true
                for (key in sdkinfos[i]) {
                    sdk.sdkinfo[key] = sdkinfos[i][key]
                }
                await sdk.main((msg) => {
                    var html = $(".status-info").html()
                    $(".status-info").html(html + "<br/>" + msg)
                })
            }
        }

        isStarting = false

        if (!isCheckOne) {
            alert("请选择一个渠道")
        }

        sdkinfo.gameinfo.path = ""
    })
})

function template(name) {
    var template = `<div class="item">
    <img class="icon" src="">
    <div class="title">${name}</div>
    <input type="checkbox" class="checkbox" name="sdk"/>
</div>`
return template
}

function initSdkInfos() {
    var html = ""
    sdkinfos.forEach((item, i) => {
        html += template(i + "." + item.name)
    });
    $(".left .list").html(html)
}