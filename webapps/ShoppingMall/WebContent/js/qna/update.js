$(document).ready(function()
{
	// [수정] 버튼 클릭
	$("#update").click(function()
	{
		var book_id = $("#book_id").val();
		var book_kind = $("#book_kind").val();

		var query = {
			qna_content: $("#updateCont").val(),
			qna_id: $("#qna_id").val()
		};

		$.ajax({
			type: "POST",
			url: "/ShoppingMall/qnaUpdatePro.do",
			data: query,
			success: function(data)
			{
				var str1 = "<p id=\"ck\">";
				var loc = data.indexOf(str1);
				var len = str1.length;
				var check = data.substr(loc + len, 1);

				if (check == "1")
				{
					alert("QnA가 수정되었습니다.");

					var query = "/ShoppingMall/bookContent.do?book_id=" + book_id + "&book_kind=" + book_kind;

					window.location.href = query;
				}

				else
				{
					alert("QnA 수정 실패");
				}
			}
		});
	});

	// [취소] 버튼 클릭
	$("#cancel").click(function()
	{
		var book_id = $("#book_id").val();
		var book_kind = $("#book_kind").val();

		var query = "/ShoppingMall/bookContent.do?book_id=" + book_id + "&book_kind=" + book_kind;

		window.location.href = query;
	});
});