CREATE TABLE manager
(
	-- managerId: �������� ���̵� �����ϴ� �ʵ�. �⺻Ű
	managerId VARCHAR(50) NOT NULL PRIMARY KEY,
	
	-- managerPasswd: �������� ��й�ȣ�� �����ϴ� �ʵ�
	managerPasswd VARCHAR(16) NOT NULL
);

INSERT INTO manager(managerId, managerPasswd) VALUES('bookmaster@shop.com', '3141592');