DROP SEQUENCE reservation_seq;
DROP SEQUENCE facility_seq;
DROP TABLE KG_SCHEDULE;
DROP TABLE KG_RESERVATION;
DROP TABLE KG_FACILITY;
DROP TABLE KG_CATEGORY;
DROP TABLE KG_USER;


CREATE TABLE KG_USER(
		U_ID VARCHAR2(100) NULL ,
		U_PWD VARCHAR2(100) NOT NULL,
		U_NAME VARCHAR2(100) NULL ,
		U_TEL VARCHAR2(100) NULL ,
		U_EMAIL VARCHAR2(100) NULL ,
		U_ISMANAGER VARCHAR2(100) DEFAULT 'FALSE' NOT NULL
);

CREATE TABLE KG_CATEGORY(
		C_NAME VARCHAR2(100) NULL,
		C_COLOR VARCHAR2(100) NULL,
		C_IMGNAME VARCHAR2(100) NULL 
);

CREATE TABLE KG_FACILITY(
		F_NUM NUMBER(30) NULL,
		C_NAME VARCHAR2(100) NULL,
		F_NAME VARCHAR2(100) NULL,
		F_ADDRESS VARCHAR2(100) NULL,
		F_TEL VARCHAR2(100) NULL,
		F_PRICE NUMBER(30) DEFAULT 0 NULL,
		F_MAX NUMBER(20) NULL,
		F_OPENTIME NUMBER(10) NULL,
		F_CLOSETIME NUMBER(10) NULL,
		F_MAXTIME NUMBER(10) NULL,
		F_IMGNAME VARCHAR2(100) NULL 
);

CREATE TABLE KG_RESERVATION(
		R_NUM NUMBER(30) NULL,
		R_TITLE VARCHAR2(100) NULL,
		U_ID VARCHAR2(100) NOT NULL,
		F_NUM NUMBER(30) NOT NULL,
		R_DATE DATE NULL,
		R_STARTTIME DATE NULL,
		R_ENDTIME DATE NULL,
		R_TYPE VARCHAR2(100) NULL 
);

CREATE TABLE KG_SCHEDULE(
		R_NUM NUMBER(30) NULL,
		U_ID VARCHAR2(100) NULL
);


ALTER TABLE KG_USER ADD CONSTRAINT IDX_KG_USER_PK PRIMARY KEY (U_ID);

ALTER TABLE KG_CATEGORY ADD CONSTRAINT IDX_KG_CATEGORY_PK PRIMARY KEY (C_NAME);

ALTER TABLE KG_FACILITY ADD CONSTRAINT IDX_KG_FACILITY_PK PRIMARY KEY (F_NUM);
ALTER TABLE KG_FACILITY ADD CONSTRAINT IDX_KG_FACILITY_FK0 FOREIGN KEY (C_NAME) REFERENCES KG_CATEGORY (C_NAME) ON DELETE CASCADE;

ALTER TABLE KG_RESERVATION ADD CONSTRAINT IDX_KG_RESERVATION_PK PRIMARY KEY (R_NUM);
ALTER TABLE KG_RESERVATION ADD CONSTRAINT IDX_KG_RESERVATION_FK0 FOREIGN KEY (F_NUM) REFERENCES KG_FACILITY (F_NUM) ON DELETE CASCADE;
ALTER TABLE KG_RESERVATION ADD CONSTRAINT IDX_KG_RESERVATION_FK1 FOREIGN KEY (U_ID) REFERENCES KG_USER (U_ID) ON DELETE CASCADE;

ALTER TABLE KG_SCHEDULE ADD CONSTRAINT IDX_KG_SCHEDULE_PK PRIMARY KEY (R_NUM, U_ID);
ALTER TABLE KG_SCHEDULE ADD CONSTRAINT IDX_KG_SCHEDULE_FK0 FOREIGN KEY (R_NUM) REFERENCES KG_RESERVATION (R_NUM) ON DELETE CASCADE;
ALTER TABLE KG_SCHEDULE ADD CONSTRAINT IDX_KG_SCHEDULE_FK1 FOREIGN KEY (U_ID) REFERENCES KG_USER (U_ID) ON DELETE CASCADE;

CREATE SEQUENCE facility_seq;
CREATE SEQUENCE reservation_seq;


insert into KG_USER values ('kg', 'kg', 'admin', '010-1234-5678', 'kg@kg.com','TRUE');
insert into KG_USER values ('gg', 'gg', 'gg', '010-1234-5678', 'gg@gg.com','FALSE');
insert into KG_USER values ('ggg', 'ggg', 'ggg', '010-1234-5678', 'ggg@ggg.com','FALSE');

insert into KG_CATEGORY values ('FOOTBALL', 'RED', 'football.jpg');
insert into KG_CATEGORY values ('BASEBALL', 'BLUE', 'baseball.jpg');

insert into KG_FACILITY values (facility_seq.nextval, 'FOOTBALL', 'GSFootballGYM', 'Jamsil', '02-123-4567', 5000, 30, 6, 24, 3, 'football.jpg');
insert into KG_FACILITY values (facility_seq.nextval, 'BASEBALL', 'KGBaseballGYM', 'Jamsil', '02-123-4567', 5000, 30, 9, 21, 2, 'baseball.jpg');

insert into KG_RESERVATION values (reservation_seq.nextval, '축구예약', 'gg', 1, '2018/07/22', TO_DATE('2018/07/22 09', 'yyyy/MM/dd HH24'), TO_DATE('2018/07/22 12', 'yyyy/MM/dd HH24'), 'public');
insert into KG_RESERVATION values (reservation_seq.nextval, '야구예약', 'gg', 2, '2018/07/22', TO_DATE('2018/07/22 15', 'yyyy/MM/dd HH24'), TO_DATE('2018/07/22 16', 'yyyy/MM/dd HH24'), 'private');

insert into KG_SCHEDULE values (1, 'gg');
insert into KG_SCHEDULE values (1, 'ggg');
insert into KG_SCHEDULE values (2, 'gg');

COMMIT;
