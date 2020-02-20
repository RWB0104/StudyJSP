CREATE TABLE qna
(
	-- qna: QnA�� ���̵� �����ϴ� �ʵ�. �⺻Ű�̰� �ڵ� ����
	qna_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	
	-- book_id: ��ǰ���� ���Ǹ� �׷��ϱ� ���� ���� �����ϴ� �ʵ�
	book_id INT NOT NULL,
	
	-- book_title: QnA ��ǰ���� �����ϴ� �ʵ�
	book_title VARCHAR(100) NOT NULL,
	
	-- qna_writer: �ۼ��ڸ� �����ϴ� �ʵ�
	qna_writer VARCHAR(50) NOT NULL,
	
	-- qna_content: ���� ������ �����ϴ� �ʵ�
	qna_content TEXT NOT NULL,
	
	-- group_id: ������ �亯�� �׷�ȭ�ϱ� ���� ���� �����ϴ� �ʵ�
	group_id INT NOT NULL,
	
	-- qora: ������ �亯�� ������ ������ ���� �����ϴ� �ʵ�
	qora TINYINT NOT NULL,
	
	-- reply: �亯�� �ߴ��� ���θ� �����ϴ� �ʵ�
	reply TINYINT DEFAULT 0,
	
	-- reg_date: ���� ������� �����ϴ� �ʵ�
	reg_date DATETIME NOT NULL
);