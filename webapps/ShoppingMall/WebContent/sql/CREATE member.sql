CREATE TABLE `member`
(
	-- id: 회원 아이디
	id VARCHAR(50) NOT NULL PRIMARY KEY,
	
	-- passwd: 회원 비밀번호
	passwd VARCHAR(60) NOT NULL,
	
	-- name: 회원 이름
	name VARCHAR(10) NOT NULL,
	
	-- reg_date: 등록일자
	reg_date datetime NOT NULL,
	
	-- address: 주소
	address VARCHAR(100) NOT NULL,
	
	-- tel: 전화번호
	tel VARCHAR(20) NOT NULL
)