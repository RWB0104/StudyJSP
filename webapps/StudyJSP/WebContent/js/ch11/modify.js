var status = true;

$(document).ready(function()
{
	// modify.jsp 페이지의 [정보수정] 버튼을 클릭하면 자동실행
	// 입력한 비밀번호를 갖고 memberCheck.jsp 페이지 실행
	$("#modify").click(function()
	{
		var query = {
			passwd: $("#passwd").val()
		};

		$.ajax({
			type: "POST",
			url: "memberCheck.jsp",
			data: query,
			success: function(data)
			{
				// 비밀번호가 맞음
				if (data == 1)
				{
					$("#main_auth").load("modifyForm.jsp?passwd=" + $("#passwd").val());
				}

				// 비밀번호 틀림
				else
				{
					alert("비밀번호가 맞지 않습니다.");

					$("#passwd").val("");
					$("#passwd").focus();
				}
			}
		});
	});

	// modifyForm.jsp 페이지의 [수정] 버튼 클릭시 자동 실행
	// 수정 폼에 입력한 값을 갖고 modifyPro.jsp 실행
	$("#modifyProcess").click(function()
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
			url: "modifyPro.jsp",
			data: query,
			success: function(data)
			{
				// 정보 수정 성공
				if (data == 1)
				{
					alert("회원 정보가 수정되었습니다.");
					window.location.href = "main.jsp";
				}
			}
		});
	});

	// modifyForm.jsp 페이지의 [취소] 버튼 클릭 시 자동 실행
	$("#cancle").click(function()
	{
		window.location.href = "main.jsp";
	});

	// modify.jsp 페이지의 [탈퇴] 버튼을 클릭하면 자동 실행
	// [회원정보수정] 버튼 클릭 시 입력한 비밀번호를 갖고 memberCheck.jsp 실행 후 비밀번호가 맞으면 deletePro.jsp 페이지를 실행
	$("#delete").click(function()
	{
		var query = {
			passwd: $("#passwd").val()
		};

		$.ajax({
			type: "POST",
			url: "memberCheck.jsp",
			data: query,
			success: function(data)
			{
				// 비밀번호 맞음
				if (data == 1)
				{
					// 회원 탈퇴 페이지 deletePro.jsp 실행
					$.ajax({
						type: "POST",
						url: "deletePro.jsp",
						data: query,
						success: function(data)
						{
							// 탈퇴 성공
							if (data == 1)
							{
								alert("회원 탈퇴가 되었습니다.");
								$("#main_auth").load("loginForm.jsp");
							}
						}
					});
				}

				// 비밀번호 틀림
				else
				{
					alert("비밀번호가 맞지 않습니다.");
					$("#passwd").val("");
					$("#passwd").focus();
				}
			}
		});
	});
});