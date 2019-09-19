const exec = require('child-process-promise').exec
const path = require('path')
const fs = require('fs-extra')
const md5File = require('md5-file')
const xml2js = require('xml2js')

const parser = new xml2js.Parser()
const builder = new xml2js.Builder()

// android 常量字符串
var androidInfo = {
    iconName: "",
    appNameKey: "app_name",

    manifestFilename: "AndroidManifest.xml",
    publicFilename: "public.xml",
    valuesDirPreix: `res${path.sep}values`,
    imageDirPreix: "",

    androidNameKey: "android:name",
    androidValueKey: "android:value",
    androidLabelKey: "android:label",
    androidIconKey: "android:icon",

    metaDataTagName: "meta-data",
    applicationTagName: 'application',
    activityTagName: "activity",
    apktoolYml: "apktool.yml"
}

// 设置
var setting = {}
try {
    var data = fs.readFileSync(".\\config\\setting.txt", 'utf-8')
    setting = JSON.parse(data)
} catch (e) {
    console.log("配置载入错误->" + e)
}

var sdkinfo = {
    name: "6071",
    path: "",
    dir: "",
    meta: [
        {
            key: "GROUP_AGENTID",
            value: "1"
        }
    ],
    appName: "",
    extra: [

    ]
}

var gameinfo = {
    dir: "",
    name: ""
}

async function d(apkpath, outpath) {
    if (!fs.pathExistsSync(setting.tempDir)) {
        fs.mkdirsSync(setting.tempDir)
    }
    return await exec(`${setting.java} -jar build_tools${path.sep}apktool.jar -f d ${apkpath} -o ${outpath}`);
}

async function b(apkdir, outpath) {
    if (!fs.pathExistsSync(setting.publishDir)) {
        fs.mkdirsSync(setting.publishDir)
    }
    return await exec(`${setting.java} -jar build_tools${path.sep}apktool.jar b ${apkdir} -o ${outpath}`);
}

async function dsdk(sdkinfo) {
    if (fs.pathExistsSync(sdkinfo.dir)) {
        return
    }
    return await d(sdkinfo.path, sdkinfo.dir)
}

async function dgame2(gamepath) {
    var name = gamepath.replace(/^.*[\\\/]/, '').split('.apk')[0]
    var dir = `${setting.tempDir}game_${name}`
    if (fs.pathExistsSync(dir)) {
        return
    }
    await d(gamepath, dir)
}

async function dgame(sdkinfo, gameinfo) {
    var gamepath = gameinfo.path
    gameinfo.name = gamepath.replace(/^.*[\\\/]/, '').split('.apk')[0]
    gameinfo.dir = `${setting.tempDir}game_${gameinfo.name}`
    if (fs.pathExistsSync(gameinfo.dir)) {
        var dir = gameinfo.dir
        gameinfo.dir = gameinfo.dir + "_" + sdkinfo.name
        clear(gameinfo)
        fs.copySync(dir, gameinfo.dir)
        return
    }
    gameinfo.dir = `game_${setting.tempDir}${gameinfo.name}_${Math.random() * 1000}`
    await d(gamepath, gameinfo.dir)
}

function sign(sdkinfo, gameinfo) {
    if (!fs.pathExistsSync(setting.publishDir)) {
        fs.mkdirsSync(setting.publishDir)
    }

    if (setting.signtype && setting.signtype == "apksigner") {
        return sign2(sdkinfo, gameinfo)
    } else {
        return sign1(sdkinfo, gameinfo)
    }
}

function sign1(sdkinfo, gameinfo) {
    var keyinfo = sdkinfo.keyinfo || setting.keyinfo
    return exec(`jarsigner -verbose -keystore ${keyinfo.path} -signedjar ${setting.publishDir}${gameinfo.name}_${sdkinfo.name}_signed.apk ${setting.tempDir}${gameinfo.name}_${sdkinfo.name}.apk ${keyinfo.alias} -storepass ${keyinfo.password}>${setting.tempDir}${gameinfo.name}_${sdkinfo.name}.log`)
}

function sign2(sdkinfo, gameinfo) {
    var keyinfo = sdkinfo.keyinfo || setting.keyinfo
    return exec(`${setting.java} -jar build_tools${path.sep}apksigner.jar sign –v1-signing-enabled true -v2-signing-enabled false --ks ${keyinfo.path} --ks-key-alias ${keyinfo.alias} --ks-pass pass:${keyinfo.password} --key-pass pass:${keyinfo.password} --out ${setting.publishDir}${gameinfo.name}_${sdkinfo.name}_signed.apk ${setting.tempDir}${gameinfo.name}_${sdkinfo.name}.apk>${setting.tempDir}${gameinfo.name}_${sdkinfo.name}.log`)
}


function clear(gameinfo) {
    try {
        fs.removeSync(gameinfo.dir)
    } catch (e) {
        console.log(e)
        fs.appendFileSync(".\\config\\error.txt", e + " \n")
    }
}

