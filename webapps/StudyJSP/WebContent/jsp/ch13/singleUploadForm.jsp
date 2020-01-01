<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>singleUploadForm.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	<link href="../../css/style.css" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
	
	<script src="../../js/lib/jquery-3.4.1.min.js"></script>
	<script src="../../js/lib/jquery.form.min.js"></script>
	<script src="../../js/ch13/singleupload.js"></script>
</head>

<body>
	<form id="upForm1" action="singleUploadPro.jsp" method="POST" enctype="multipart/form-data">
		<div id="form">
			<ul>
				<li>
					<label for="title">제목</label>
					<input type="text" id="title" name="title" size="20" maxlength="50" placeholder="제목입력" autofocus />
				</li>
				
				<li>
					<label for="file1">파일선택</label>
					<input type="file" id="file1" name="file1" />
				</li>
				
				<li>
					<input type="submit" id="upPro1" value="단일 파일 업로드" />
				</li>
			</ul>
		</div>
	</form>
	
	<div id="upResult">
		
	</div>
</body>

</html>