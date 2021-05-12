/* Session ���� */
--show parameter processes;
--show parameter sessions;
--show parameter transactions;

--alter system set processes=75000 scope=spfile sid='DB202103152109';
--alter system set sessions=82505 scope=spfile sid='DB202103152109';
--alter system set transactions=90755 scope=spfile sid='DB202103152109';

/* SEQUENCE ���� */
CREATE SEQUENCE board_comment_seq; -- ��� ������ �߰�
CREATE SEQUENCE prdct_image_seq; -- ���� ������ �߰�
CREATE SEQUENCE board_seq; -- �Խñ� ������ �߰�
CREATE SEQUENCE prdct_order_seq; -- �ֹ� ������ �߰�
CREATE SEQUENCE cart_seq; -- ��ٱ��� ������ �߰�

/* inquiry ���� �߰� */
INSERT INTO inquiry (inquiry_number, inquiry_name) VALUES (1, 'EXCHANGE'); -- ��ȯ --
INSERT INTO inquiry (inquiry_number, inquiry_name) VALUES (2, 'REFUND'); -- ȯ�� --
INSERT INTO inquiry (inquiry_number, inquiry_name) VALUES (3, 'CANCEL'); -- �������� --
INSERT INTO inquiry (inquiry_number, inquiry_name) VALUES (4, 'SHIPPING'); -- ��� --
INSERT INTO inquiry (inquiry_number, inquiry_name) VALUES (5, 'FAULTY'); -- �ҷ� --
INSERT INTO inquiry (inquiry_number, inquiry_name) VALUES (6, 'ORDER'); -- �ֹ��װ��� --
INSERT INTO inquiry (inquiry_number, inquiry_name) VALUES (7, 'PRODUCT'); -- ��ǰ�����԰� --
INSERT INTO inquiry (inquiry_number, inquiry_name) VALUES (8, 'POINT'); -- ������ --
INSERT INTO inquiry (inquiry_number, inquiry_name) VALUES (9, 'MEMBER'); -- ȸ������ --
INSERT INTO inquiry (inquiry_number, inquiry_name) VALUES (10, 'ETC'); -- ��Ÿ --
SELECT * FROM inquiry;
COMMIT;

/* board_type ���� �߰� */
INSERT INTO board_type (board_type_number, board_type_name) VALUES (1, 'NOTICE'); -- ����
INSERT INTO board_type (board_type_number, board_type_name) VALUES (2, 'MAGAZINE'); -- �Ű���
INSERT INTO board_type (board_type_number, board_type_name) VALUES (3, 'REVIEW'); -- ��ǰ����
INSERT INTO board_type (board_type_number, board_type_name) VALUES (4, 'PRDCTQNA'); -- ��ǰQ&A
INSERT INTO board_type (board_type_number, board_type_name) VALUES (5, 'MBRQNA'); -- ��Q&A
INSERT INTO board_type (board_type_number, board_type_name) VALUES (6, 'PRDCTDETAIL'); -- ��ǰ��
SELECT * FROM board_type;
COMMIT;

/* authority ���� �߰� */
INSERT INTO authority (authority_number, authority_name) VALUES (1, 'ADMIN'); -- ������
INSERT INTO authority (authority_number, authority_name) VALUES (2, 'SELLER'); -- �Ǹ���
INSERT INTO authority (authority_number, authority_name) VALUES (3, 'MEMBER'); -- ��
SELECT * FROM authority;
COMMIT;

/* login_type ���� �߰� */
INSERT INTO login_type (login_number, login_kind) VALUES (1, 'GENERAL'); -- �Ϲ�
INSERT INTO login_type (login_number, login_kind) VALUES (2, 'KAKAO'); -- īī��
INSERT INTO login_type (login_number, login_kind) VALUES (3, 'NAVER'); -- ���̹�
INSERT INTO login_type (login_number, login_kind) VALUES (4, 'GOOGLE'); -- ����
INSERT INTO login_type (login_number, login_kind) VALUES (5, 'FACEBOOK'); -- ���̽���
SELECT * FROM login_type;
COMMIT;

