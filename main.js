const { app, BrowserWindow, ipcMain, Menu } = require('electron')
const exec = require('child_process').exec;

function createWindow() {
    // 创建浏览器窗口
    Menu.setApplicationMenu(null)


    let win = new BrowserWindow({
        width: 800,
        height: 600,
        minWidth: 800,
        minHeight: 600,
        webPreferences: {
            nodeIntegration: true
        }
    })

    // win.webContents.openDevTools()


    
    // 加载index.html文件
    win.loadFile('index.html')
}




app.on('ready', createWindow)