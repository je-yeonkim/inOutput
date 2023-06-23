 function allCheck(){
	  var id = document.getElementById('id');//('id')헤당 아이디 값 id='id'인 값
	  var pw = document.getElementById('pw');
	  var confirm = document.getElementById('confirm');
	  var userName = document.getElementById('userName');
	  if(id.value == ""){
		  alert('아이디를 입력하세요.');
		  return;
	  }else if(pw.value ==""){
		  alert('비밀번호는 필수 항목입니다.');
	  }else if(confirm.value == ""){
		  alert('비밀번호 확인은 필수 항목입니다.');
	  }else if(userName.value ==""){
		  alert('이름은 필수 항목입니다.');
	  }
	  var f = document.getElementById('f');
	  f.submit();
  }
//script는 자료형이 없다.

function pwCheck(){
	pw = document.getElementById('pw');
	confirm = document.getElementById('confirm');
	label = document.getElementById('label');
	if(pw.value == confirm.value){
		label.innerHTML='일치	'
	}else{
		label.innerHTML='불일치'
	}
	//window.alert('pwCheck 호출')
}

function loginCheck(){
	let id = document.getElementById('id');
	let pw = document.getElementById('pw');
	
	if(id.value == ""){
		alert('아이디는 필수 항목입니다.');
	}else if(pw.value == ""){
		alert('비밀번호는 필수 항목입니다.');
	}else{
		var f = document.getElementById('f');
		f.submit();
	}
}

function update(){
			var id = document.getElementById('id');
			if( id.value == ''){
				alert('아이디는 필수로 입력 값이 있어야합니다.')
				return ;
			}
			//alert('아이디 : ' + id.value);
			
			var pw = document.getElementById('pw');
			if( pw.value == ''){
				alert('비밀번호는 필수로 입력 값이 있어야합니다.')
				return ;
			}
			var confirmPw = document.getElementById('confirmPw');
			if( pw.value != confirmPw.value){
				alert('두 비밀번호는 같은 비밀번호로 입력하세요.')
				return ;
			}
			
			var f = document.getElementById('f')
			f.submit();
		}
		
