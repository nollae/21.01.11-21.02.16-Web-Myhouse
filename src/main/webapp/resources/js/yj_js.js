	$(document).ready(function(){
	/**
	*  비밀번호 찾기 버튼 클릭 시 서버전송
	**/
	$("#user_email").click(function(){
		if(ruleCheck($("#email"))){
		
			//ajax를 활용한 서버연동
			$.ajax({
				url:"idCheck.do?email="+$("#email").val(),
				success:function(result){
					if(result==1){
						$("#flash_alert").css("background-color","#b1d8b1").show().text("이메일 확인 부탁드립니다.").delay(2000).fadeOut(2000);
						passUpdateForm.submit();
					}else{
						$("#flash_alert").css("background-color","#ff7d7d").show().text("존재하지않는 이메일입니다. 다시 입력해주세요.").delay(2000).fadeOut(2000);
					}
				}
			});
			
		}
	});
	/** 
	*  아이디 중복 확인 체크
	**/
	$("#email").focusout(function(){
		if(!ruleCheck($("#email"))){
			return false;
		}else{
			//ajax를 활용한 서버연동
			$.ajax({
				url:"idCheck.do?email="+$("#email").val(),
				success:function(result){
					if(result==1){
						$("#idcheck_result").text("이미 중복된 이메일이 존재합니다. 다시 입력해주세요.")
						.css("color","red");
						$("#id").focus();
					}else{
						$(".idcheck").css("display","none");
						$("#email_label").css("color","#292929");
						$("#idcheck_result").text("사용 가능한 이메일입니다.")
						.css("color","#0067a3");
					}
				}
			});
		}
	});
		
	/**
	*	로그인 폼 체크 함수
	**/
	$("#btnLogin").click(function(){
		if(!ruleCheck2($("#email"))){
			return false;
		}else if($("#pass").val() == ""){
			$("#pass").css("border-color","#f77");
			$("#flash_alert").show().text("패스워드를 입력해주세요").delay(2000).fadeOut(2000);
			$("#pass").focus();
			return false;
		}else{
			//서버 전송:폼이름.submit();
			//loginForm.submit();
			//ajax를 활용한 서버연동
			$.ajax({
				url:"loginCheck.do?email="+$("#email").val()+"&pass="+$("#pass").val(),
				success:function(result){
					if(result!=0){
						location.replace('http://localhost:9000/myhouse/index.do');
					}else{
						$("#flash_alert").show().text("이메일 주소 또는 비밀번호가 틀립니다.").delay(2000).fadeOut(2000);
						$("#id").focus();
					}
				}
			});
		}		
	});
	
	
	/**
	 * 회원가입 폼 체크
	 */
	$("#btnJoin").click(function(){
		if(!ruleCheck($("#email"))){			
			return false;
		}else if($("#email").val() == ""){
			$("#email_label").css("color","#f77");
			
			$("#email").css("border-color","#f77");
			$("#email").focus();
			return false;
		}else if($("#pass").val() == ""){
			$("#email_label").css("color","#292929");
			$("#pass_label").css("color","#f77");
			
			$("#email").css("border-color","#dbdbdb");
			$("#pass").css("border-color","#f77");
			$("#pass").focus();
			return false;
		}else if($("#cpass").val() == ""){
			$("#email_label").css("color","#292929");
			$("#pass_label").css("color","#292929");
			$("#cpass_label").css("color","#f77");
			
			$("#email").css("border-color","#dbdbdb");
			$("#pass").css("border-color","#dbdbdb");
			$("#cpass").css("border-color","#f77");
			$("#cpass").focus();
			return false;
		}else if($("#nickname").val() == ""){
			$("#email_label").css("color","#292929");
			$("#pass_label").css("color","#292929");
			$("#cpass_label").css("color","#292929");
			$("#nickname_label").css("color","#f77");
			
			$("#email").css("border-color","#dbdbdb");
			$("#pass").css("border-color","#dbdbdb");
			$("#cpass").css("border-color","#dbdbdb");
			$("#nickname").css("border-color","#f77");
			$("#nickname").focus();
			return false;
		}else if(!$("#checkAll").prop("checked")){
		$("#email_label").css("color","#292929");
			$("#pass_label").css("color","#292929");
			$("#cpass_label").css("color","#292929");
			$("#nickname_label").css("color","#292929");
			
			$("#email").css("border-color","#dbdbdb");
			$("#pass").css("border-color","#dbdbdb");
			$("#cpass").css("border-color","#dbdbdb");
			$("#nickname").css("border-color","#dbdbdb");
			$("#agree_span").css("border-color","#f77");
			alert("약관에 동의해주세요");
			return false;
		}else {
			//서버전송
			joinForm.submit();
		}
	});
	
	/** 
	*  비밀번호, 비밀번호 확인 체크
	**/
	$("#cpass").focusout(function(){
		if($("#pass").val() != "" && $("#cpass").val() !=""){	
			
			if($("#pass").val() == $("#cpass").val()){
				$("#msg").text("패스워드가 동일합니다").css("color","#0067a3");
				$("#name").focus();
				return true; 
			}else{
				$("#msg").text("패스워드가 다릅니다. 다시 입력해주세요").css("color","red");
				$("#pass").val("");
				$("#cpass").val("");
				$("#pass").focus();
				return false;				
			}		
		}
	});//focusout
	
	
	
	
});//ready


	/**
	*	이메일 정규식 체크
	**/
	function ruleCheck(obj){
		var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		
		if(obj.val() == ""){
			$("#email_label").css("color","#f77");
			$("#email").css("border-color","#f77");
			$("#flash_alert").css("background-color","#ff7d7d").show().text("이메일 형식으로 입력해 주세요").delay(2000).fadeOut(2000);
			obj.focus();
			return false;
		}else{
			if(regExp.test(obj.val())){
				$("#email").css("border-color","#bdbdbd");
				return true;	//이메일 형식에 맞는 경우
			}else{
				$("#email_label").css("color","#f77");
				$("#email").css("border-color","#f77");
				$("#flash_alert").css("background-color","#ff7d7d").show().text("이메일 형식으로 입력해 주세요").delay(2000).fadeOut(2000);
				obj.focus();
				return false;
			}
		}	

	}//ruleCheck
	
	/**
	*	이메일 정규식 체크
	**/
	function ruleCheck2(obj){
		var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		
		if(obj.val() == ""){
			$("#flash_alert").show().text("이메일을 입력해주세요").delay(2000).fadeOut(2000);
			obj.focus();
			return false;
		}else{
			if(regExp.test(obj.val())){
				return true;	//이메일 형식에 맞는 경우
			}else{
				$("#flash_alert").show().text("이메일 형식으로 입력해 주세요").delay(2000).fadeOut(2000);
				obj.focus();
				return false;
			}
		}	

	}//ruleCheck
	
	
	
	
	
	
	
	
	