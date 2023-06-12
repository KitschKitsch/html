// 조건문(if)

var input = Number(prompt("첫번째 숫자", "기본값이 표시됩니다."));// 20 // html form의 placeholder 같은
var input2 = Number(prompt("두번째 숫자"));// 10

document.write(input+input2, "<br>");// 2010
document.write(input-input2, "<br>");// 10 : 자동형변환!!!(문자열에 -,*,/ 없으니까)

// 입력한 숫자가 100보다 큰/작은지 출력
document.write("입력한 숫자: ", input, "<br>");

if(input > 100) {
	document.write("100보다 큰 ");
} else {
	document.write("100보다 작은 ");
}

// 입력한 숫자가 홀수/짝수인지 출력
if(input%2 == 1) {
	document.write("\"홀수\"입니다.");
} else {
	document.write("\"짝수\"입니다.");
}
