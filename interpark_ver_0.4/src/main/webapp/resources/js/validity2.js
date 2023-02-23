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
	$("#updateForm").validate({
		rules : {

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
			},
			phone : {
				required : true,
				maxlength : 11,
			}
		},
		messages : {

			
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
			},
			phone : {
				required : "전화번호를 입력하세요.",
			}

		}
	});
});