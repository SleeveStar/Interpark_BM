$(function() {
	$.validator.setDefaults({
		onkeyup : false,
		onclick : false,
		onfocusout : false,
		showErrors : function(errorMap, errorList) {
			if (this.numberOfInvalids()) {
				alert(errorList[0].message);
			}
		}
	});
	$.validator.addMethod("regex", function(value, element, regexpr) {
		return regexpr.test(value);
	});
	$("#signupForm").validate({
		rules : {

			id : {
				required : true,
				minlength : 4,
				regex : /^[0-9|a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]*$/
			},
			pass : {
				required : true,
				minlength : 4,
				maxlength : 12
			},
			mName : {
				required : true,
				regex : /^[0-9|a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]*$/
			},
			email : {
				required : true,
				regex=/([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/
			},
			phone : {
				required : true,
				maxlength : 11,
				regex : /01[016789]-[^0][0-9]{2,3}-[0-9]{3,4}/
			}
		},
		messages : {

			id : {
				required : "아이디를 입력하세요.",
				minlength : " 최소 {0}글자입니다.",
				regex : "공백이나 특수문자를 제거하세요."
			},
			pass : {
				required : "비밀번호를 입력하세요.",
				minlength : " 최소 {0}글자입니다 .",
				maxlength : "최대 {0}글자입니다."
			},
			mName : {
				required : "이름을 입력하세요",
				regex : "공백이나 특수문자를 제거하세요."
			},
			email : {
				required : "이메일을 입력하세요.",
				regex="이메일 형식을 확인해주세요"
			},
			phone : {
				required : "전화번호를 입력하세요.",
				regex : "번호를 다시 한번 확인해주세요"
			}

		}
	});
});