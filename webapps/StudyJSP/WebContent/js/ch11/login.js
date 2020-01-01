var status = true;

$(document).ready(function()
{
	// [회원가입] 버튼을 클릭하면 자동실행
	$("#register").click(function()
	{
		// [회원가입] 버튼 클릭시 회원 가입폼 registerForm.jsp 페이지를 id 속성값이 main_auth인 영역에 로드
		$("#main_auth").load("registerForm.jsp");
	});

	// [로그인] 버튼을 클릭하면 자동 실행
	// 입력한 아이디와 비밀번호를 갖고 loginPro.jsp 페이지 실행
	$("#login").click(function()
	{
		// 입력 폼에 입력한 상황 체크
		checkIt();

		if (status)
		{
			// 입력된 사용자의 아이디와 비밀번호를 얻어냄
			var query = {
				id: $("#id").val(),
				passwd: $("#passwd").val()
			};

			$.ajax({
				type: "POST",
				url: "loginPro.jsp",
				data: query,
				success: function(data)
				{
					// 로그인 성공
					if (data == 1)
					{
						$("#main_auth").load("loginForm.jsp");
					}

					// 비밀번호 틀림
					else if (data == 0)
					{
						alert("비밀번호가 맞지 않습니다.");

						$("#passwd").val("");
						$("#passwd").focus();
					}

					// 아이디 틀림
					else if (data == -1)
					{
						alert("아이디가 맞지 않습니다.");

						$("#id").val("");
						$("#passwd").val("");
						$("#id").focus();
					}
				}
			});
		}
	});

	/* -- 인증된 사용자 영역을 처리하는 버튼들 -- */
	// [회원 정보 변경] 버튼을 클릭하면 자동 실행
	$("#update").click(function()
	{
		// [회원정보수정] 버튼 클릭시 회원 정보 수정 및 회원 탈퇴를 위한 modify.jsp 페이지 요청
		$("#main_auth").load("modify.jsp");
	});

	// [로그아웃] 버튼을 클릭하면 자동 실행
	// [회원정보수정] 버튼 클릭시 logout.jsp 페이지를 실행
	$("#logout").click(function()
	{
		$.ajax({
			type: "POST",
			url: "logout.jsp",
			success: function(data)
			{
				$("#main_auth").load("loginForm.jsp");
			}
		});
	});
});

function checkIt()
{
	status = true;

	if (!$.trim($("#id").val()))
	{
		alert("아이디를 입력하세요.");

		$("#id").focus();
		status = false;
		return false;
	}

	if (!$.trim($("#passwd").val()))
	{
		alert("비밀번호를 입력하세요.");

		$("#passwd").focus();
		status = false;
		return false;
	}
}