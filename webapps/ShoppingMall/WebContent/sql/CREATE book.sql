CREATE TABLE book
(
	-- book_id: å�� ���̵� �����ϴ� �ʵ�, �⺻Ű�̰� �ڵ� ����
	book_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	
	-- book_kind: å�� ������ �����ϴ� �ʵ�
	book_kind VARCHAR(3) NOT NULL,
	
	-- book_title: å�� ������ �����ϴ� �ʵ�
	book_title VARCHAR(100) NOT NULL,
	
	-- book_price: å�� ������ �����ϴ� �ʵ�
	book_price INT NOT NULL,
	
	-- book_count: å�� ����� �����ϴ� �ʵ�
	book_count SMALLINT NOT NULL,
	
	-- author: å�� ���ڸ� �����ϴ� �ʵ�
	author VARCHAR(40) NOT NULL,
	
	-- publishing_com: å�� ���ǻ縦 �����ϴ� �ʵ�
	publishing_com VARCHAR(30) NOT NULL,
	
	-- publishing_date: å�� �Ⱓ���� �����ϴ� �ʵ�
	publishing_date VARCHAR(15) NOT NULL,
	
	-- book_image: å�� �̹����� �����ϴ� �ʵ�
	book_image VARCHAR(16) DEFAULT 'nothing.jpg',
	
	-- book_content: å ��ǰ ���� ������ �����ϴ� �ʵ�
	book_content TEXT NOT NULL,
	
	-- discount_rate: å�� �������� �����ϴ� �ʵ�
	discount_rate TINYINT DEFAULT 10,
	
	-- reg_date: å�� ������� �����ϴ� �ʵ�
	reg_date DATETIME NOT NULL
);