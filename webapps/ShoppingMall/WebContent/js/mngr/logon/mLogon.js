$(document).ready(function()
{
	// [로그인] 버튼을 클릭하면 자동 실행
	$("#logon").click(function()
	{
		var query = {
			id: $("#id").val(),
			passwd: $("#passwd").val()
		};

		$.ajax({
			type: "POST",
			url: "/ShoppingMall/mg/managerLoginPro.do",
			data: query,
			success: function(data)
			{
				window.location.href = "/ShoppingMall/mg/managerMain.do";
			}
		});
	});

	// [로그아웃] 버튼을 클릭하면 자동 실행
	$("#logout").click(function()
	{
		$.ajax({
			type: "POST",
			url: "/ShoppingMall/mg/managerLogout.do",
			success: function(data)
			{
				window.location.href = "/ShoppingMall/mg/managerMain.do";
			}
		});
	});
});