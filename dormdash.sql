CREATE TABLE Building (
    Building_id INTEGER GENERATED BY DEFAULT ON NULL AS IDENTITY,
    Building_name VARCHAR(50),
    CONSTRAINT BuildingPK
    PRIMARY KEY(Building_id)
);

CREATE TABLE Customer (
    Customer_id INTEGER GENERATED BY DEFAULT ON NULL AS IDENTITY,
    Room_num INTEGER,-- how do university room numbers work.
    Phone INTEGER,
    Email VARCHAR(50),
    First_name VARCHAR(50),
    Middle_name VARCHAR(50),
    Last_name VARCHAR(50),
    Building_id INTEGER,
    CONSTRAINT CustomerPK
    PRIMARY KEY(Customer_id),
    CONSTRAINT CustomerBuilding_idFK
    FOREIGN KEY(Building_id) REFERENCES Building(Building_id)
);

CREATE TABLE Address (
    Address_id INTEGER GENERATED BY DEFAULT ON NULL AS IDENTITY,
    Address_name VARCHAR(50) NULL,
    Address2 VARCHAR(50),
    City VARCHAR(50),
    State CHAR(2),
    Street VARCHAR(50),
    Zip_code NUMBER(5,0),
    Address_type VARCHAR(50) ,-- add check constraint
    Customer_id INTEGER,
    Constraint AddressPK
    PRIMARY KEY (Address_id),
    CONSTRAINT AddressCustomer_idFK
    FOREIGN KEY(Customer_id) REFERENCES Customer(Customer_id)
);

CREATE TABLE Dining_place (
    Dining_id Integer GENERATED BY DEFAULT ON NULL AS IDENTITY,
    Building_id INTEGER,
    Dining_name VARCHAR(50) NULL,
    Constraint Dining_placePK
    PRIMARY KEY (Dining_id),
    CONSTRAINT Dining_placeBuilding_idFK
    FOREIGN KEY(Building_id) REFERENCES Building(Building_id)
);

CREATE TABLE Delivery_details (
    Delivery_id INTEGER GENERATED BY DEFAULT ON NULL AS IDENTITY,
    Dining_id INTEGER,
    Delivery_type VARCHAR(50),
    Constraint Delivery_detailsPK
    PRIMARY KEY (Delivery_id),
    Constraint Delivery_detailsDining_idFK
    FOREIGN KEY (Dining_id) REFERENCES Dining_place(Dining_id)
);

CREATE TABLE Hours_of_operation (
    Days_of_week CHAR(3),
    Open_time CHAR(5),
    Close_time CHAR(5),
    Dining_id INTEGER,
    -- CONSTRAINT Hours_of_operationPK
    -- PRIMARY KEY(Days_of_week, Dining_id),
    CONSTRAINT Days_of_weekCHK
    CHECK (Days_of_week IN ('Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun')),
    CONSTRAINT Hours_of_operationDining_idFK
    FOREIGN KEY(Dining_id) REFERENCES Dining_place(Dining_id)
);

CREATE TABLE Menu (
    Menu_type VARCHAR(10),
    Dining_id INTEGER,
    Menu_id INTEGER GENERATED BY DEFAULT ON NULL AS IDENTITY,
    CONSTRAINT MenuPK
    PRIMARY KEY(Menu_id),
    CONSTRAINT MenuDining_idFK
    FOREIGN KEY (Dining_id) REFERENCES Dining_place(Dining_id)
);

CREATE TABLE Food (
    Food_id INTEGER GENERATED BY DEFAULT ON NULL AS IDENTITY,
    Food_price FLOAT,
    Food_name VARCHAR(50),
    CONSTRAINT FoodPK
    PRIMARY KEY(Food_id)
);

CREATE TABLE Menu_food_bridge (
    Menu_id INTEGER,
    Food_id INTEGER,
    CONSTRAINT Menu_food_bridgePK
    PRIMARY KEY(Menu_id, Food_id),
    CONSTRAINT Menu_food_bridgeMenu_idFK
    FOREIGN KEY(Menu_id) REFERENCES Menu(Menu_id),
    CONSTRAINT Menu_food_bridgeFood_idFK
    FOREIGN KEY(Food_id) REFERENCES Food(Food_id)
);

