const { ipcRenderer } = require('electron')
const path = require('path')
const sdk = require('./sdk')
const $ = require("jquery")

sdkinfos = [{
    name: "6071",
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
    packageName: 'jiuwan',
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
    packageName: 'duoyou',
    path: `.${path.sep}channels${path.sep}Duoyousdk.apk`,
    dir: `.${path.sep}temp${path.sep}Duoyousdk`,
    meta: [
        {
            key: "GROUP_AGENTID",
            value: "40"
        }
    ]
},
{
    name: "乐其",
    packageName: 'leqi',
    path: `.${path.sep}channels${path.sep}leqi.apk`,
    dir: `.${path.sep}temp${path.sep}leqi`,
    meta: [
        {
            key: "GROUP_AGENTID",
            value: "42"
        }
    ]
},
{
    name: "遥望",
    packageName: 'yod',
    path: `.${path.sep}channels${path.sep}yaowan.apk`,
    dir: `.${path.sep}temp${path.sep}yaowan`,
    meta: [
        {
            key: "GROUP_AGENTID",
            value: "41"
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

        if (isStarting) {
            alert("正在打包中...")
            return
        }

        if (!sdk.gameinfo.path) {
            alert("请选拖上传一个聚合游戏")
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
    })

    var index = -1
    $(".edit").click(function () {
        index = $(".edit").index($(this))
        load()
    })

    function load() {
        $(".package-name").val(sdkinfos[index]["packageName"])
        $(".name").val(sdkinfos[index]["name"])
        if (sdkinfos[index]["appName"]) {
            $(".app-name").val(sdkinfos[index]["appName"])
        } else {
            $(".app-name").val("")
        }
        if (sdkinfos[index]["extra"]) {
            $(".extra").val(JSON.stringify(sdkinfos[index]["extra"]))
        } else {
            $(".extra").val("")
        }
        if (sdkinfos[index]["meta"]) {
            $(".meta").val(JSON.stringify(sdkinfos[index]["meta"]))
        } else {
            $(".meta").val("")
        }
        $(".channels").show(1000)
    }

    $('.config-file').change(function () {
        try {
            var data = require('fs').readFileSync(this.files[0].path, "utf-8")
            data = JSON.parse(data)
            data.forEach((item, i) => {
                if (item["appName"]) {
                    sdkinfos[i]["appName"] = item["appName"]
                }
                if (item["extra"]) {
                    sdkinfos[i]["extra"] = item["extra"]
                }
                if (item["meta"]) {
                    item["meta"].forEach(meta => {
                        var exist = false
                        sdkinfos[i]["meta"].forEach(info => {
                            if (meta.key == info.key) {
                                exist = true
                            }
                        })
                        if (!exist) {
                            sdkinfos[i]["meta"].push(meta)
                        } else {
                            sdkinfos[i]["meta"]["key"] = meta.value
                        }
                    })
                }
            })
            if (index != -1) {
                load()
            }
            alert("载入成功")
        } catch (e) {
            alert("载入失败->" + e)
        }
    });

    $(".submit").click(function () {
        sdkinfos[index]["packageName"] = $(".package-name").val()
        sdkinfos[index]["appName"] = $(".app-name").val()
        try {
            var extra = $(".extra").val()
            if (extra) {
                sdkinfos[index]["extra"] = JSON.parse(extra)
            }
            alert("编辑成功")
        } catch (e) {
            console.log('图片替换信息有误')
        }
    })

    $(".clear").click(function () {
        $(".status-info").html("")
    })

    $(".hide").click(function () {
        $(".channels").hide(1000)
    })
})

function template(name) {
    var template = `<div class="item">
    <img class="icon" src="">
    <div class="title">${name}</div>
    <input type="checkbox" class="checkbox" name="sdk"/>
    <b class="edit" style="font-size:12px;padding-left:70px;">编辑</b>
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