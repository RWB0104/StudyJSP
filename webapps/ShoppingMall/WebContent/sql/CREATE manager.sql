CREATE TABLE manager
(
	-- managerId: 관리자의 아이디를 저장하는 필드. 기본키
	managerId VARCHAR(50) NOT NULL PRIMARY KEY,
	
	-- managerPasswd: 관리자의 비밀번호를 저장하는 필드
	managerPasswd VARCHAR(16) NOT NULL
);

INSERT INTO manager(managerId, managerPasswd) VALUES('bookmaster@shop.com', '3141592');