$(document).ready(function()
{
	// AJAX 방식으로 요청 페이지를 호출해 파일을 업로드한다.
	$("#upForm1").ajaxForm({
		// 업로드에 성공하면 수행
		success: function(data, status)
		{
			// 응답받은 결과를 표시
			$("#upResult").html(data);
		}
	});
});