/* grade ���� �߰� */
INSERT INTO grade (grade_number, grade_name) VALUES (1, 'GOLD'); -- ���
INSERT INTO grade (grade_number, grade_name) VALUES (2, 'SILVER'); -- �ǹ�
INSERT INTO grade (grade_number, grade_name) VALUES (3, 'BRONZE'); -- �����
SELECT * FROM grade;
COMMIT;

/* category ���� �߰� */
INSERT INTO category (category_number, category_name) VALUES (1, 'OUTER_COAT'); -- �ƿ���-��Ʈ
INSERT INTO category (category_number, category_name) VALUES (2, 'OUTER_JACKET'); -- �ƿ���-����
INSERT INTO category (category_number, category_name) VALUES (3, 'OUTER_JUMPER'); -- �ƿ���-����/������
INSERT INTO category (category_number, category_name) VALUES (4, 'OUTER_CARDIGAN'); -- �ƿ���-�����
INSERT INTO category (category_number, category_name) VALUES (5, 'OUTER_PADDING'); -- �ƿ���-�е�
INSERT INTO category (category_number, category_name) VALUES (6, 'TOP_TSHIRT'); -- ����-Ƽ����
INSERT INTO category (category_number, category_name) VALUES (7, 'TOP_SHIRT'); -- ����-���콺/����
INSERT INTO category (category_number, category_name) VALUES (8, 'TOP_KNIT'); -- ����-��Ʈ/������
INSERT INTO category (category_number, category_name) VALUES (9, 'TOP_HOOD'); -- ����-�ĵ�Ƽ
INSERT INTO category (category_number, category_name) VALUES (10, 'TOP_SWEAT'); -- ����-������
INSERT INTO category (category_number, category_name) VALUES (11, 'TOP_SLEEVELESS'); -- ����-�����긮��
INSERT INTO category (category_number, category_name) VALUES (12, 'BOTTOM_DENIM'); -- ����-����
INSERT INTO category (category_number, category_name) VALUES (13, 'BOTTOM_COTTON'); -- ����-��ư
INSERT INTO category (category_number, category_name) VALUES (14, 'BOTTOM_SHORT'); -- ����-��
INSERT INTO category (category_number, category_name) VALUES (15, 'BOTTOM_SLACKS'); -- ����-������
INSERT INTO category (category_number, category_name) VALUES (16, 'BOTTOM_TRAINING'); -- ����-Ʈ���̴�/����
INSERT INTO category (category_number, category_name) VALUES (17, 'BOTTOM_LEGGINGS'); -- ����-���뽺
INSERT INTO category (category_number, category_name) VALUES (18, 'BOTTOM_SKIRT'); -- ����-��ĿƮ
INSERT INTO category (category_number, category_name) VALUES (19, 'DRESS_MINI'); -- �巹��-�̴�
INSERT INTO category (category_number, category_name) VALUES (20, 'DRESS_MIDI'); -- �巹��-�̵�
INSERT INTO category (category_number, category_name) VALUES (21, 'DRESS_MAXI'); -- �巹��-�ƽ�
INSERT INTO category (category_number, category_name) VALUES (22, 'DRESS_OVERALL'); -- �巹��-������
INSERT INTO category (category_number, category_name) VALUES (23, 'BAG_BACKPACK'); -- ����-����
INSERT INTO category (category_number, category_name) VALUES (24, 'BAG_CROSS'); -- ����-�޽���/ũ�ν�
INSERT INTO category (category_number, category_name) VALUES (25, 'BAG_SHOULDER'); -- ����-���/��Ʈ
INSERT INTO category (category_number, category_name) VALUES (26, 'BAG_ECO'); -- ����-���ڹ�
INSERT INTO category (category_number, category_name) VALUES (27, 'BAG_CLUTCH'); -- ����-Ŭ��ġ
INSERT INTO category (category_number, category_name) VALUES (28, 'SHOES_SHOES'); -- �Ź�-����
INSERT INTO category (category_number, category_name) VALUES (29, 'SHOES_BOOTS'); -- �Ź�-����
INSERT INTO category (category_number, category_name) VALUES (30, 'SHOES_SANDALS'); -- �Ź�-����
INSERT INTO category (category_number, category_name) VALUES (31, 'SHOES_SLIPPERS'); -- �Ź�-������
INSERT INTO category (category_number, category_name) VALUES (32, 'SHOES_SNEAKERS'); -- �Ź�-����Ŀ��
INSERT INTO category (category_number, category_name) VALUES (33, 'ETC_BAG'); -- ETC-����
INSERT INTO category (category_number, category_name) VALUES (34, 'ETC_HAT'); -- ETC-����
INSERT INTO category (category_number, category_name) VALUES (35, 'ETC_ACCESSORIES'); -- ETC-�Ǽ�����
SELECT * FROM category;
COMMIT;

