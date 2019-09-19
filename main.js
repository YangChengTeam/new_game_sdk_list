const { app, BrowserWindow, ipcMain, Menu } = require('electron')
const { Worker, parentPort, isMainThread } = require('worker_threads');

const sdk = require('./sdk')

function createWindow() {
    Menu.setApplicationMenu(null)

    // 创建浏览器窗口
    let win = new BrowserWindow({
        title: "聚合渠道打包",
        width: 1000,
        height: 800,
        minWidth: 1000,
        minHeight: 800,
        webPreferences: {
            nodeIntegration: true,
            nodeIntegrationInWorker: true
        }
    })

    // win.webContents.openDevTools()

    // 加载index.html文件
    win.loadFile('index.html')
}

app.on('window-all-closed', function (event) {
    //...
    // On macOS it is common for applications and their menu bar
    // to stay active until the user quits explicitly with Cmd + Q
    if (process.platform !== 'darwin') {
        app.quit()
    }
})

app.on('ready', createWindow)

var fork = require('child_process').fork

var gamepath = ""
var workers = []
var packagedCount = 0

ipcMain.on('gameinfo', (event, path) => {
    gamepath = path
})

ipcMain.on('packages', (event, packages) => {
    for (var i = 0; i < packages.length; i++) {
        var worker = fork('./works.js')
        workers.push(worker)
    }

    workers.forEach((worker, i) => {
        worker.on('message', (m) => {
            if (m.type == "end") {
                packagedCount++
                if (packagedCount == workers.length) {
                    event.sender.send('end', '')
                    packagedCount = 0
                    delete workers
                    workers = []
                }
            } else {
                event.sender.send(m.type, m.value)
            }
        })
        worker.send({ type: 'package', value: packages[i], path: gamepath })
    })
})

