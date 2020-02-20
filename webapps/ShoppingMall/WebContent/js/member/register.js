$(document).ready(function()
{
	// [ID 중복확인] 버튼 클릭
	$("#checkId").click(function()
	{
		if ($("#id").val())
		{
			var query = {
				id: $("#id").val()
			};

			$.ajax({
				type: "POST",
				url: "/ShoppingMall/confirmId.do",
				data: query,
				success: function(data)
				{
					var str1 = "<p id=\"ck\">";
					var loc = data.indexOf(str1);
					var len = str1.length;
					var check = data.substr(loc + len, 1);

					// 사용할 수 없는 아이디
					if (check == "1")
					{
						alert("사용할 수 없는 아이디");

						$("#id").val("");
					}

					// 사용할 수 있는 아이디
					else
					{
						alert("사용할 수 있는 아이디");
					}
				}
			});
		}

		// 아이디를 입력하지 않고 [ID 중복확인] 버튼을 클릭한 경우
		else
		{
			alert("사용할 아이디를 입력");

			$("#id").focus();
		}
	});

	// [가입하기] 버튼 클릭
	$("#process").click(function()
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
			url: "/ShoppingMall/registerPro.do",
			data: query,
			success: function(data)
			{
				window.location.href = "/ShoppingMall/index.do";
			}
		});
	});

	// [취소] 버튼 클릭
	$("#cancel").click(function()
	{
		window.location.href = "/ShoppingMall/index.do";
	});
});