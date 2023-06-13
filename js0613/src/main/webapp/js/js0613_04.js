// 아이디 중복체크

var openPop;

function idCheck() {
	alert("아이디 중복체크 창이 열립니다.");
	openPop = window.open("idCheckForm.html", "id", "width=350px height=500px; scrollbars=no;");
}

function dbIdCheck() {
	document.getElementById("span01").innerText = "입력한 아이디는 사용이 가능합니다.";// 글자를 해당 구역에
}

function idConfirm() {
	// 열려있는 창의 id값에 // 현재창의 checkId값을 넣음
	opener.document.getElementById("id").value = document.getElementById("checkId").value;	
	window.close();
}