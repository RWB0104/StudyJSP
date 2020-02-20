CREATE TABLE qna
(
	-- qna: QnA의 아이디를 저장하는 필드. 기본키이고 자동 증가
	qna_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	
	-- book_id: 상품별로 질의를 그룹하기 위한 값을 저장하는 필드
	book_id INT NOT NULL,
	
	-- book_title: QnA 상품명을 저장하는 필드
	book_title VARCHAR(100) NOT NULL,
	
	-- qna_writer: 작성자를 저장하는 필드
	qna_writer VARCHAR(50) NOT NULL,
	
	-- qna_content: 질문 내용을 저장하는 필드
	qna_content TEXT NOT NULL,
	
	-- group_id: 질문과 답변을 그룹화하기 위한 값을 저장하는 필드
	group_id INT NOT NULL,
	
	-- qora: 질문과 답변의 순서를 결정할 값을 저장하는 필드
	qora TINYINT NOT NULL,
	
	-- reply: 답변을 했는지 여부를 저장하는 필드
	reply TINYINT DEFAULT 0,
	
	-- reg_date: 질문 등록일을 저장하는 필드
	reg_date DATETIME NOT NULL
);