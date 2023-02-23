--회원
--INSERT INTO MEMBER values(seq_member.nextval, #{email}, #{pswd}, #{name}, #{birthDate}, #{contact}, #{address}, 'U');

--관리자
INSERT INTO MEMBER values(1, 'admin', '1111', '관리자', to_char(sysdate, 'YYYYDDMM'), '01012345678', '서울시', 'A');


INSERT INTO MEMBER values(seq_member.nextval, 'yyuri@naver.com', '123123', '한유리', '1987-02-24', '01012344432', '서울특별시', 'U');
INSERT INTO MEMBER values(seq_member.nextval, 'hooni@naver.com', '112233', '이훈이', '1988-08-31', '01022232331', '광주광역시', 'U');
INSERT INTO MEMBER values(seq_member.nextval, 'chulsoo@naver.com', '123321', '김철수', '1992-04-28', '01023112324', '경기도 의정부시', 'U');

SELECT * FROM MEMBER;

