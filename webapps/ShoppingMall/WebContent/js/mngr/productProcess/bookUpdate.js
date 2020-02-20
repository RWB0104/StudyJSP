$(document).ready(function()
{
	// [책수정] 버튼 클릭
	$("#upForm1").ajaxForm({
		// 업로드에 성공하면 수행
		success: function(data, status)
		{
			window.location.href = "/ShoppingMall/mg/bookList.do?book_kind=all";
		}
	});

	// [관리자 메인으로] 버튼 클릭
	$("#bookMain").click(function()
	{
		window.location.href = "/ShoppingMall/mg/managerMain.do";
	});

	// [목록으로] 버튼 클릭
	$("#bookList").click(function()
	{
		window.location.href = "/ShoppingMall/mg/bookList.do?book_kind=all";
	});
});