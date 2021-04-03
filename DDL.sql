/////////////////////////////////     1   /////////////////////////////////////

CREATE TABLE Product(

    Product_id VARCHAR(20) CONSTRAINT pk_product PRIMARY KEY,
    Product_name VARCHAR(20) CONSTRAINT nam_product NOT NULL , 
    Price NUMBER CONSTRAINT check_price CHECK (Price>0) ,
)

CREATE TABLE Customer (

    Customer_id VARCHAR(20) CONSTRAINT pk_costumer PRIMARY KEY ,
    Customer_name VARCHAR(20) CONSTRAINT nam_costumer NOT NULL ,
    Customer_Tel NUMBER ,
)

CREATE TABLE Orders(
   
    Customer_id ,
    Product_id , 
    Quality NUMBER ,
    total_amount NUMBER ,

    CONSTRAINT fk_costumer FOREIGN KEY (Costumer_id) REFERENCES Costumers (Costumer_id),
    CONSTRAINT fk_product FOREIGN KEY (Product_id) REFERENCES Producs (Product_id),
)


//////////////////////////////////    2    ////////////////////////////////////////


ALTER TABLE Product ADD Category VARCHAR2(20)
ALTER TABLE Orders ADD OrderDate DATE(SYSDATE)