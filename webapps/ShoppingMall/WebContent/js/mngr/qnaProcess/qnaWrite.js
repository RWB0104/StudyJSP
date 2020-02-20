$(document).ready(function()
{
	// [답변하기] 버튼 클릭
	$("#replyPro").click(function()
	{
		var query = {
			qna_content: $("#rContent").val(),
			qna_writer: $("#qna_writer").val(),
			book_title: $("#book_title").val(),
			book_id: $("#book_id").val(),
			qna_id: $("#qna_id").val(),
			qora: $("#qora").val()
		};

		$.ajax({
			type: "POST",
			url: "/ShoppingMall/mg/qnaReplyPro.do",
			data: query,
			success: function(data)
			{
				window.location.href = "/ShoppingMall/mg/qnaList.do";
			}
		});
	});

	// [취소] 버튼 클릭
	$("#cancel").click(function()
	{
		window.location.href = "/ShoppingMall/mg/managerMain.do";
	});
});