function delCaches() {
    fs.readdirSync(`${setting.tempDir}`).map(name => {
        if (name.indexOf("game_") != -1 || name.indexOf(".apk") != -1 || name.indexOf(".log") != -1 || name.indexOf("_temp") != -1) {
            try {
                fs.removeSync(path.join(`${setting.tempDir}`, name))
            } catch (e) {
                console.log(e)
                fs.appendFileSync(".\\config\\error.txt", e + " \n")
            }
        }
    })
}

async function main(callback) {
    callback("I: 正在打渠道" + sdkinfo.name + "...")
    try {
        await dsdk(sdkinfo)
        callback("I: 渠道sdk已反编绎")
        await dgame(sdkinfo, gameinfo)
        callback("I: 游戏sdk已反编绎")
        sdkdir = sdkinfo.dir
        gamedir = gameinfo.dir
        callback("I: 核心操作中...")
        await copy(sdkdir, gamedir, sdkinfo, gameinfo)
        replace_extra_file(sdkinfo, gameinfo)
        callback("I: 操作完成，回编中...")
        await b(gamedir, `${setting.tempDir}${gameinfo.name}_${sdkinfo.name}.apk`)
        callback("I: 回编完成，正在签名...")
        sign(sdkinfo, gameinfo).then(() => {
            callback("I: 签名完成...")
            callback(`I: 打包成功->${setting.publishDir}${gameinfo.name}_${sdkinfo.name}_signed.apk`)
            clear(gameinfo)
            callback(`end`)
        }).catch((err) => {
            callback(`<font color='red'>I: 签名失败${err}</font>`)
            clear(gameinfo)
            callback(`end`)
        })
    } catch (e) {
        fs.appendFileSync(".\\config\\error.txt", e + " \n")
        callback(`<font color='red'>I: 打包失败查看错误日志->${e}</font>`)
        clear(gameinfo)
        callback(`end`)
    }
}

var dirLevel = 1
async function copy(sdkdir, gamedir, sdkinfo, gameinfo) {
    fs.readdirSync(sdkdir).map(async name => {
        let sdkpath = path.join(sdkdir, name)
        let gamepath = path.join(gamedir, name)

        if (name === androidInfo.manifestFilename && dirLevel == 1) {
            await mergeAndroidManifestXml(sdkpath, gamepath, sdkinfo, gameinfo)
            return
        }

        if (fs.lstatSync(sdkpath).isDirectory()) {
            if (fs.pathExistsSync(gamepath)) {
                dirLevel++
                await copy(sdkpath, gamepath, sdkinfo, gameinfo)
            } else {
                if (sdkpath.indexOf(path.sep + "lib" + path.sep) == -1) {
                    fs.copySync(sdkpath, gamepath)
                }
            }
        } else {
            if (!fs.pathExistsSync(gamepath)) {
                fs.copySync(sdkpath, gamepath)
            } else if (md5File.sync(gamepath) != md5File.sync(sdkpath)) {

                if (name == androidInfo.apktoolYml && dirLevel == 1) {
                    return
                }
                if (sdkdir.indexOf(androidInfo.valuesDirPreix) != -1) {
                    if (name != androidInfo.publicFilename) {
                        await mergeValuesXml(sdkpath, gamepath, sdkinfo, gameinfo)
                    }
                }
                else if (sdkdir.indexOf(androidInfo.imageDirPreix) != -1 && name.split(".")[0] == androidInfo.iconName) {
                    return
                } else {
                    fs.copySync(sdkpath, gamepath)
                }
            }
        }
    })
}

function replace_extra_file(sdkinfo, gameinfo) {
    sdkinfo.extra.forEach(item => {
        try {
            fs.copySync(item.source, gameinfo.dir + item.dest)
        } catch (e) {
            console.log(e)
            fs.appendFileSync(".\\config\\error.txt", e + " \n")
        }
    })
}

function parserXml(xmlPath) {
    let xmlStr = fs.readFileSync(xmlPath, 'utf-8')
    var promise = new Promise((r, j) => {
        parser.parseString(xmlStr, (err, result) => {
            if (err) {
                j(err)
            } else {
                r(result)
            }
        })
    })
    return promise
}

