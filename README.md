# A3-SL
simple server restart script for arma3server

## Installation

Requires [Node.js](https://nodejs.org/en/) with [node-schedule](https://www.npmjs.com/package/node-schedule) and [moment](https://www.npmjs.com/package/moment).

Edit array in ```a3-restart.js``` on line 76 with the names of your headless clients or servers. You can add as many as you like. The names specified in the array will be given to the tmux sessions.
```node
var clients = ['hc1','hc2','hc3'];
```

Rename ```start_hc_default.sh``` to ```start_hc.sh```
and ```restart_hc_default.sh``` to ```restart_hc.sh```.

Adjust in ```start_hc.sh``` and ```restart_hc.sh``` the path to your arma3 server installation as well as ip,port,password and mods.

## Usage

Use your favorite process manager to run ```a3-restart.js```. I personally use forever.
```bash
forever start a3-restart.js
```
or with some logging
```bash
start -e logs/err.out -o logs/out.out a3-discord-src.js
```
The script is checking every minute if the headless clients are still running. If not they are restarted.

Shell scripts for starting,stopping and restarting. Setup for up to 3 headless clients with the names ```hc1```,```hc2``` and ```hc3```. In case you changed the array above you need to make adjustments accordingly here.

Start ```hc1```
```bash
./start_hc.sh hc1
```
Restart ```hc1```
```bash
./restart_hc.sh hc1
```
Stop ```hc1```
```bash
./stop_hc.sh hc1
```

## License
[MIT](https://choosealicense.com/licenses/mit/)
