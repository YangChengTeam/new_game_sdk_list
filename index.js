const { remote, ipcRenderer, shell } = require('electron')
const exec = require('child-process-promise').exec

const $ = require("jquery")

var sdkinfos = []
var packages = []
var isStarting = false
var isDragGame = false
var isDecodeGame = false

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
            ipcRenderer.send("gameinfo", files[0].path)
            isDragGame = true
            isDecodeGame = true
        } else {
            alert("请上传apk格式文件")
        }
    })


    $(".start").click(async function () {

        if (isStarting) {
            alert("正在打包中...")
            return
        }

        if (!isDragGame) {
            alert("请选拖上传一个聚合游戏")
            return
        }

        if(isDecodeGame){
            alert("游戏编绎中, 请稍后...")
            return
        }

        for (var i = 0; i < sdkinfos.length; i++) {
            var checked = $(".checkbox").eq(i).prop("checked")
            if (checked) {
                packages.push(sdkinfos[i])
            }
        }

        if (packages.length == 0) {
            alert("请选择一个渠道")
        } else {
            isStarting = true
            ipcRenderer.send("packages", packages)
        }
    })

    ipcRenderer.on('msg', (event, msg) => {
        var html = $(".status-info").html()
        $(".status-info").html(html + "<br/>" + msg)
        $(".status-info").animate({
            scrollTop: $(".status-info").offset().top
        }, 200);
    })

    ipcRenderer.on('game_package', (event, msg) => {
        isDecodeGame = false
        var html = $(".status-info").html()
        $(".status-info").html(html + "<br/>" + "I:" + msg)
        $(".status-info").animate({
            scrollTop: $(".status-info").offset().top
        }, 200);
        alert(msg)
    })

    ipcRenderer.on('caches', (event, msg) => {
        var html = $(".status-info").html()
        $(".status-info").html(html + "<br/>" + "I:" + msg)
        $(".status-info").animate({
            scrollTop: $(".status-info").offset().top
        }, 200);
        alert(msg)
    })


    ipcRenderer.on('end', (event, arg) => {
        isStarting = false
        delete packages
        packages = []
        alert("打包完成")
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
        if (sdkinfos[index]["keyinfo"]) {
            $(".keyinfo").val(JSON.stringify(sdkinfos[index]["keyinfo"]))
            $(".keyinfo").parent().show()
        } else {
            $(".keyinfo").val("")
            $(".keyinfo").parent().hide()
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
                if (item["keyinfo"]) {
                    sdkinfos[i]["keyinfo"] = item["keyinfo"]
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

    $(".select-all").click(function () {
        $(".checkbox").prop("checked", true)
    })

    $(".un-select-all").click(function () {
        $(".checkbox").prop("checked", false)
    })

    $(".clear").click(function () {
        $(".status-info").html("")
    })

    $(".hide").click(function () {
        $(".channels").hide(1000)
    })

    $(".setting").click(function () {
        shell.showItemInFolder(remote.app.getAppPath().replace("\\resources\\app.asar", "") + "\\config\\setting.txt")
    })

    $(".open").click(function () {
        shell.showItemInFolder(remote.app.getAppPath().replace("\\resources\\app.asar", "") + "\\publish\\open.pod")
    })

    $(".error").click(function () {
        console.log(remote.app.getAppPath())
        shell.showItemInFolder(remote.app.getAppPath().replace("\\resources\\app.asar", "") + "\\config\\error.txt")
    })

    $(".env_check").click(function () {
        exec("java -version").then(result => {
            exec("jarsigner -h").then((result) => {
                alert("环境ok")
            }).catch(() => {
                shell.openExternal('https://pan.baidu.com/s/1fGLBGiAwuJzwZGIGrBnZ1A')
                alert("未安装java环境, 请到跳转地址下载")
            })
        }).catch(err => {
            shell.openExternal('https://pan.baidu.com/s/1fGLBGiAwuJzwZGIGrBnZ1A')
            alert("未安装java环境, 请到跳转地址下载")
        })
    })

    $(".clear2").click(function(){
        if(isStarting || isDecodeGame){
            alert("操作中, 请稍后...")
        } else {
            ipcRenderer.send("caches", "")
        }
    })
})



function template(name) {
    var template = `<div class="item">
    <img class="icon" src="">
    <div class="title">${name}</div>
    <input type="checkbox" class="checkbox" name="sdk"/>
    <b class="edit" style="font-size:12px;">编辑</b>
</div>`
    return template
}

function initSdkInfos() {
    var data = require('fs').readFileSync(".\\config\\channels.txt", "utf-8")
    try {
        sdkinfos = JSON.parse(data)
        var html = ""
        sdkinfos.forEach((item, i) => {
            html += template(i + "." + item.name)
        });
        $(".left .list").html(html)
    } catch (e) {
        alert("渠道初始化错误->" + e)
    }
}