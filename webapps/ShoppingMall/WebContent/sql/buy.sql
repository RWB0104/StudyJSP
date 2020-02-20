CREATE TABLE buy
(
	-- buy_id: 상품 구매 아이디를 저장하는 필드. 계산에 의해서 생성
	buy_id BIGINT NOT NULL,
	
	-- buyer: 구매자를 저장하는 필드
	buyer VARCHAR(50) NOT NULL,
	
	-- book_id: 구매한 상품 아이디를 저장하는 필드
	book_id VARCHAR(12) NOT NULL,
	
	-- book_title: 구매한 상품명을 저장하는 필드
	book_title VARCHAR(100) NOT NULL,
	
	-- buy_price: 구매한 상품 가격을 저장하는 필드
	buy_price INT NOT NULL,
	
	-- buy_count: 구매한 상품의 수량을 저장하는 필드
	buy_count TINYINT NOT NULL,
	
	-- book_image: 구매한 상품의 이미지를 저장하는 필드
	book_image VARCHAR(16) DEFAULT 'nothing.jpg',
	
	-- buy_date: 구매일을 저장하는 필드
	buy_date DATETIME NOT NULL,
	
	-- account: 입금할 계좌번호를 저장하는 필드
	account VARCHAR(50) NOT NULL,
	
	-- deliveryName: 배송지 이름을 저장하는 필드
	deliveryName VARCHAR(10) NOT NULL,
	
	-- deliveryTel: 배송지 전화번호를 저장하는 필드
	deliveryTel VARCHAR(20) NOT NULL,
	
	-- deliveryAddress: 배송지 주소를 저장하는 필드
	deliveryAddress VARCHAR(100) NOT NULL,
	
	-- sanction: 배송 상황을 저장하는 필드
	sanction VARCHAR(10) DEFAULT '상품준비중'
);