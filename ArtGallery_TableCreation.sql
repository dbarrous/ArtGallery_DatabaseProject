CREATE TABLE Gallery (
    Gallery_ID INT(5) AUTO_INCREMENT NOT NULL,
    Gallery_Name VARCHAR(255) NOT NULL,
    Gallery_Phone VARCHAR(12) NOT NULL,
    Gallery_Street VARCHAR(95) NOT NULL,
    Gallery_Zip_Code INT(9) NOT NULL,
    PRIMARY KEY (Gallery_ID)
);



CREATE TABLE Artist (
    Artist_ID INT(10) AUTO_INCREMENT NOT NULL,
    Artist_firstName VARCHAR(30) NOT NULL,
    Artist_lastName VARCHAR(30) NOT NULL,
    Artist_Biography TEXT,
    Artist_Phone VARCHAR(12),
    PRIMARY KEY (Artist_ID)
);

CREATE TABLE Customer (
    Customer_ID INT(10) AUTO_INCREMENT NOT NULL,
    Customer_firstName VARCHAR(30) NOT NULL,
    Customer_lastName VARCHAR(30) NOT NULL,
    Customer_Phone VARCHAR(12) NOT NULL,
    PRIMARY KEY (Customer_ID)
);

CREATE TABLE Employee (
    Employee_ID INT(10) AUTO_INCREMENT NOT NULL,
    Employee_firstName VARCHAR(30) NOT NULL,
    Employee_lastName VARCHAR(30) NOT NULL,
    Job_Title VARCHAR(30) NOT NULL,
    Employee_StartingDate DATE NOT NULL,
    Gallery_ID INT(5) NOT NULL,
    Employee_Street VARCHAR(95) NOT NULL,
    Employee_Zip_Code INT(9) NOT NULL,
    Employee_Salary INT(12) NOT NULL,
    Employee_Managed_By INT(10) NOT NULL,
    PRIMARY KEY (Employee_ID),
    FOREIGN KEY (Gallery_ID) REFERENCES Gallery(Gallery_ID)
);

CREATE TABLE Artwork (
    Artwork_ID INT(5) AUTO_INCREMENT,
    Artwork_Name VARCHAR(255) NOT NULL, Artwork_Genre VARCHAR(20) NOT NULL,
    Artwork_Descrip TEXT NOT NULL,
    Artwork_Price Float(25) NOT NULL,
    Artist_ID INT(10) NOT NULL,
    Customer_ID INT(10),
    Gallery_ID INT(5),
    PRIMARY KEY (Artwork_ID),
    FOREIGN KEY (Artist_ID) REFERENCES Artist(Artist_ID),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY (Gallery_ID) REFERENCES Gallery(Gallery_ID)
);