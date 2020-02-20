$(document).ready(function()
{
	// [관리자 메인으로] 버튼 클릭
	$("#bookMain").click(function()
	{
		window.location.href = "/ShoppingMall/mg/managerMain.do";
	});
});

// [답변하기] 버튼 클릭
function reply(replyBtn)
{
	var rStr = replyBtn.name;
	var query = "/ShoppingMall/mg/qnaReplyForm.do?qna_id=" + rStr;

	window.location.href = query;
}

// [수정] 버튼 클릭
function edit(editBtn)
{
	var rStr = editBtn.name;
	var query = "/ShoppingMall/mg/qnaReplyUpdateForm.do?qna_id=" + rStr;

	window.location.href = query;
}