/*============================================================================*/

/* mbr ���̵����� �߰� */
INSERT INTO mbr (mbr_id, mbr_pw, mbr_name, authority_number, mbr_gender, mbr_birth, mbr_email, login_number, contact_number, mbr_nickname, mbr_point, grade_number) 
VALUES ('abcd1234', '1234', 'ȫ�浿', 1, '��', '1994-09-12', 'abcd1234@naver.com', 1, '01012345678', '�г���1', 0, 3);
INSERT INTO mbr (mbr_id, mbr_pw, mbr_name, authority_number, mbr_gender, mbr_birth, mbr_email, login_number, contact_number, mbr_nickname, mbr_point, grade_number) 
VALUES ('bcde1234', '1234', '��ö��', 2, '��', '1994-09-12', 'bcde1234@naver.com', 1, '01023456789', '�г���2', 0, 3);
INSERT INTO mbr (mbr_id, mbr_pw, mbr_name, authority_number, mbr_gender, mbr_birth, mbr_email, login_number, contact_number, mbr_nickname, mbr_point, grade_number) 
VALUES ('cdef1234', '1234', '�迵��', 2, '��', '1994-09-12', 'cdef1234@naver.com', 1, '01012345678', '�г���3', 0, 3);
INSERT INTO mbr (mbr_id, mbr_pw, mbr_name, authority_number, mbr_gender, mbr_birth, mbr_email, login_number, contact_number, mbr_nickname, mbr_point, grade_number) 
VALUES ('defg1234', '1234', '��ȸ��', 3, '��', '1994-09-12', 'defg1234@naver.com', 1, '01012345678', '�г���4', 0, 3);
SELECT * FROM mbr;
COMMIT;

/* shipping ���̵����� �߰� */
INSERT INTO shipping (mbr_id, shipping_address) 
VALUES ('abcd1234', '����ñ��α�');
SELECT * FROM shipping;
COMMIT; 

/* prdct ���̵����� �߰� */
INSERT INTO prdct (prdct_id, prdct_name, prdct_price, category_number, mbr_id) 
VALUES ('PRDCT12', '�ʿ���', '121680', 1, 'bcde1234');
INSERT INTO prdct (prdct_id, prdct_name, prdct_price, category_number, mbr_id) 
VALUES ('PRDCT34', '�ʿ���', '121680', 1, 'abcd1234'); -- �������(������)
INSERT INTO prdct (prdct_id, prdct_name, prdct_price, category_number, mbr_id) 
VALUES ('PRDCT45', '�ʿ���', '121680', 1, 'defg1234'); -- �������(ȸ��)
SELECT * FROM prdct;
COMMIT; 

