/*
    Checking tmux sessions for disconnected headless clients and initiate restart.
*/

const schedule = require('node-schedule');
const moment = require('moment');

var taskSchedule = new schedule.RecurrenceRule();
taskSchedule.second = 59;
//taskSchedule.minute = 11;

var time;
var time_format;

function checkForDisconnect(client) {
    time = moment();
    time_format = time.format('YYYY-MM-DD HH:mm:ss Z');
    console.log(time_format + ' checkking for disconnected client: ' + client);
    const exec = require('child_process').exec;
    var script = exec('tmux capture-pane -pt '+ client +' -S -10', (error, stdout, stderr) => {
        if (error) {
            time = moment();
            time_format = time.format('YYYY-MM-DD HH:mm:ss Z');
            console.log(time_format + ' \\_ headless client not running: ' + client);
            return;
        }

        var result = stdout.split('\n');
        var str = result[result.length-3].indexOf('> Connection with host has been lost.');

        if(str !== -1) {
            time = moment();
            time_format = time.format('YYYY-MM-DD HH:mm:ss Z');
            console.log(time_format + ' \\_ disconnect msg found: ' + client);
            return killTmux(client);
        }

        time = moment();
        time_format = time.format('YYYY-MM-DD HH:mm:ss Z');
        console.log(time_format + ' \\_ disconnect msg not found ' + client);
        return;

    });
}

function killTmux(client) {
    time = moment();
    time_format = time.format('YYYY-MM-DD HH:mm:ss Z');
    console.log(time_format + ' killing tmux for: ' + client);
    const exec = require('child_process').exec;
    var script = exec('tmux kill-session -t '+ client + '', (error, stdout, stderr) => {
        if (error) {
            console.log(`exec sterr: ${stderr}`);
            return;
        }
        return startHeadlessClient(client);
    });
}

function startHeadlessClient(client) {
    time = moment();
    time_format = time.format('YYYY-MM-DD HH:mm:ss Z');
    console.log(time_format + ' starting: ' + client + ' ...');

    const exec = require('child_process').exec;
    var script = exec('sh restart_hc.sh ' + client, (error, stdout, stderr) => {
        if (error) {
            console.log(`exec sterr: ${stderr}`);
            return;
        }

    });
}

function start() {
	var clients = ['hc1','hc2','hc3'];
    for(var i = 0; i < clients.length; i++) {
        checkForDisconnect(clients[i]);
    }
}

schedule.scheduleJob(taskSchedule, start());
