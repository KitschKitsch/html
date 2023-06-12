// open

// 새창여는 함수 만들기
function pop(){
	//alert("함수 pop()이 연결");
	window.open("popup.html", "pop1", "width=400, height=600, left=0, top=0");// 새창 열기!(주소, 창이름, 옵션) ***이름 지정하면 팝업창 중복 제거 
}

// 학생성적삭제하는 함수 만들기
function dataDelete(){
	if(confirm("삭제하시겠습니까? (Y/N)")) {// 물어보기(확인/취소)
		alert("게시글이 삭제되었습니다.")
	} else {
		alert("삭제가 취소되었습니다.")
	}
	
	
}