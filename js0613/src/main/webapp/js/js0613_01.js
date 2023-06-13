// 함수
function add(num, num2) {// 더하기 함수
	return result = num+num2;
}

function sub(num, num2) {// 빼기 함수
	return result2 = num-num2;
}

function test(num, num2) {// 더하기, 빼기 함수
	add(num, num2);
	sub(num, num2);
}

function input() {// 값을 입력받아 더하기, 빼기 함수 호출
	var num = Number(prompt("첫번째 숫자"));
	var num2 = Number(prompt("두번째 숫자"));
	console.log(num, num2);
	add(num, num2);
	sub(num, num2);
	console.log("결과값: ", result, "결과값: ",result2);
}