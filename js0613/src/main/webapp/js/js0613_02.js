function stuScore() {
	
	var name = prompt("학생 이름 입력");
	var kor = Number(prompt("국어 점수 입력"));
	var eng = Number(prompt("영어 점수 입력"));
	var math = Number(prompt("수학 점수 입력"));
	var total = kor+eng+math;
	var avg = (total/3.0).toFixed(2);
	console.log("합계: ", total, "평균: " , avg);
	
	var htmlData = "";
	htmlData+="<tr>";
	htmlData+="<td>"+name+"</td>";
	htmlData+="<td>"+kor+"</td>";
	htmlData+="<td>"+eng+"</td>";
	htmlData+="<td>"+math+"</td>";
	htmlData+="<td>"+total+"</td>";
	htmlData+="<td>"+avg+"</td>";
	htmlData+="</tr>";
	
	document.getElementById("tbody").innerHTML = htmlData;

}

