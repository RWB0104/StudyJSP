<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>multiUploadForm.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	<link href="../../css/style.css" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
	
	<script src="../../js/lib/jquery-3.4.1.min.js"></script>
	<script src="../../js/lib/jquery.form.min.js"></script>
	<script src="../../js/ch13/multiupload.js"></script>
</head>

<body>
	<form id="upForm1" action="multiUploadPro.jsp" method="POST" enctype="multipart/form-data">
		<div id="form">
			<ul>
				<li>
					<p class="cau">※ 파일선택기에서 ctrl, shift키를 눌러 파일을 다중선택 하십시오.</p>
					<label for="file1">파일선택</label>
					<input type="file" id="file1" name="file1" multiple />
				</li>
				
				<li>
					<input type="submit" id="upPro1" value="다중 파일 업로드" />
				</li>
			</ul>
		</div>
	</form>
	
	<div id="upResult">
	
	</div>
</body>

</html>