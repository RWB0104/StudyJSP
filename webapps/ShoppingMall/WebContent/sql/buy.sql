CREATE TABLE buy
(
	-- buy_id: ��ǰ ���� ���̵� �����ϴ� �ʵ�. ��꿡 ���ؼ� ����
	buy_id BIGINT NOT NULL,
	
	-- buyer: �����ڸ� �����ϴ� �ʵ�
	buyer VARCHAR(50) NOT NULL,
	
	-- book_id: ������ ��ǰ ���̵� �����ϴ� �ʵ�
	book_id VARCHAR(12) NOT NULL,
	
	-- book_title: ������ ��ǰ���� �����ϴ� �ʵ�
	book_title VARCHAR(100) NOT NULL,
	
	-- buy_price: ������ ��ǰ ������ �����ϴ� �ʵ�
	buy_price INT NOT NULL,
	
	-- buy_count: ������ ��ǰ�� ������ �����ϴ� �ʵ�
	buy_count TINYINT NOT NULL,
	
	-- book_image: ������ ��ǰ�� �̹����� �����ϴ� �ʵ�
	book_image VARCHAR(16) DEFAULT 'nothing.jpg',
	
	-- buy_date: �������� �����ϴ� �ʵ�
	buy_date DATETIME NOT NULL,
	
	-- account: �Ա��� ���¹�ȣ�� �����ϴ� �ʵ�
	account VARCHAR(50) NOT NULL,
	
	-- deliveryName: ����� �̸��� �����ϴ� �ʵ�
	deliveryName VARCHAR(10) NOT NULL,
	
	-- deliveryTel: ����� ��ȭ��ȣ�� �����ϴ� �ʵ�
	deliveryTel VARCHAR(20) NOT NULL,
	
	-- deliveryAddress: ����� �ּҸ� �����ϴ� �ʵ�
	deliveryAddress VARCHAR(100) NOT NULL,
	
	-- sanction: ��� ��Ȳ�� �����ϴ� �ʵ�
	sanction VARCHAR(10) DEFAULT '��ǰ�غ���'
);