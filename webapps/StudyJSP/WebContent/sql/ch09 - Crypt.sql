SELECT * FROM `member`;

ALTER TABLE `member` MODIFY passwd VARCHAR(60) NOT NULL;

DESC `member`;