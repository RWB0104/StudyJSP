$(document).ready(function()
{
	// [등록] 버튼 클릭
	$("#regist").click(function()
	{
		var book_kind = $("#book_kind").val();
		var book_id = $("#book_id").val();

		var query = {
			qna_content: $("#qnaCont").val(),
			qna_writer: $("#qna_writer").val(),
			book_title: $("#book_title").val(),
			book_id: $("#book_id").val(),
			qora: $("#qora").val()
		};

		$.ajax({
			type: "POST",
			url: "/ShoppingMall/qnaPro.do",
			data: query,
			success: function(data)
			{
				var str1 = "<p id=\"ck\">";
				var loc = data.indexOf(str1);
				var len = str1.length;
				var check = data.substr(loc + len, 1);

				if (check == "1")
				{
					alert("QnA가 등록되었습니다.");

					var query = "/ShoppingMall/bookContent.do?book_id=" + book_id + "&book_kind=" + book_kind;

					window.location.href = query;
				}

				else
				{
					alert("QnA 등록 실패");
				}
			}
		});
	});

	// [취소] 버튼 클릭
	$("#cancel").click(function()
	{
		var book_kind = $("#book_kind").val();
		var book_id = $("#book_id").val();

		var query = "/ShoppingMall/bookContent.do?book_id=" + book_id + "&book_kind=" + book_kind;

		window.location.href = query;
	});
});