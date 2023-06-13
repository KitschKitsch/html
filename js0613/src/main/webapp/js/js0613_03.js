// 부모창 - 자식창 값 전달

var openWin;// 전역변수

function popupOpen() {
	openWin = window.open("popup.html", "popupForm", "width=400px, height=550px, resizable=no, scrollbars=no")
}

function sendValue() {
	alert("자식창으로 값을 전달합니다.");
	// 떠있는 팝업창의 reValue 값에  // 실행창의 textInput값을 넣기
	openWin.document.getElementById("reValue").value = document.getElementById("textInput").value;// value: input박스 안에 있는 내용!
}

function popupSend() {
	alert("부모창으로 값을 전달합니다.");
	// 열려있는창의 receive 값에 // 실행창의 send값을 넣기
	opener.document.getElementById("receive").value = document.getElementById("send").value// opener: 열린창
}