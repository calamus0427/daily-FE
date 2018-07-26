var rl = require("readline").createInterface(process.stdin, process.stdout);
var args = [];
rl.on("line", function(str) {
    console.log(eval(str));
});