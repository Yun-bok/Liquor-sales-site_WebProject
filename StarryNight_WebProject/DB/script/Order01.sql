CREATE TABLE order01 (
	order_no NUMBER NOT NULL, /* 주문번호 */
	member_no NUMBER, /* 회원번호 */
	product_no NUMBER, /* 상품번호 */
	order_date DATE, /* 주문일자 */
	order_amount NUMBER, /* 주문금액 */
	order_qty  NUMBER, /* 주문수량 */
	store_no NUMBER /* 매장번호 */
);

--SELECT * FROM product WHERE product_no=15;
--SELECT * FROM product WHERE store_no=3;
SELECT*FROM order01;
INSERT INTO order01 values(seq_order.nextval,2,2,to_char(sysdate),49900*2,2,1);
INSERT INTO order01 values(seq_order.nextval,2,7,to_char(sysdate),49900*2,2,1);
INSERT INTO order01 values(seq_order.nextval,2,9,to_char(sysdate),61900*3,3,1);
INSERT INTO order01 values(seq_order.nextval,3,4,to_char(sysdate),5900*5,5,2);
INSERT INTO order01 values(seq_order.nextval,3,6,to_char(sysdate),5500*7,7,2);
INSERT INTO order01 values(seq_order.nextval,3,12,to_char(sysdate),79000*1,1,2);
INSERT INTO order01 values(seq_order.nextval,4,13,to_char(sysdate),12800*3,3,3);
INSERT INTO order01 values(seq_order.nextval,4,14,to_char(sysdate),14800*2,2,3);
INSERT INTO order01 values(seq_order.nextval,4,15,to_char(sysdate),19900*2,2,3);