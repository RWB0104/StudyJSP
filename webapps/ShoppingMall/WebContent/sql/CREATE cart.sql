CREATE TABLE cart
(
	-- cart_id: ��ٱ����� ���̵� �����ϴ� �ʵ�. �⺻Ű�̰� �ڵ� ����
	cart_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	
	-- buyer: �����ڸ� �����ϴ� �ʵ�
	buyer VARCHAR(50) NOT NULL,
	
	-- book_id: ������ ��ǰ�� ���̵� �����ϴ� �ʵ�
	book_id INT NOT NULL,
	
	-- book_title: ������ ��ǰ�� ������ �����ϴ� �ʵ�
	book_title VARCHAR(100) NOT NULL,
	
	-- buy_price: ������ ��ǰ�� ������ �����ϴ� �ʵ�
	buy_price INT NOT NULL,
	
	-- buy_count: ������ ��ǰ�� ������ �����ϴ� �ʵ�
	buy_count TINYINT NOT NULL,
	
	-- book_image: ������ ��ǰ�� �̹����� �����ϴ� �ʵ�
	book_image VARCHAR(16) DEFAULT 'nothing.jpg'
);