SELECT * FROM orderstatus;

SELECT product_name, product_info, order_date, o.order_no, order_amount, completed
FROM order01 o, member m, product p, orderstatus os
WHERE o.member_no = m.member_no AND o.product_no = p.product_no AND o.order_no = os.order_no   
AND m.member_no=2
ORDER BY order_date DESC;

SELECT * FROM ORDER01;
SELECT * FROM product;
SELECT * FROM MEMBER;


INSERT INTO orderstatus values(1, 0, 0, 0, 0, 1); 
INSERT INTO orderstatus values(1, 0, 0, 0, 0, 2); 
INSERT INTO orderstatus values(1, 0, 0, 0, 0, 3); 

INSERT INTO orderstatus values(1, 1, 0, 0, 0, 4);
INSERT INTO orderstatus values(1, 1, 0, 0, 0, 5); 
INSERT INTO orderstatus values(1, 1, 1, 0, 0, 6);

INSERT INTO orderstatus values(1, 1, 1, 0, 0, 7); 
INSERT INTO orderstatus values(1, 0, 0, 1, 0, 8); 
INSERT INTO orderstatus values(1, 0, 0, 0, 1, 9); 

	SELECT product_name, product_info, order_date, o.order_no, order_amount, completed, pickup, confirm, cancel, exchange
		FROM   order01 o, member m, product p, orderstatus os
		WHERE  o.member_no = m.member_no AND o.product_no = p.product_no AND o.order_no = os.order_no 
		AND    m.member_no = 3
		ORDER BY order_date DESC;