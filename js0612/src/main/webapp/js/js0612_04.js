// 조건문(삼항식)

var num = Number(prompt("1번째 숫자 입력"));
var num2 = Number(prompt("2번째 숫자 입력"));

document.write(typeof(num),"<br>");
document.write(typeof(num2),"<br>");
document.write(num+num2, "<br>");
//document.write(Number(num)+Number(num2), "<br>");

// 두 숫자를 입력받아 큰 수를 출력(삼항식 이용)
var result = num>num2? num : num2; 
document.write("더 큰 수: " , result, "<br>");
