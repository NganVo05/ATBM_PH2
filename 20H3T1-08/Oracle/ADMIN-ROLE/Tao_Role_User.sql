------------------XEM TRANSACTION CHUA COMMIT----------------------
SELECT * FROM V$TRANSACTION
WHERE STATUS='ACTIVE';

--TAO ROLE
--1.NHANVIEN
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
CREATE ROLE NHANVIEN;
ALTER SESSION SET "_ORACLE_SCRIPT"=False; 
/

--2.NVQL
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
CREATE ROLE NVQL;
ALTER SESSION SET "_ORACLE_SCRIPT"=False; 

/
--3.TRUONG PHONG
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
CREATE ROLE TRUONGPHONG;
ALTER SESSION SET "_ORACLE_SCRIPT"=False; 

/
--4.TAI CHINH
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
CREATE ROLE TAICHINH;
ALTER SESSION SET "_ORACLE_SCRIPT"=False; 


/
--5.NHAN SU
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
CREATE ROLE NHANSU;
ALTER SESSION SET "_ORACLE_SCRIPT"=False; 

/
--6.TRUONG DE AN
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
CREATE ROLE TRUONGDEAN;
ALTER SESSION SET "_ORACLE_SCRIPT"=False; 

/
--7.GIAMDOC
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
CREATE ROLE GIAMDOC;
ALTER SESSION SET "_ORACLE_SCRIPT"=False; 

-----------------------XEM THONG TIN QUYEN COT
SELECT * FROM DBA_COL_PRIVS WHERE GRANTEE = 'GIAMDOC';
SELECT * FROM DBA_COL_PRIVS WHERE GRANTEE = 'NHANVIEN';
SELECT * FROM DBA_COL_PRIVS WHERE GRANTEE = 'NVQL';
SELECT * FROM DBA_COL_PRIVS WHERE GRANTEE = 'TRUONGPHONG';
SELECT * FROM DBA_COL_PRIVS WHERE GRANTEE = 'TAICHINH';
SELECT * FROM DBA_COL_PRIVS WHERE GRANTEE = 'NHANSU';
SELECT * FROM DBA_COL_PRIVS WHERE GRANTEE = 'TRUONGDEAN';

------------------------------QUYEN TREN BANG/VIEW----------------
SELECT * FROM DBA_TAB_PRIVS WHERE GRANTEE = 'GIAMDOC';
SELECT * FROM DBA_TAB_PRIVS WHERE GRANTEE = 'NHANVIEN';
SELECT * FROM DBA_TAB_PRIVS WHERE GRANTEE = 'NVQL';
SELECT * FROM DBA_TAB_PRIVS WHERE GRANTEE = 'TRUONGPHONG';
SELECT * FROM DBA_TAB_PRIVS WHERE GRANTEE = 'TAICHINH';
SELECT * FROM DBA_TAB_PRIVS WHERE GRANTEE = 'NHANSU';
SELECT * FROM DBA_TAB_PRIVS WHERE GRANTEE = 'TRUONGDEAN';



------XEM MEMBER CUA ROLE
SELECT * FROM DBA_ROLE_PRIVS WHERE GRANTED_ROLE='GIAMDOC'; 
SELECT * FROM DBA_ROLE_PRIVS WHERE GRANTED_ROLE='NHANVIEN'; 
SELECT * FROM DBA_ROLE_PRIVS WHERE GRANTED_ROLE='NVQL'; 
SELECT * FROM DBA_ROLE_PRIVS WHERE GRANTED_ROLE='TRUONGPHONG'; 
SELECT * FROM DBA_ROLE_PRIVS WHERE GRANTED_ROLE='TAICHINH'; 
SELECT * FROM DBA_ROLE_PRIVS WHERE GRANTED_ROLE='NHANSU'; 
SELECT * FROM DBA_ROLE_PRIVS WHERE GRANTED_ROLE='TRUONGDEAN'; 
--grant execute on dbms_output to NV1001;

--ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
--DROP ROLE GIAMDOC;
--ALTER SESSION SET "_ORACLE_SCRIPT"=False; 


------------------------------------------TAO VAI TAI KHOAN DE TEST THU------------------------
---------------1.NHANVIEN-----------------
--NHANVIEN 0091
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
CREATE USER NV0091 IDENTIFIED BY NV0091;
ALTER SESSION SET "_ORACLE_SCRIPT"=False; 

--CAP QUYEN
GRANT CONNECT TO NV0091;
GRANT NHANVIEN TO NV0091;


----------------------2.NVQL-----------
--NHANVIEN 5001-
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
CREATE USER NV5001 IDENTIFIED BY NV5001;
ALTER SESSION SET "_ORACLE_SCRIPT"=False; 

--CAP QUYEN
GRANT CONNECT TO NV5001;
GRANT NVQL TO NV5001;

-------------------------3.TRUONGPHONG-----------
--NHANVIEN NV1001-
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
CREATE USER NV1001 IDENTIFIED BY NV1001;
ALTER SESSION SET "_ORACLE_SCRIPT"=False; 

--CAP QUYEN
GRANT CONNECT TO NV1001;
GRANT TRUONGPHONG TO NV1001;

-----------------------4.TAI CHINH-----------
--NHANVIEN NV2001-
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
DROP USER NV2001;-- IDENTIFIED BY NV2001;
ALTER SESSION SET "_ORACLE_SCRIPT"=False; 

--CAP QUYEN
GRANT CONNECT TO NV2001;
GRANT TAICHINH TO NV2001;

-------------------------5.NHANSU--------------
--NHANVIEN NV3005-
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
CREATE USER NV3005 IDENTIFIED BY NV3005;
ALTER SESSION SET "_ORACLE_SCRIPT"=False; 

--CAP QUYEN
GRANT CONNECT TO NV3005;
GRANT NHANSU TO NV3005;


-------------------------6.TRUONG DE AN--------------
--NV4003
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
CREATE USER NV4003 IDENTIFIED BY NV4003;
ALTER SESSION SET "_ORACLE_SCRIPT"=False; 

--CAP QUYEN
GRANT CONNECT TO NV4003;
GRANT TRUONGDEAN TO NV4003;

-------------------------7. GIAM DOC--------------
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;
create User NV0001 IDENTIFIED BY NV0001;
ALTER SESSION SET "_ORACLE_SCRIPT"=False; 
                                        
GRANT CONNECT TO NV0001;
GRANT GIAMDOC TO NV0001;
