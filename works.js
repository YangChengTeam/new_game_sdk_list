const { Worker, parentPort, isMainThread } = require('worker_threads');
const sdk = require('./sdk')


process.on('message', function (m) {
    if (typeof m === 'object' && m.type === 'package') {
        sdk.gameinfo.path = m.path
        for (key in m.value) {
            sdk.sdkinfo[key] = m.value[key]
        }
        process.send({type:"upload-pid", valeu:process.pid})
        sdk.main((msg) => {
            if (msg == 'end') {
                process.send({ type: 'end', value: "" })
                process.exit()
            } else {
                process.send({ type: 'msg', value: "进程" + process.pid + "->"+sdk.sdkinfo.name+"->" + msg })
            }
        })
    }
})
