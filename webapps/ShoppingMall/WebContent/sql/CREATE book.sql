CREATE TABLE book
(
	-- book_id: 책의 아이디를 저장하는 필드, 기본키이고 자동 증가
	book_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	
	-- book_kind: 책의 종류를 저장하는 필드
	book_kind VARCHAR(3) NOT NULL,
	
	-- book_title: 책의 제목을 저장하는 필드
	book_title VARCHAR(100) NOT NULL,
	
	-- book_price: 책의 가격을 저장하는 필드
	book_price INT NOT NULL,
	
	-- book_count: 책의 재고량을 저장하는 필드
	book_count SMALLINT NOT NULL,
	
	-- author: 책의 저자를 저장하는 필드
	author VARCHAR(40) NOT NULL,
	
	-- publishing_com: 책의 출판사를 저장하는 필드
	publishing_com VARCHAR(30) NOT NULL,
	
	-- publishing_date: 책의 출간일을 저장하는 필드
	publishing_date VARCHAR(15) NOT NULL,
	
	-- book_image: 책의 이미지를 저장하는 필드
	book_image VARCHAR(16) DEFAULT 'nothing.jpg',
	
	-- book_content: 책 상품 설명 내용을 저장하는 필드
	book_content TEXT NOT NULL,
	
	-- discount_rate: 책의 할인율을 저장하는 필드
	discount_rate TINYINT DEFAULT 10,
	
	-- reg_date: 책의 등록일을 저장하는 필드
	reg_date DATETIME NOT NULL
);