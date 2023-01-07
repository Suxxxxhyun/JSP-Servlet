function loginCheck(){
	if(document.frm.userid.value.length == 0){
		alert("아이디를 입력해주세요");
		frm.userid.focus();
		return false;
	}
	if(document.frm.pwd.value == ""){
		alert("암호를 반드시 입력해야합니다.");
		frm.pwd.focus();
		return false;
	}
	return true;
	
}

function idCheck(){
	if(document.frm.userid.value=""){
		alert('아이디를 입력해주세요');
		document.frm.userid.focus();
		return;
	}
	var url = "idCheck.do?userid=" + document.frm.userid.value;
	window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=450, height=200");
}

function idok(){
	opener.frm.userid.value=document.frm.userid.value;
	opener.frm.reid.value=document.frm.userid.value;
	//자바스크립트에서 opener란 이 창을 열어준 부모창을 말한다. 여기서는 부모창이 회원가입폼이 된다. 
	//회원가입 폼의 아이디를 입력받는 폼에 아이디 중복체크가 끝난 아이디값을 준다.
	//reid는 아이디 중복체크과정을 거쳤는지를 확인하기 위해 회원가입폼에 만들어둔 히든태그이다.
	self.close();
	//아이디 중복체크하는 창을 닫는다.
}

function joinCheck(){
	if(doucment.frm.name.value.length == 0){
		alert("이름을 써주세요.");
		frm.name.focus();
		return false;
	}
	if(doucment.frm.userid.value.length == 0){
		alert("아이디를 써주세요.");
		frm.userid.focus();
		return false;
	}
	if(doucment.frm.userid.value.length < 4){
		alert("아이디는 4글자 이상이어야한다.");
		frm.userid.focus();
		return false;
	}
	if(doucment.frm.pwd.value.length == ""){
		alert("암호는 반드시 입력해야한다.");
		frm.pwd.focus();
		return false;
	}
	if(doucment.frm.pwd.value != document.frm.pwd_check.value){
		alert("암호가 일치하지 않습니다.");
		frm.pwd.focus();
		return false;
	}
	if(doucment.frm.reid.value.length == 0){
		alert("중복체크를 하지 않았습니다.");
		frm.userid.focus();
		return false;
	}
	return true;

}