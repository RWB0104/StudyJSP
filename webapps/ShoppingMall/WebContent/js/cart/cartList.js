$(document).ready(function()
{
	// [쇼핑계속] 버튼 클릭
	$("#conShopping").click(function()
	{
		window.location.href = "/ShoppingMall/list.do?book_kind=all";
	});

	// [메인으로] 버튼 클릭
	$("#shopMain").click(function()
	{
		window.location.href = "/ShoppingMall/index.do";
	});
});

// [수정] 버튼 클릭
function editSu(editBtn)
{
	var rStr = editBtn.name;
	var arr = rStr.split(",");

	var query = "/ShoppingMall/cartUpdateForm.do?cart_id=" + arr[0] + "&buy_count=" + arr[1];

	window.location.href = query;
}

// [삭제] 버튼 클릭
function delList(delBtn)
{
	var rStr = delBtn.name;

	var query = "/ShoppingMall/deleteCart.do?list=" + rStr;

	window.location.href = query;
}