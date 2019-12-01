INSERT INTO `member`(id, passwd, name, reg_date, address, tel)
VALUES('test@naver.com', '1234', '가나다', now(), '서울시', '010-1111-1111');

INSERT INTO `member`(id, passwd, name, reg_date, address, tel)
VALUES('test@gmail.com', '4321', 'ABC', now(), 'New York', '1-123-456-7890');

SELECT * FROM `member`;