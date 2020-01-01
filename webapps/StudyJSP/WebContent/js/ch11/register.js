var status = true;

$(document).ready(function()
{
	// [ID중복확인] 버튼을 클릭하면 자동실행
	// 입력한 아이디 값을 갖고 confirmId.jsp 페이지 실행
	$("#checkId").click(function()
	{
		if ($("#id").val())
		{
			// 아이디를 입력하고 [ID중복확인] 버튼을 클릭한 경우
			var query = {
				id: $("#id").val()
			};

			$.ajax({
				// 요청 방식
				type: "POST",

				// 요청 페이지
				url: "confirmId.jsp",

				// 파라미터
				data: query,

				// 요청 페이지 처리에 성공 시
				success: function(data)
				{
					// 사용할 수 없는 아이디
					if (data == 1)
					{
						alert("사용할 수 없는 아이디");
						$("#id").val();
					}

					// 사용할 수 있는 아이디
					else if (data == -1)
					{
						alert("사용할 수 있는 아이디");
					}
				}
			});
		}

		// 아이디를 입력하지 않고 [ID중복확인] 버튼을 클릭한 경우
		else
		{
			alert("사용할 아이디를 입력");
			$("#id").focus();
		}
	});

	// [가입하기] 버튼을 클릭하면 자동 실행
	// 사용자가 가입 폼인 registerForm.jsp 페이지에 입력한 내용을 갖고 registerPro.jsp 페이지 실행
	$("#process").click(function()
	{
		// 입력 폼에 입력한 상황 체크
		checkIt();

		if (status)
		{
			var query = {
				id: $("#id").val(),
				passwd: $("#passwd").val(),
				name: $("#name").val(),
				address: $("#address").val(),
				tel: $("#tel").val()
			};

			$.ajax({
				type: "POST",
				url: "registerPro.jsp",
				data: query,
				success: function(data)
				{
					window.location.href = "main.jsp";
				}
			});
		}
	});

	// [취소] 버튼을 클릭하면 자동 실행
	$("#cancle").click(function()
	{
		window.location.href = "main.jsp";
	});
});

// 사용자가 입력 폼에 입력한 상황을 체크
function checkIt()
{
	status = true;

	// 아이디를 입력하지 않으면 수행
	if (!$("#id").val())
	{
		alert("아이디를 입력하세요.");

		$("#id").focus();
		status = false;

		// 사용자가 서비를 요청한 시점으로 돌아감
		return false;
	}

	// 비밀번호를 입력하지 않으면 수행
	if (!$("#passwd").val())
	{
		alert("비밀번호를 입력하세요.");

		$("#passwd").focus();
		status = false;

		return false;
	}

	// 비밀번호와 재입력 비밀번호가 같이 않으면 수행
	if (!$("#repass").val())
	{
		alert("비밀번호를 동일하게 입력하세요.");

		$("#repass").focus();
		status = false;

		return false;
	}

	// 이름을 입력하지 않으면 수행
	if (!$("#name").val())
	{
		alert("이름을 입력하세요.");

		$("#name").focus();
		status = false;

		return false;
	}

	// 주소를 입력하지 않으면 수행
	if (!$("#address").val())
	{
		alert("주소를 입력하세요.");

		$("#address").focus();
		status = false;

		return false;
	}

	// 전화번호를 입력하지 않으면 수행
	if (!$("#tel").val())
	{
		alert("전화번호를 입력하세요.");

		$("#tel").focus();
		status = false;

		return false;
	}
}