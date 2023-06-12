// 게시판
var dt = new Date();
dt = dt.getFullYear() + "/" + (dt.getMonth()+1) + "/" + dt.getDate() + " " + dt.getHours() + ":" + dt.getMinutes() + ":" + dt.getSeconds();

var dataArr = ["게시판이 오픈되었습니다.", "홈페이지 공지", "새로운 이벤트", "진행중인 이벤트", "업데이트 공지", "신입사원 모집", "신제품 런칭", "주식상장안내", "이벤트 재공지", "당첨자 발표"]

var htmlData ="<h2>자유게시판</h2>";
htmlData += "<table>";
htmlData += "<colgroup><col width='10%'><col width='50%'><col width='15%'><col width='10%'><col width='15%'></colgroup>"
	
htmlData+= "<tr><th>번호</th><th>제목</th><th>작성자</th><th>조회수</th><th>날짜</th></tr>";

for(var i=0; i<10; i++) {
	htmlData+= "<tr>";
	htmlData+= "<td>"+(i+1)+"</td>";
	htmlData+= "<td>"+dataArr[i]+"</td>";
	htmlData+= "<td>홍길동</td>";
	htmlData+= "<td>1</td>";
	htmlData+= "<td>"+dt+"</td>";
	htmlData+= "</tr>";	
}
htmlData +="</table>";

document.write(htmlData);