
if (typeof(console) === "undefined") {
	console = { "log": function(x) { return x; }};
}
if (typeof(alert) === "undefined") {
	alert = function(x) { return x; }
}
if (typeof(logger) === "undefined") {
	logger = { "info": function(x) { return x; } }
}
function outer(fn, val) {
	fn(val);
}

let map =  {
	"node": console.log,
	"browser": alert,
	"mirth": logger.info
};

let system = "node";

outer(map[system], "hello, world");

