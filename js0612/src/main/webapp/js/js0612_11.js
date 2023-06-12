// 테이블 추가

var htmlData = "";

for (var i=0; i<10; i++) {
htmlData += "<tr>";
htmlData += "<td>aaa"+i+"</td>";
htmlData += "<td>1111"+i+"</td>";
htmlData += "</tr>"
}

document.getElementById("d01").innerHTML = htmlData;// "d01" 아이디를 가진 HTML에 데이터 추가