CREATE TABLE Nutritional_information (
    Food_id INTEGER,
    Protein FLOAT,
    Carbs FlOAT,
    Fat FLOAT,
    Calories INTEGER,
    CONSTRAINT Nutritional_informationPK
    PRIMARY KEY(Food_id),
    CONSTRAINT Nutritional_infoFood_idFK
    FOREIGN KEY(Food_id) REFERENCES Food(Food_id)
);

CREATE TABLE Shopping_cart (
    Shopping_cart_id INTEGER GENERATED BY DEFAULT ON NULL AS IDENTITY,
    Quantity INTEGER,
    Food_id INTEGER,
    CONSTRAINT Shopping_cartPK
    PRIMARY KEY(Shopping_cart_id),
    CONSTRAINT Shopping_cart_Food_idFK
    FOREIGN KEY(Food_id) REFERENCES Food(Food_id)
);

CREATE TABLE PAYMENT_INSTRUMENT(
PAYMENT_TYPE_ID INTEGER GENERATED BY DEFAULT ON NULL AS IDENTITY PRIMARY KEY,
PAYMENT_TYPE_NAME VARCHAR(30)
);

CREATE TABLE PAYMENT_DETAILS(
PAYMENT_DETAILS_ID INTEGER GENERATED BY DEFAULT ON NULL AS IDENTITY PRIMARY KEY,
CUSTOMER_ID,
PAYMENT_TYPE_ID,
FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID),
FOREIGN KEY (PAYMENT_TYPE_ID) REFERENCES PAYMENT_INSTRUMENT(PAYMENT_TYPE_ID)
);

CREATE TABLE VENDOR_DETAILS(
VNAME VARCHAR(15),
VEMAIL VARCHAR(50) PRIMARY KEY,
PAYMENT_DETAILS_ID,
FOREIGN KEY (PAYMENT_DETAILS_ID) REFERENCES PAYMENT_DETAILS(PAYMENT_DETAILS_ID)
);

CREATE TABLE CARD_DETAILS(
CARD_NAME VARCHAR(20),
CARD_NUMBER INTEGER PRIMARY KEY, -- should not be primary key
SECURITY_CODE INTEGER,
EXP_MONTH INTEGER,
EXP_YEAR INTEGER,
ADDRESS_ID,
PAYMENT_DETAILS_ID,
FOREIGN KEY (ADDRESS_ID) REFERENCES ADDRESS(ADDRESS_ID),
FOREIGN KEY (PAYMENT_DETAILS_ID) REFERENCES PAYMENT_DETAILS(PAYMENT_DETAILS_ID)
);

--reservation tables to be loaded after payment tables

create table RESERVATION (
RESERVATION_ID INTEGER GENERATED BY DEFAULT ON NULL AS IDENTITY PRIMARY KEY,
NET_AMOUNT DECIMAL,
TOTAL_AMOUNT DECIMAL,
ORDER_TIME TIMESTAMP,
RESERVATION_STATUS VARCHAR(15),
DELIVERY_ID INTEGER,
PAYMENT_DETAILS_ID INTEGER,
Shopping_cart_id INTEGER,
FOREIGN KEY (Shopping_cart_id) REFERENCES Shopping_cart(Shopping_cart_id),
FOREIGN KEY (DELIVERY_ID) REFERENCES DELIVERY_DETAILS(DELIVERY_ID),
FOREIGN KEY (PAYMENT_DETAILS_ID) REFERENCES PAYMENT_DETAILS(PAYMENT_DETAILS_ID)
);

CREATE TABLE CUSTOMER_RESERVATION_BRIDGE(
CUSTOMER_ID INTEGER,
RESERVATION_ID INTEGER,
FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID),
FOREIGN KEY (RESERVATION_ID) REFERENCES RESERVATION(RESERVATION_ID));

CREATE TABLE ORDER_HISTORY(
ORDER_ID INTEGER GENERATED BY DEFAULT ON NULL AS IDENTITY PRIMARY KEY,
RESERVATION_ID INTEGER,
FOREIGN KEY (RESERVATION_ID) REFERENCES RESERVATION(RESERVATION_ID));