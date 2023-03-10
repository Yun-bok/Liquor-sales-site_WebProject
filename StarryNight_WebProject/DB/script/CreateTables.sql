/* 주문상태 */
CREATE TABLE orderStatus (
	completed NUMBER, /* 결제완료 */
	pickup NUMBER, /* 픽업예정 */
	confirm NUMBER, /* 구매확정 */
	cancel NUMBER, /* 주문취소 */
	exchange NUMBER, /* 상품교환  */
	order_no NUMBER /* 주문번호 */
);

/* 회원 */
CREATE TABLE member (
	member_no NUMBER NOT NULL, /* 회원번호 */
	email VARCHAR2(100), /* 이메일 */
	pswd VARCHAR2(100), /* 비밀번호 */
	name VARCHAR2(100), /* 이름 */
	birthDate DATE, /* 생년월일 */
	contact VARCHAR2(20), /* 연락처 */
	address VARCHAR2(200), /* 주소 */
	auth CHAR(1) /* 권한 */
);
--회원
--INSERT INTO MEMBER values(seq_member.nextval, #{email}, #{pswd}, #{name}, #{birthDate}, #{contact}, #{address}, 'U');
--관리자
--INSERT INTO MEMBER values(1, 'admin', '1111', '관리자', to_char(sysdate, 'YYYY-DD-MM'), '01012345678', '서울시', 'A');

CREATE SEQUENCE seq_member
 	INCREMENT BY 1
 	START WITH 2;
 
ALTER TABLE MEMBER ADD CONSTRAINT PK_member PRIMARY KEY (member_no);

/* 위시리스트 */
CREATE TABLE wishlist (
	product_no NUMBER NOT NULL, /* 상품번호 */
	member_no NUMBER /* 회원번호 */
);

/* 주문 */
CREATE TABLE order01 (
	order_no NUMBER NOT NULL, /* 주문번호 */
	member_no NUMBER, /* 회원번호 */
	product_no NUMBER, /* 상품번호 */
	order_date DATE, /* 주문일자 */
	order_amount NUMBER, /* 주문금액 */
	order_qty  NUMBER, /* 주문수량 */
	store_no NUMBER /* 매장번호 */
);

CREATE SEQUENCE seq_order
 	INCREMENT BY 1
 	START WITH 1;

ALTER TABLE ORDER ADD CONSTRAINT PK_order PRIMARY KEY (order_no);

/* 매장 */
CREATE TABLE store (
	store_no NUMBER NOT NULL, /* 매장번호 */
	store_name VARCHAR2(100), /* 이름 */
	store_loc VARCHAR2(200), /* 주소 */
	store_contact VARCHAR2(20) /* 연락처 */
);


CREATE SEQUENCE seq_store
 	INCREMENT BY 1
 	START WITH 1;

ALTER TABLE store ADD CONSTRAINT PK_store PRIMARY KEY (store_no);

/* 상품 */
CREATE TABLE product (
	product_no NUMBER NOT NULL, /* 상품번호 */
	product_name VARCHAR2(50), /* 상품이름 */
	product_img VARCHAR2(200), /* 이미지이름 */
	product_price NUMBER, /* 상품가격 */
	product_info VARCHAR2(500), /* 상품정보 */
	ac_category VARCHAR2(50), /* 주류카테고리 */
	w_category VARCHAR2(50), /* 날씨카테고리 */
	store_no NUMBER /* 매장번호 */
);

CREATE SEQUENCE seq_product
 	INCREMENT BY 1
 	START WITH 1;

ALTER TABLE product ADD CONSTRAINT PK_product PRIMARY KEY (product_no);

/* 리뷰 */
CREATE TABLE review (
	review_no NUMBER NOT NULL, /* 리뷰번호 */
	review_title VARCHAR2(100), /* 제목 */
	review_content VARCHAR2(500), /* 내용 */
	review_img VARCHAR2(200), /* 이미지이름 */
	product_no NUMBER /* 상품번호 */
);

CREATE SEQUENCE seq_review
 	INCREMENT BY 1
 	START WITH 1;
 
ALTER TABLE review ADD CONSTRAINT PK_review PRIMARY KEY (review_no);

/* 메인페이지 */
CREATE TABLE mainPage (
	wData DATE NOT NULL, /* 날씨데이터 */
	rcmm_weather VARCHAR2(50), /* 날씨별 추천 주류 */
	member_no NUMBER /* 회원번호 */
);

ALTER TABLE mainPage ADD CONSTRAINT PK_mainPage PRIMARY KEY (wData);

/* 날씨데이터 */
CREATE TABLE weatherData (
	wData DATE, /* 날씨데이터 */
	sunny VARCHAR2(30), /* 맑음 */
	cloudy VARCHAR2(30), /* 흐림 */
	rain VARCHAR2(30), /* 비 */
	snow VARCHAR2(30), /* 눈 */
	gale VARCHAR2(30) /* 강품 */
);

/* 이벤트 */
CREATE TABLE event (
	event_no NUMBER NOT NULL, /* 이벤트번호 */
	event_title VARCHAR2(100), /* 제목 */
	event_content VARCHAR2(500), /* 내용 */
	event_regDate DATE, /* 작성일 */
	event_stDate DATE, /* 시작일 */
	event_dueDate DATE, /* 마감일 */
	event_img VARCHAR2(200), /* 첨부파일명 */
	event_readCnt number /* 조회수 */
);

CREATE SEQUENCE seq_event
 	INCREMENT BY 1
 	START WITH 1;

 /* 장바구니 */

CREATE TABLE basket(
	member_no NUMBER NOT NULL, /* 회원번호 */
	product_no NUMBER NOT NULL, /* 상품번호 */
	product_cnt	NUMBER			/* 갯수 */
);

ALTER TABLE basket ADD CONSTRAINT PK_basket PRIMARY KEY (member_no, product_no);

ALTER TABLE event ADD CONSTRAINT PK_event PRIMARY KEY (event_no);

ALTER TABLE orederStatus ADD CONSTRAINT FK_order_TO_orederStatus FOREIGN KEY (order_no) REFERENCES order01 (order_no);

ALTER TABLE wishlist ADD CONSTRAINT FK_product_TO_wishlist FOREIGN KEY (product_no) REFERENCES product (product_no);

ALTER TABLE wishlist ADD CONSTRAINT FK_member_TO_wishlist FOREIGN KEY (member_no) REFERENCES member (member_no);

ALTER TABLE ORDER01 ADD CONSTRAINT FK_member_TO_order FOREIGN KEY (member_no) REFERENCES member (member_no);

ALTER TABLE ORDER01 ADD CONSTRAINT FK_product_TO_order FOREIGN KEY (product_no) REFERENCES product (product_no);

ALTER TABLE ORDER01 ADD CONSTRAINT FK_store_TO_order FOREIGN KEY (store_no) REFERENCES store (store_no);

ALTER TABLE product ADD CONSTRAINT FK_store_TO_product FOREIGN KEY (store_no) REFERENCES store (store_no);

ALTER TABLE review ADD CONSTRAINT FK_product_TO_review FOREIGN KEY (product_no) REFERENCES product (product_no);

ALTER TABLE mainPage ADD CONSTRAINT FK_member_TO_mainPage FOREIGN KEY (member_no) REFERENCES member (member_no);

ALTER TABLE weatherData ADD CONSTRAINT FK_mainPage_TO_weatherData FOREIGN KEY (wData) REFERENCES mainPage (wData);

ALTER TABLE basket ADD CONSTRAINT FK_member_TO_basket FOREIGN KEY (member_no) REFERENCES member (member_no);

ALTER TABLE basket ADD CONSTRAINT FK_product_TO_basket FOREIGN KEY (product_no) REFERENCES product (product_no);






