$(document).ready(function()
{
	// [회원가입] 버튼 클릭
	$("#uRes").click(function()
	{
		window.location.href = "/ShoppingMall/registerForm.do";
	});

	// [로그인] 버튼 클릭
	$("#uLogin").click(function()
	{
		var query = {
			id: $("#cid").val(),
			passwd: $("#cpasswd").val()
		};

		$.ajax({
			type: "POST",
			url: "/ShoppingMall/loginPro.do",
			data: query,
			success: function(data)
			{
				var str1 = "<p id=\"ck\">";
				var loc = data.indexOf(str1);
				var len = str1.length;
				var check = data.substr(loc + len, 1);

				if (check == "1")
				{
					window.location.href = "/ShoppingMall/index.do";
				}

				else if (check == "0")
				{
					alert("비밀번호 틀림");

					$("#cpasswd").val("");
				}

				else
				{
					alert("아이디 틀림");

					$("#cid").val("");
					$("#cpasswd").val("");
				}
			}
		});
	});

	// [회원 정보 변경] 버튼 클릭
	$("#uUpdate").click(function()
	{
		window.location.href = "/ShoppingMall/modify.do";
	});

	// [로그아웃] 버튼 클릭
	$("#uLogout").click(function()
	{
		$.ajax({
			type: "POST",
			url: "/ShoppingMall/logout.do",
			success: function(data)
			{
				window.location.href = "/ShoppingMall/index.do";
			}
		});
	});

	// [장바구니] 버튼 클릭
	$("#cart").click(function()
	{
		window.location.href = "/ShoppingMall/cartList.do";
	});

	// [구매내역] 버튼 클릭
	$("#buy").click(function()
	{
		window.location.href = "/ShoppingMall/buyList.do";
	});
});