/* prdct_order ���̵����� �߰� */
INSERT INTO prdct_order (order_number, order_price, mbr_id) 
VALUES (prdct_order_seq.nextval, 121680, 'bcde1234');
INSERT INTO prdct_order (order_number, order_price, mbr_id) 
VALUES (prdct_order_seq.nextval, 121680, 'abcd1234'); -- �������(������)
INSERT INTO prdct_order (order_number, order_price, mbr_id) 
VALUES (prdct_order_seq.nextval, 121680, 'defg1234'); -- �������(ȸ��)
SELECT * FROM prdct_order;
COMMIT; 

/* order_detail ���̵����� �߰� */
INSERT INTO order_detail (order_number, prdct_id, order_color, order_size, order_amount, prdct_price) 
VALUES (22, 'PRDCT12', 'RED', 'XL', 1, 121680);
INSERT INTO order_detail (order_number, prdct_id, order_color, order_size, order_amount, prdct_price) 
VALUES (23, 'PRDCT34', 'RED', 'XL', 1, 121680); -- �������(������)
INSERT INTO order_detail (order_number, prdct_id, order_color, order_size, order_amount, prdct_price) 
VALUES (24, 'PRDCT45', 'RED', 'XL', 1, 121680); -- �������(ȸ��) 
SELECT * FROM order_detail;
COMMIT; 

/* prdct_detail ���̵����� �߰� */
INSERT INTO prdct_detail (prdct_id, prdct_color, prdct_size, prdct_stock) 
VALUES ('PRDCT12', 'RED', 'XL', 100);
INSERT INTO prdct_detail (prdct_id, prdct_color, prdct_size, prdct_stock) 
VALUES ('PRDCT34', 'RED', 'XL', 100); -- �������(������) 
INSERT INTO prdct_detail (prdct_id, prdct_color, prdct_size, prdct_stock) 
VALUES ('PRDCT45', 'RED', 'XL', 100); -- �������(ȸ��)  
SELECT * FROM prdct_detail;
COMMIT; 

/* supply ���̵����� �߰� */
INSERT INTO supply (prdct_id, supply_amount) 
VALUES ('PRDCT12', 200);
INSERT INTO supply (prdct_id, supply_amount) 
VALUES ('PRDCT34', 200); -- �������(������) 
INSERT INTO supply (prdct_id, supply_amount) 
VALUES ('PRDCT45', 200); -- �������(ȸ��)  
SELECT * FROM supply;
COMMIT;

/* cart ���̵����� �߰� */
INSERT INTO cart (cart_number, cart_price, mbr_id) 
VALUES (cart_seq.nextval, 121680, 'bcde1234');
INSERT INTO cart (cart_number, cart_price, mbr_id) 
VALUES (cart_seq.nextval, 121680, 'abcd1234');  -- �������(������)
INSERT INTO cart (cart_number, cart_price, mbr_id) 
VALUES (cart_seq.nextval, 121680, 'defg1234');  -- �������(ȸ��)
SELECT * FROM cart;
COMMIT; 

/* cart_detail ���̵����� �߰� */
INSERT INTO cart_detail (cart_number, prdct_id, cart_color, cart_size, cart_amount, prdct_price) 
VALUES (21, 'PRDCT12', 'RED', 'XL', 1, 121680);
INSERT INTO cart_detail (cart_number, prdct_id, cart_color, cart_size, cart_amount, prdct_price) 
VALUES (22, 'PRDCT34', 'RED', 'XL', 1, 121680);  -- �������(������) 
INSERT INTO cart_detail (cart_number, prdct_id, cart_color, cart_size, cart_amount, prdct_price) 
VALUES (23, 'PRDCT45', 'RED', 'XL', 1, 121680);  -- �������(ȸ��) 
DELETE FROM cart_detail;
SELECT * FROM cart_detail;
COMMIT; 