async function mergeAndroidManifestXml(sdkpath, gamepath, sdkinfo, gameinfo) {
    let sdknode = await parserXml(sdkpath).catch(e => { })
    let gamenode = await parserXml(gamepath).catch(e => { })

    if (sdknode && gamenode) {
        sdkmanifest = sdknode.manifest
        gamemanifest = gamenode.manifest

        var rfileDir = path.join(gameinfo.dir, 'smali', gamemanifest.$.package.replace(new RegExp("\\.", "g"), path.sep))
        if (fs.pathExistsSync(rfileDir)) {
            fs.removeSync(rfileDir)
        }

        if (sdkinfo.packageName) {
            gamemanifest.$.package = gamemanifest.$.package + "." + sdkinfo.packageName
        }
        traversNode(sdkmanifest, gamemanifest, sdkinfo, gameinfo)

        if (sdkmanifest.application[0].$[androidInfo.androidNameKey]) {
            var sdkname = sdkmanifest.application[0].$[androidInfo.androidNameKey]
            if (gamemanifest.application[0].$[androidInfo.androidNameKey]) {
                var gamename = gamemanifest.application[0].$[androidInfo.androidNameKey]
                console.log(`W: 手动更新application依赖关系${sdkname}->${gamename}`)
                fs.appendFileSync("..\\config\\error.txt", `W: 手动更新application依赖关系${sdkname}->${gamename}\n`)
            }
            gamemanifest.application[0].$[androidInfo.androidNameKey] = sdkname
        }

        if (gamemanifest.application[0][androidInfo.metaDataTagName]) {
            for (var i = 0; i < gamemanifest.application[0][androidInfo.metaDataTagName].length; i++) {
                var meta = gamemanifest.application[0][androidInfo.metaDataTagName][i]
                for (var j = 0; j < sdkinfo.meta.length; j++) {
                    if (meta.$[androidInfo.androidNameKey] == sdkinfo.meta[j].key) {
                        meta.$[androidInfo.androidValueKey] = sdkinfo.meta[j].value
                        break
                    }
                }
            }
        }

        var sdkicon = sdkmanifest.application[0].$[androidInfo.androidIconKey];
        var gameicon = gamemanifest.application[0].$[androidInfo.androidIconKey];

        if (sdkicon === gameicon) {
            let icons = gameicon.split("/")
            if (icons.length == 2) {
                androidInfo.iconName = icons[1];
                androidInfo.imageDirPreix = `res${path.sep}${icons[0].split("@")[1]}`;
            }
        }
    }

    writeXml(gamepath, gamenode)
}

function traversNode(sdkmanifest, gamemanifest, sdkinfo, gameinfo) {
    Object.keys(sdkmanifest).forEach(key => {
        if (key === '$') return
        else if (key === androidInfo.applicationTagName) {
            let androidLabelKey = gamemanifest[key][0].$[androidInfo.androidLabelKey]
            if (androidLabelKey.indexOf('@string') != -1) {
                setting.appNameKey = androidLabelKey.split('/')[1]
            }
            traversNode(sdkmanifest[key][0], gamemanifest[key][0], sdkinfo, gameinfo)
            return
        }
        else {

            if (!gamemanifest[key]) {
                gamemanifest[key] = sdkmanifest[key]
                return
            }

            merge(key, sdkmanifest[key], gamemanifest[key], sdkinfo, gameinfo)
        }
    })

}

function isLanuchActiviy(node) {
    var isLanuch = false
    if (node['intent-filter']) {
        node['intent-filter'].forEach(filter => {
            if (filter['category']) {
                filter['category'].forEach(category => {
                    if (category.$[androidInfo.androidNameKey] == 'android.intent.category.LAUNCHER') {
                        isLanuch = true
                    }
                })
            }
        })
    }
    return isLanuch
}

function merge(key, sdknodes, gamenodes, sdkinfo) {
    for (var i = 0; i < sdknodes.length; i++) {

        var isLanuchA = false
        if (key === androidInfo.activityTagName) {
            isLanuchA = isLanuchActiviy(sdknodes[i])
        }

        if (!gamenodes.find(node => {
            return node.$[androidInfo.androidNameKey] === sdknodes[i].$[androidInfo.androidNameKey]
        })) {
            if (!isLanuchA) {
                gamenodes.push(sdknodes[i])
            }
        }
    }
}

async function mergeValuesXml(sdkpath, gamepath, sdkinfo, gameinfo) {
    let sdknode = await parserXml(sdkpath).catch(e => { })
    let gamenode = await parserXml(gamepath).catch(e => { })

    let sdknodes = sdknode.resources
    let gamenodes = gamenode.resources

    Object.keys(sdknodes).forEach(key => {
        var is_app_name = false
        for (var i = 0; i < sdknodes[key].length; i++) {
            if (sdkpath.indexOf('strings.xml') != -1 && sdknodes[key][i].$['name'] === setting.appNameKey) {
                is_app_name = true
            }
            let node = gamenodes[key].find(node => {
                return node.$['name'] === sdknodes[key][i].$['name']
            })
            if (!node) {
                gamenodes[key].push(sdknodes[key][i])
            } else {
                if (is_app_name) {
                    is_app_name = false
                    if (sdkinfo.appName) {
                        node["_"] = sdkinfo.appName
                    }
                } else {
                    if (sdknodes[key][i]["_"]) {
                        node["_"] = sdknodes[key][i]["_"]
                    }
                }
            }
        }
    })

    writeXml(gamepath, gamenode)
}

function writeXml(path, node) {
    fs.writeFileSync(path, builder.buildObject(node))
}

module.exports = {
    setting,
    sdkinfo,
    gameinfo,
    main,
    delCaches,
    dgame2
}