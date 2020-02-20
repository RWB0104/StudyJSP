$(document).ready(function()
{
	// [장바구니에 담기] 버튼 클릭
	$("#insertCart").click(function()
	{
		var buyer = $("#buyer").val();
		var book_kind = $("#book_kind").val();
		var query = {
			book_id: $("#book_id").val(),
			buy_count: $("#buy_count").val(),
			book_image: $("#book_image").val(),
			book_title: $("#book_title").val(),
			buy_price: $("#buy_price").val(),
			buyer: buyer
		};

		$.ajax({
			type: "POST",
			url: "/ShoppingMall/insertCart.do",
			data: query,
			success: function(data)
			{
				alert("장바구니에 담겼습니다.");
			}
		});
	});

	// [목록으로] 버튼 클릭
	$("#list").click(function()
	{
		window.location.href = "/ShoppingMall/list.do?book_kind=all";
	});

	// [메인으로] 버튼 클릭
	$("#shopMain").click(function()
	{
		window.location.href = "/ShoppingMall/index.do";
	});

	// [상품 QnA 쓰기] 버튼 클릭
	$("#writeQna").click(function()
	{
		var book_id = $("#book_id").val();
		var book_kind = $("#book_kind").val();
		var query = "/ShoppingMall/qnaForm.do?book_id=" + book_id + "&book_kind=" + book_kind;

		window.location.href = query;
	});
});

// [수정] 버튼 클릭
function edit(editBtn)
{
	var rStr = editBtn.name;
	var arr = rStr.split(",");
	var query = "/ShoppingMall/qnaUpdateForm.do?qna_id=" + arr[0] + "&book_kind=" + arr[1];

	window.location.href = query;
}

// [삭제] 버튼 클릭
function del(delBtn)
{
	var rStr = delBtn.name;
	var arr = rStr.split(",");
	var query = {
		qna_id: arr[0]
	};

	$.ajax({
		type: "POST",
		url: "/ShoppingMall/qnaDeletePro.do",
		data: query,
		success: function(data)
		{
			var str1 = "<p id=\"ck\">";
			var loc = data.indexOf(str1);
			var len = str1.length;
			var check = data.substr(loc + len, 1);

			if (check == "1")
			{
				alert("QnA가 삭제되었습니다.");

				var query = "/ShoppingMall/bookContent.do?book_id=" + arr[1] + "&book_kind=" + arr[2];

				window.location.href = query;
			}

			else
			{
				alert("QnA가 삭제 실패");
			}
		}
	});
}