/* board ���̵����� �߰� */
INSERT INTO board (board_id, board_name, board_content, mbr_id, board_type_number, inquiry_number, prdct_id, order_number, board_like, board_hit) 
VALUES (board_seq.nextval, '�Խñ�����', '�Խñ۳���', 'abcd1234', 1, 1, 'PRDCT34', 23, 0, 0); -- ��������(������)
INSERT INTO board (board_id, board_name, board_content, mbr_id, board_type_number, inquiry_number, prdct_id, order_number, board_like, board_hit) 
VALUES (board_seq.nextval, '�Ű�������', '�Ű�������', 'abcd1234', 2, 1, 'PRDCT34', 23, 0, 0); -- �Ű���(������)
SELECT * FROM board;
COMMIT;

/* board_comment ���̵����� �߰� */
INSERT INTO board_comment (comment_id, board_id, mbr_id, comment_content) 
VALUES (board_comment_seq.nextval, 49, 'defg1234', '����ۼ��߽��ϴ�.'); -- �Ű��� ���
SELECT * FROM board_comment;
COMMIT; 

/* prdct_image ���̵����� �߰� */
--INSERT INTO prdct_image (image_number, image_name, image_path, board_id) 
--VALUES (prdct_image_seq.nextval, '�����̸�', '��ο���', 49); -- �Ű���(������)
SELECT * FROM prdct_image ORDER BY image_number DESC;
DELETE FROM prdct_image WHERE image_number = 206;
--UPDATE prdct_image SET board_id = 49 WHERE image_number = 70;
COMMIT;

/* wish_list ���̵����� �߰� */
--INSERT INTO wish_list (mbr_id, board_id) 
--VALUES ('abcd1234', 28);
SELECT * FROM wish_list;
COMMIT; 

/*============================================================================*/

/* �������� �Խ��� ����Ʈ ��� */
SELECT *
FROM board
WHERE board_type_number = 1
ORDER BY board_id DESC, board_date DESC;

/* �Ű��� �Խ��� ����Ʈ ��� */
SELECT *
FROM board
WHERE board_type_number = 2
ORDER BY board_id DESC, board_date DESC;

DELETE FROM board WHERE board_id = 192;
COMMIT;

/* �Ű��� �Խ��� ����� */
SELECT b.board_id, b.board_name, b.board_date, b.board_like, b.board_hit, p.image_name 
FROM board b, prdct_image p 
WHERE b.board_id = p.board_id AND 
    b.board_type_number = 2 AND 
    p.image_number IN (SELECT MIN(image_number) 
                       FROM prdct_image 
                       GROUP BY board_id) 
ORDER BY board_id DESC, board_date DESC;

/* �Ű��� �Խñ� ���� �������� */
SELECT p.image_name, b.board_id 
FROM prdct_image p, board b 
WHERE p.board_id = b.board_id AND 
    b.board_id = 71;

/* �Ű��� �Խñ� ��� ī��Ʈ */
SELECT COUNT(comment_id) AS comment_count FROM board_comment WHERE board_id = 49;

/* �Ű��� �Խñ� ��� �������� */
SELECT c.comment_id, c.comment_content, c.comment_date, m.mbr_id 
FROM board_comment c, mbr m, board b 
WHERE c.mbr_id = m.mbr_id AND 
    c.board_id = b.board_id AND  
    b.board_id = 49 
ORDER BY c.comment_id DESC, c.comment_date DESC;

/* ���� Q&A ����Ʈ �������� */
SELECT mbr_id, board_id, board_name, board_date 
FROM board 
WHERE mbr_id = 'defg1234' AND 
    board_type_number = 5 
ORDER BY board_id DESC, board_date DESC;

/* ���� QNA �� */
SELECT i.inquiry_name, b.board_id, b.board_name, b.board_content, b.board_date 
FROM inquiry i, board b 
WHERE i.inquiry_number = b.inquiry_number AND 
    b.board_type_number = 5 AND 
    b.board_id = 435;
    
/* ���� QNA �� ��� �ҷ����� */
SELECT *
FROM board_comment
WHERE board_id = 23;