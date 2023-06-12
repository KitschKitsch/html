// 숫자 합

var sum = 0;

for(var i=1; i<=100; i++) {
	sum += i;
}
document.write("1~100까지 숫자 합: " , sum);
document.write("<br>");

// 입력한 숫자까지의 합을 구하시오.
var input = Number(prompt("첫번째 숫자를 입력하세요(1~100)", "0"));
var input2 = Number(prompt("두번째 숫자를 입력하세요(1~100)", "0"));
var sum2 = 0;
var sum3 = 0;

var num =  Math.min(input, input2);// 최소값
var num2 = Math.max(input, input2);// 최대값
//num = (input<input2)? input : input2;// 최소값
//num2 = (input>input2)? input : input2;// 최대값


for (var i=num; i<=num2; i++) {// 문자열엔 대소연산자 없으니 자동형변환!
	sum2 += i;
}
document.write(num, "부터 ", num2, "까지 숫자 합: ", sum2);
document.write("<br>");

// 홀수들의 합을 구하시오.
for (var i=num; i<=num2; i++) {
	if (i%2==1) {
		sum3 += i;
	}
} 
document.write(num, "부터 ", num2, "까지 홀수 합: ", sum3);