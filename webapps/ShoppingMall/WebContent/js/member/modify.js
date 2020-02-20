$(document).ready(function()
{
	// [수정] 버튼 클릭
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
			url: "/ShoppingMall/modifyPro.do",
			data: query,
			success: function(data)
			{
				var str1 = "<p id=\"ck\">";
				var loc = data.indexOf(str1);
				var len = str1.length;
				var check = data.substr(loc + len, 1);

				if (check == "1")
				{
					alert("회원정보가 수정되었습니다.");
					window.location.href = "/ShoppingMall/modify.do";
				}

				else
				{
					alert("비밀번호 틀림.");

					$("#passwd").val("");
					$("#passwd").focus();
				}
			}
		});
	});

	// [취소] 버튼 클릭
	$("#cancel").click(function()
	{
		window.location.href = "/ShoppingMall/modify.do";
	});
});