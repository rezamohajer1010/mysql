CREATE TABLE BOOK (
    Book_ID BIGINT PRIMARY KEY,
    Title CHAR(255),
    Publisher CHAR(255),
    Description CHAR(255)
);

CREATE TABLE USER_ (
    User_ID BIGINT PRIMARY KEY,
    Nation_ID BIGINT,
    Phone_Number CHAR(20),
    Name CHAR(255),
    Birthday DATE,
    Age BIGINT,
    Address CHAR(255)
);

CREATE TABLE PERSONNEL (
    Personnel_ID BIGINT PRIMARY KEY,
    Username CHAR(255),
    Password BIGINT,
    Birthdate DATE,
    Nation_ID BIGINT,
    Phone_Number BIGINT,
    Name CHAR(255),
    Age INT
);

CREATE TABLE BORROW_LEND (
    Borrow_lend_ID BIGINT PRIMARY KEY,
    BorrowDate DATE,
    LendDate DATE,
    Library CHAR(255),
    Personnel_ID BIGINT,
    User_ID BIGINT,
    FOREIGN KEY (Personnel_ID) REFERENCES PERSONNEL(Personnel_ID)
    ON DELETE CASECADE
    ON UPDATE CASECADE,
    FOREIGN KEY (User_ID) REFERENCES USER_(User_ID)
    ON DELETE CASECADE
    ON UPDATE CASECADE
);

CREATE TABLE LENDING_BOOK (
    Book_ID BIGINT,
    Borrow_lend_ID BIGINT,
    PRIMARY KEY (Book_ID, Borrow_lend_ID),
    FOREIGN KEY (Book_ID) REFERENCES BOOK(Book_ID)
    ON DELETE CASECADE
    ON UPDATE CASECADE,
    FOREIGN KEY (Borrow_lend_ID) REFERENCES BORROW_LEND(Borrow_lend_ID)
    ON DELETE CASECADE
    ON UPDATE CASECADE
);
