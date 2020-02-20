var status = true;

$(document).ready(function()
{
	// [상품등록] 버튼 클릭
	$("#registProduct").click(function()
	{
		window.location.href = "/ShoppingMall/mg/bookRegisterForm.do";
	});
	
	// [상품수정/삭제] 버튼 클릭
	$("#updateProduct").click(function()
	{
		window.location.href = "/ShoppingMall/mg/bookList.do?book_kind=all";
	});
	
	// [전체구매목록 확인] 버튼 클릭
	$("#orderedProduct").click(function()
	{
		window.location.href = "/ShoppingMall/mg/orderList.do";
	});
	
	// [상품 QnA 답변] 버튼 클릭
	$("#qna").click(function()
	{
		window.location.href = "/ShoppingMall/mg/qnaList.do";
	});
});