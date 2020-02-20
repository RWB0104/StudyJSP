$(document).ready(function()
{
	// [책등록] 버튼 클릭
	$("#regist").click(function()
	{
		window.location.href = "/ShoppingMall/mg/bookRegisterForm.do";
	});

	// [관리자 메인으로] 버튼 클릭
	$("#bookMain").click(function()
	{
		window.location.href = "/ShoppingMall/mg/managerMain.do";
	});
});

// [수정] 버튼을 클릭하면 자동 실행
function edit(editBtn)
{
	var rStr = editBtn.name;
	var arr = rStr.split(",");
	var query = "/ShoppingMall/mg/bookUpdateForm.do?book_id=" + arr[0] + "&book_kind=" + arr[1];

	window.location.href = query;
}

// [삭제] 버튼을 클릭하면 자동 실행
function del(delBtn)
{
	var rStr = delBtn.name;
	var arr = rStr.split(",");
	var query = "/ShoppingMall/mg/bookDeletePro.do?book_id=" + arr[0] + "&book_kind=" + arr[1];

	window.location.href = query;
}