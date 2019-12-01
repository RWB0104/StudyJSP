// XMLHttpRequest 객체를 저장할 변수를 전역변수로 선언
var xhrObject;

// XMLHttpRequest 객체를 생성하는 메소드
function createXHR()
{
	if (window.ActiveXObject)
	{
		// 웹 브라우저가 IE5.0, IE6.0인 경우 XMLHttpRequest 객체 생성
		xhrObject = new ActiveXObject("Microsoft.XMLHTTP");
	}

	else if (window.XMLHttpRequest)
	{
		// 웹 브라우저가 IE7.0 이상, Chrome, FireFox, Safari, Opera 등의 경우 XMLHttpRequest 객체 생성
		xhrObject = new XMLHttpRequest();
	}
}

// 클라이언트로부터 이벤트가 발생시 실행되는 메소드
function startMethod()
{
	// createXHR() 메소드 호출
	createXHR();

	// 응답 결과를 처리메소드인 resultProcess() 메소드로 설정
	xhrObject.onreadystatechange = resultProcess;

	// 서버의 요청설정 - xhrTest1.xml을 요청할 준비
	xhrObject.open("GET", "../../WEB-INF/ch07/xhrTest1.xml", "true");

	// 서버로 요청을 보냄
	xhrObject.send(null);
}

// 응답결과가 오면 자동으로 실행
function resultProcess()
{
	// 요청객체의 상태가 모든 데이터를 받을 수 있는 상태로 완료된 경우
	if (xhrObject.readyState == 4)
	{
		// 서버로부터 응답받는 HTTP상태가 정상인 경우 수행
		if (xhrObject.status == 200)
		{
			// 문자열로 이루어진 서버의 응답을 받아서, id의 값이 "displayArea"에 표시
			document.getElementById("displayArea").innerHTML = xhrObject.responseText;
		}
	}
}