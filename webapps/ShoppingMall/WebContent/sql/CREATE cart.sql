CREATE TABLE cart
(
	-- cart_id: 장바구니의 아이디를 저장하는 필드. 기본키이고 자동 증가
	cart_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	
	-- buyer: 구매자를 저장하는 필드
	buyer VARCHAR(50) NOT NULL,
	
	-- book_id: 구매할 상품의 아이디를 저장하는 필드
	book_id INT NOT NULL,
	
	-- book_title: 구매할 상품의 제목을 저장하는 필드
	book_title VARCHAR(100) NOT NULL,
	
	-- buy_price: 구매할 상품의 가격을 저장하는 필드
	buy_price INT NOT NULL,
	
	-- buy_count: 구매할 상품의 수량을 저장하는 필드
	buy_count TINYINT NOT NULL,
	
	-- book_image: 구매할 제품의 이미지를 저장하는 필드
	book_image VARCHAR(16) DEFAULT 'nothing.jpg'
);