CREATE TABLE bank
(
	-- account: 결제 계좌번호 저장 필드
	account VARCHAR(30) NOT NULL,
	
	-- bank: 은행명 저장 필드
	bank VARCHAR(10) NOT NULL,
	
	-- name: 예금주 저장 필드
	name VARCHAR(10) NOT NULL
);

INSERT INTO bank(account, bank, name) VALUES('11111-111-11111', '내일은행', '오내일');