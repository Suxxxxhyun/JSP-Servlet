function productCheck(){
	if(document.frm.name.value.length == 0){
		alert("상품명을 써주세요.");
		frm.name.focus();
		return false;
	}
	if(document.frm.price.value.length == 0){
		alert("가격을 써주세요.");
		frm.price.focus();
		return false;
	}
	//상품가격은 숫자로 입력해야하기때문에 자바스크립트 함수중 숫자 형태가 아닌지를 물어보는 isNaN함수를 사용하였다.
	if(isNaN(document.frm.price.value)){
		alert("숫자를 입력해야합니다.");
		frm.price.focus();
		return false;
	}
	return true;
}