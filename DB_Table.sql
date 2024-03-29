 CREATE TABLE XXBCM_ORDER_MGT_CLR
(	
	ORDER_REF 			VARCHAR2(2000), 
	ORDER_DATE 			VARCHAR2(2000), 
	SUPPLIER_NAME 		VARCHAR2(2000), 
	SUPP_CONTACT_NAME 	VARCHAR2(2000), 
	SUPP_ADDRESS 		VARCHAR2(2000), 
	SUPP_CONTACT_NUMBER VARCHAR2(2000), 
	SUPP_EMAIL 			VARCHAR2(2000), 
	ORDER_TOTAL_AMOUNT 	VARCHAR2(2000), 
	ORDER_DESCRIPTION 	VARCHAR2(2000), 
	ORDER_STATUS 		VARCHAR2(2000), 
	ORDER_LINE_AMOUNT 	VARCHAR2(2000), 
	INVOICE_REFERENCE 	VARCHAR2(2000), 
	INVOICE_DATE 		VARCHAR2(2000), 
	INVOICE_STATUS 		VARCHAR2(2000), 
	INVOICE_HOLD_REASON VARCHAR2(2000), 
	INVOICE_AMOUNT 		VARCHAR2(2000), 
	INVOICE_DESCRIPTION VARCHAR2(2000)
) ;


CREATE TABLE XXBCM_SUPPLIER
(
    SUPPLIER_NAME VARCHAR2(200),
    FIRST_NAME VARCHAR2(200) NOT NULL,
    LAST_NAME VARCHAR2(200) NOT NULL,
    STREET VARCHAR2(200),
    CITY VARCHAR2(100),
    COUNTRY VARCHAR2(100),
    TELEPHONE_NUMBER VARCHAR2(7),
    MOBILE_NUMBER VARCHAR2(8),
    EMAIL_ADDRESS VARCHAR2(200),
    CONSTRAINT XXBCM_SUPPLIER_PK PRIMARY KEY (SUPPLIER_NAME)
);


CREATE TABLE XXBCM_TRANSACTION
(
    ORDER_REF VARCHAR2(10),
    ORDER_DATE DATE ,
    TOTAL_AMT NUMERIC(18,2),
    ORDER_DESCRIPTION VARCHAR2(300),
    ORDER_STATUS VARCHAR2(15),
    LINE_AMT NUMERIC(18,2),
	INVOICE_REF VARCHAR2(15),
	INVOICE_DATE DATE,
	INVOICE_STATUS VARCHAR2(15),
	INVOICE_HOLD_REASON VARCHAR2(200),
	INVOICE_AMOUNT NUMERIC(18,2),
	INVOICE_DESCRIPTION VARCHAR2(200),
    SUPPLIER_NAME VARCHAR2(200),
    FOREIGN KEY (SUPPLIER_NAME)
    REFERENCES XXBCM_SUPPLIER (SUPPLIER_NAME),
    CONSTRAINT XXBCM_ODR_STS_CHK
    CHECK (ORDER_STATUS IN('Closed', 'Received', 'Open', 'Cancelled')),
	CONSTRAINT XXBCM_INV_STS_CHK
CHECK (INVOICE_STATUS IN('Paid', 'Pending', ''))
);
 