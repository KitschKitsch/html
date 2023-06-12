// 랜덤함수
// let, var, const 등

var random = Math.floor(Math.random()*100)+1; //1~100

var input = Number(prompt("숫자를 입력하세요.(1~100)", "0"));

if(random === input) { // 1=="1" vs 1==="1": 등호 3개는 타입까지 같아야함!
	document.write("정답입니다. 정답: ", random);
} else {
	//document.write("오답입니다. 정답: ", random);
	alert("오답입니다. 정답: "+random);
	location.reload();// 새로고침(재실행)
}
