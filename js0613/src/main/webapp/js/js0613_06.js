// 시간가져오기
var a = 0;// 같은 이름 변수 쓸 수 있음!
let aaa = 0;// 같은 이름 변수 못씀!
const bbb = 0;// 상수


var interval;

function start() {
	interval = setInterval(function(){
		var today = new Date();
		var hours = today.getHours();
		var minutes = today.getMinutes();
		var seconds = today.getSeconds();
		if (hours<10) hours = "0"+hours;
		if (minutes<10) minutes = "0"+minutes;
		if (seconds<10) seconds = "0"+seconds;
		var milliseconds = today.getMilliseconds();
		document.getElementById("h01").innerText = hours +":"+ minutes +":"+ seconds; 
	},1000);
	
}