CREATE TABLE `member`
(
	-- id: ȸ�� ���̵�
	id VARCHAR(50) NOT NULL PRIMARY KEY,
	
	-- passwd: ȸ�� ��й�ȣ
	passwd VARCHAR(60) NOT NULL,
	
	-- name: ȸ�� �̸�
	name VARCHAR(10) NOT NULL,
	
	-- reg_date: �������
	reg_date datetime NOT NULL,
	
	-- address: �ּ�
	address VARCHAR(100) NOT NULL,
	
	-- tel: ��ȭ��ȣ
	tel VARCHAR(20) NOT NULL
)