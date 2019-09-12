const { app, BrowserWindow, ipcMain, Menu } = require('electron')
const exec = require('child_process').exec;

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
            nodeIntegration: true
        }
    })

     win.webContents.openDevTools()


    
    // 加载index.html文件
    win.loadFile('index.html')
}




app.on('ready', createWindow)