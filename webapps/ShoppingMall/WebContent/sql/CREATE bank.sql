CREATE TABLE bank
(
	-- account: ���� ���¹�ȣ ���� �ʵ�
	account VARCHAR(30) NOT NULL,
	
	-- bank: ����� ���� �ʵ�
	bank VARCHAR(10) NOT NULL,
	
	-- name: ������ ���� �ʵ�
	name VARCHAR(10) NOT NULL
);

INSERT INTO bank(account, bank, name) VALUES('11111-111-11111', '��������', '������');