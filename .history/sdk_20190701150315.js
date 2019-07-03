const exec = require('child-process-promise').exec
const path = require('path')
const fs = require('fs-extra')
const md5 = require("md5")
const xml2js = require('xml2js')

const parser = new xml2js.Parser()
const builder = new xml2js.Builder()

var setting = {
    java: "java",
    keyinfo: {
        path: `.${path.sep}keys${path.sep}game.jks`,
        alias: "game",
        password: "123456"
    },
    basedir: `.`,
    tempDir: `.${path.sep}temp${path.sep}`,
    publishDir: `.${path.sep}publish${path.sep}`,
}

var sdkinfo = {
    name: "6071",
    packageName: 'com.yc.test',
    appNameKey: "app_name",
    path: "",
    dir: "",
    meta: [
        {
            key: "GROUP_AGENTID",
            value: "40"
        }
    ]
}

var gameinfo = {
    dir: "",
    name: ""
}

var androidInfo = {
    iconName: "",

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

function d(apkpath, output) {
    if (!fs.pathExistsSync(setting.tempDir)) {
        fs.mkdirsSync(setting.tempDir)
    }
    return exec(`${setting.java} -jar build_tools${path.sep}apktool.jar -f d ${apkpath} -o ${output}`);
}

function dsdk(sdkpath) {
    if (fs.pathExistsSync(sdkinfo.dir)) {
        return
    }
    return d(sdkpath, sdkinfo.dir)
}

function dgame(gamepath) {
    gameinfo.name = gamepath.replace(/^.*[\\\/]/, '').split('.apk')[0]
    gameinfo.dir = `${setting.tempDir}${gameinfo.name}`
    if (fs.pathExistsSync(gameinfo.dir)) {
        fs.removeSync(gameinfo.dir)
    }
    return d(gamepath, gameinfo.dir)
}

function b(gamedir) {
    return exec(`${setting.java} -jar build_tools${path.sep}apktool.jar b ${gamedir} -o ${setting.tempDir}${gameinfo.name}.apk`);
}

function sign() {
    if (!fs.pathExistsSync(setting.publishDir)) {
        fs.mkdirsSync(setting.publishDir)
    }
    return exec(`jarsigner -verbose -keystore ${setting.keyinfo.path} -signedjar ${setting.publishDir}${gameinfo.name}_${sdkinfo.name}_signed.apk ${setting.tempDir}${gameinfo.name}.apk ${setting.keyinfo.alias} -storepass ${setting.keyinfo.password} > ${setting.tempDir}${gameinfo.name}.log`)
}

function pretreatment(sdkdir, gamedir) {

    var rfileDir = path.join(gameinfo.dir, 'smali', sdkinfo.packageName.replace(new RegExp("\\.", "g"), path.sep))
    
    if (fs.pathExistsSync(rfileDir)) {
        fs.removeSync(rfileDir)
    }

    ['okhttp3', 'okio', 'com/ipaynow', 'com/UCMobile',
     'com/unionpay','com/ta', 'com/ut'
    , 'com/feiyou', 'com/game', 'com/vqs', 
    'com/squareup', 'com/umeng', 'com/unionpay', 'com/alipay', 'com/alibaba',
    'com/bytedance', 'com/squareup', 'com/UCMobile', 'com/tencent', 'com/ss', 
    'android/support/annotation', 'android/support/v4', 'cn/gov/pbc', 'org/apache/commons',
    'u/aly'].forEach(name=>{
        sourcePath = path.join(gamedir, 'smali', name.replace("/", path.sep))
        if (fs.pathExistsSync(sourcePath)) {
            fs.removeSync(sourcePath)
            console.log(sourcePath)
        }
    })

    ['com/feiyou', 'com/unionpay'].forEach(name=>{
        sourcePath = path.join(gamedir, 'unknown', name.replace("/", path.sep))
        if (fs.pathExistsSync(sourcePath)) {
            fs.removeSync(sourcePath)
            console.log(sourcePath)
        }
    })

    ['ipaynow_data.bin', 'kprogresshud_spinner.png'].forEach(name=>{
        sourcePath = path.join(gamedir, 'assets', name.replace("/", path.sep))
        if (fs.pathExistsSync(sourcePath)) {
            fs.removeSync(sourcePath)
            console.log(sourcePath)
        }
    })

    fs.readdirSync(path.join(gamedir, 'lib')).map(dir => {
        ['libuptsmaddon.so', 'libentryex.so', 
        'libplugin_phone.so', 'libfyae.so', 
        'libentryexpro.so'].forEach(name=>{
            sourcePath = path.join(gamedir, dir, name)
            if (fs.pathExistsSync(sourcePath)) {
                fs.removeSync(sourcePath)
                console.log(sourcePath)
            }
        })
    })

    fs.readdirSync(path.join(gamedir, 'res')).map(dir => {
        sourcePath = path.join(gamedir, dir)
        fs.readdirSync(path.join(gamedir, 'res')).map(name => {

        })
    })

}


function clear(){
    fs.removeSync(gameinfo.dir)
    fs.removeSync(`${setting.tempDir}${gameinfo.name}.log`)
    fs.removeSync(`${setting.tempDir}${gameinfo.name}.apk`)
}

async function main(callback) {
    callback("I: 正在打渠道" + sdkinfo.name+ "...")
    await dsdk(sdkinfo.path)
    callback("I: 渠道sdk已反编绎")
    await dgame(gameinfo.path)
    callback("I: 游戏sdk已反编绎")
    sdkdir = sdkinfo.dir
    gamedir = gameinfo.dir
    callback("I: 核心操作中...")
    pretreatment(sdkdir, gamedir)
    copy(sdkdir, gamedir)
    callback("I: 操作完成，回编中...")
    await b(gamedir)
    callback("I: 回编完成，正在签名...")
    await sign()
    callback("I: 正在清理...")
    clear()
    if (fs.existsSync(`${setting.publishDir}${gameinfo.name}_${sdkinfo.name}_signed.apk`)) {
        callback(`I: 打包成功->${setting.publishDir}${gameinfo.name}_${sdkinfo.name}_signed.apk`)
    }
}

var dirLevel = 1
function copy(sdkdir, gamedir) {

    fs.readdirSync(sdkdir).map(name => {
        let sdkpath = path.join(sdkdir, name)
        let gamepath = path.join(gamedir, name)

        if (name === androidInfo.manifestFilename && dirLevel == 1) {
            mergeAndroidManifestXml(sdkpath, gamepath)
            return
        }

        if (fs.lstatSync(sdkpath).isDirectory()) {
            if (fs.pathExistsSync(gamepath)) {
                dirLevel++
                copy(sdkpath, gamepath)
            } else {
                fs.copySync(sdkpath, gamepath)
            }
        } else {
            if (!fs.pathExistsSync(gamepath)) {
                fs.copySync(sdkpath, gamepath)
            } else if (md5(gamepath) != md5(sdkpath)) {
                if(name == androidInfo.apktoolYml && dirLevel == 1){
                    return
                }
                if (sdkdir.indexOf(androidInfo.valuesDirPreix) != -1) {
                    if (name == androidInfo.publicFilename) {
                        mergePublicXml(sdkpath, gamepath)
                    } else {
                        mergeValuesXml(sdkpath, gamepath)
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

async function mergeAndroidManifestXml(sdkpath, gamepath) {
    let sdknode = await parserXml(sdkpath).catch(e => { })
    let gamenode = await parserXml(gamepath).catch(e => { })

    if (sdknode && gamenode) {
        sdkmanifest = sdknode.manifest
        gamemanifest = gamenode.manifest

        var rfileDir = path.join(gameinfo.dir, 'smali', gamemanifest.$.package.replace(new RegExp("\\.", "g"), path.sep))
        if (fs.pathExistsSync(rfileDir)) {
            fs.removeSync(rfileDir)
        }

        gamemanifest.$.package = sdkinfo.packageName
        traversNode(sdkmanifest, gamemanifest)

        if ( sdkmanifest.application[0].$[androidInfo.androidNameKey] ) {
            var  sdkname = sdkmanifest.application[0].$[androidInfo.androidNameKey]
            if(gamemanifest.application[0].$[androidInfo.androidNameKey]){
                var gamename = gamemanifest.application[0].$[androidInfo.androidNameKey]
                console.log(`手动更新application依赖关系${sdkname}->${gamename}`)
            }
            gamemanifest.application[0].$[androidInfo.androidNameKey] = sdkname
        }

        if (gamemanifest.application[0][androidInfo.metaDataTagName]) {
            for (var i = 0; i < gamemanifest.application[0][androidInfo.metaDataTagName].length; i++) {
                var meta = gamemanifest.application[0][androidInfo.metaDataTagName][i]
                console.log(sdkinfo.meta[0].value)
                if (meta.$[androidInfo.androidNameKey] == sdkinfo.meta[0].key) {
                    meta.$[androidInfo.androidValueKey] = sdkinfo.meta[0].value
                    break
                }
            }
        }

        var sdkicon = sdkmanifest.application[0].$[androidInfo.androidIconKey];
        var gameicon = gamemanifest.application[0].$[androidInfo.androidIconKey];

        if (sdkicon === gameicon) {
            let icons = icon.split("/")
            if (icons.length == 2) {
                androidInfo.iconName = icons[1];
                appinfo.imageDirPreix = `res${path.sep}${icons[0].split("@")[1]}`;
            }
        }
    }

    writeXml(gamepath, gamenode)
}

function traversNode(sdkmanifest, gamemanifest) {
    Object.keys(sdkmanifest).forEach(key => {
        if (key === '$') return
        else if (key === androidInfo.applicationTagName) {
            let androidLabelKey = gamemanifest[key][0].$[androidInfo.androidLabelKey]
            if (androidLabelKey.indexOf('@string') != -1) {
                sdkinfo.appNameKey = androidLabelKey.split('/')[1]
            }
            traversNode(sdkmanifest[key][0], gamemanifest[key][0])
            return
        }
        else {

            if (!gamemanifest[key]) {
                gamemanifest[key] = sdkmanifest[key]
                return
            }

            merge(key, sdkmanifest[key], gamemanifest[key])
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

function merge(key, sdknodes, gamenodes) {
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



async function mergePublicXml(sdkpath, gamepath) {
    let sdknode = await parserXml(sdkpath).catch(e => { })
    let gamenode = await parserXml(gamepath).catch(e => { })

    let sdknodes = sdknode.resources.public
    let gamenodes = gamenode.resources.public

    var glen = gamenodes.length
    var last = {};

    var perfixN = 16
    var types = []
    for (var i = 0; i < glen; i++) {
        var gnode = gamenodes[i]
        var type =  gnode.$['type']
        if (!types.find(t => {
            return t == type
        })) {
            types.push(type)
        }
    }

    for (var i = 0; i < sdknodes.length; i++) {
        var snode = sdknodes[i]
        var sperfix = snode.$['id'].substr(0, 6)
        var snum = snode.$['id'].substr(6, 4)

        var tmpsperfix = undefined

        var issame = false

        var sid = last[sperfix]
        if (sid) {
            tmpsperfix = sid.substr(0, 6)
            snum = sid.substr(6, 4)
        }

        var isexist = false 
        for (var j = 0; j < glen; j++) {
            var gnode = gamenodes[j]
            var gperfix = gnode.$['id'].substr(0, 6)
            var gnum = gnode.$['id'].substr(6, 4)

            if (gnode.$['type'] == snode.$['type']) {
                isexist = true
                if (gnode.$['name'] == snode.$['name']) {
                    issame = true
                    // gamenodes.splice(j, 1)
                    // glen -= 1
                    break
                }
                if (!sid) {
                    tmpsperfix = gperfix
                    if (parseInt(gnum, 16) > parseInt(snum, 16)) {
                        snum = gnum
                    }
                }
            }
        }

        if(!isexist){
            tmpsperfix = "0x7f" + (types.length+perfixN).toString(16)
            perfixN++
            types.push(snode.$['type'])
        }

        if (!issame) {
            if (tmpsperfix) {
                snum = (parseInt(snum, 16) + 1).toString(16)
                var pad = ""
                for (var k = 0; k < 4 - snum.length; k++) {
                    pad += "0"
                }
                snode.$['id'] = tmpsperfix + pad + snum
            }
            last[sperfix] = snode.$['id']
            gamenodes.push(sdknodes[i])
        }
    }

    writeXml(gamepath, gamenode)
    writeRFile(gamenodes, types)
}

function writeXml(path, node) {
    fs.writeFileSync(path, builder.buildObject(node))
}

async function mergeValuesXml(sdkpath, gamepath) {
    let sdknode = await parserXml(sdkpath).catch(e => { })
    let gamenode = await parserXml(gamepath).catch(e => { })

    let sdknodes = sdknode.resources
    let gamenodes = gamenode.resources

    Object.keys(sdknodes).forEach(key => {
        for (var i = 0; i < sdknodes[key].length; i++) {
            if (sdkpath.indexOf('strings.xml') != -1 && sdknodes[key][i].$['name'] === sdkinfo.appNameKey) {
                continue
            }
            let node = gamenodes[key].find(node => {
                return node.$['name'] === sdknodes[key][i].$['name']
            })
            if (!node) {
                gamenodes[key].push(sdknodes[key][i])
            } else {
                if (sdknodes[key][i]["_"]) {
                    node["_"] = sdknodes[key][i]["_"]
                }
            }
        }
    })

    writeXml(gamepath, gamenode)
}

function rFileHeader(type, packageName) {
    var template = `.class public final L${packageName}/R$${type};
.super Ljava/lang/Object;
.source \"R.java\"


 # annotations
.annotation system Ldalvik/annotation/EnclosingClass;
     value = L${packageName}/R;
.end annotation


.annotation system Ldalvik/annotation/InnerClass;
   accessFlags = 0x19
   name = \"${type}\"
.end annotation


# static fields
`

    return template
}

function rFileFooter() {
    var template = `# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method`
    return template
}

function rAnnotations(packageName, annotations){
    var template =`.class public final L${packageName}/R;
.super Ljava/lang/Object;
.source "R.java"
    
    
# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
${annotations}
    }
.end annotation
    

# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    
    return-void
.end method
    ` 
    return template
}


function writeRFile(gamenodes, types) {
    var rfileDir = path.join(gameinfo.dir, 'smali', sdkinfo.packageName.replace(new RegExp("\\.", "g"), path.sep))
    if (!fs.pathExistsSync(rfileDir)) {
        fs.mkdirs(rfileDir)
    }

    var packageName = sdkinfo.packageName.replace(new RegExp("\\.", "g"), "/")

    for (var i = 0; i < gamenodes.length; i++) {
        var node = gamenodes[i]
        var type = node.$['type']
        var name = node.$['name'].replace(new RegExp("\\.", "g"), "_")
        var id = node.$['id']

        let rfilePath = path.join(rfileDir, 'R$' + type + '.smali')
        if (!fs.pathExistsSync(rfilePath)) {
            fs.createFileSync(rfilePath)
            fs.writeFileSync(rfilePath, rFileHeader(type, packageName))
        }
        fs.appendFileSync(rfilePath, `.field public static final ${name}:I = ${id}\n\n`)
    }
   
    // let rfilePath = path.join(rfileDir, 'R.smali')
    // if (!fs.pathExistsSync(rfilePath)) {
    //     fs.createFileSync(rfilePath)
    // }
    // var annotations = ""
    types.forEach((type,i) => {
        let rfilePath = path.join(rfileDir, 'R$' + type + '.smali')
        fs.appendFileSync(rfilePath, rFileFooter())
        // if(i == types.length - 1){
        //     annotations += `        L${packageName}/R$${type};\n`
        // } else {
        //     annotations += `        L${packageName}/R$${type};,\n`
        // }
    })
    // fs.writeFileSync(rfilePath,rAnnotations(packageName, annotations))
}


module.exports = {
    setting,
    sdkinfo,
    gameinfo,
    main
}

