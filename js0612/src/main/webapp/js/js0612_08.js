// 구구단

var htmlData = "<table>";

for (var i=2; i<=9; i++) {
	//document.write("[ " +i+ "단 ]", "<br>");
	htmlData += "<th colspan = '5'>"
	htmlData += "[ " +i+ "단 ]"
	htmlData += "</th>"
	for (var j=1; j<=9; j++) {
		htmlData += "<tr>";
		htmlData += "<td>"+i+"</td>";
		htmlData += "<td>*</td>";
		htmlData += "<td>"+j+"</td>";
		htmlData += "<td>=</td>";
		htmlData += "<td>"+(i*j)+"</td>";
		htmlData += "</tr>";
		
		//document.write(i+ "*" +j+ "=" +(i*j), "<br>");
	}
}

htmlData += "</table>"

document.write(htmlData);
