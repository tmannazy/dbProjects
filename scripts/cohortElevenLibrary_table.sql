create database cohortElevenLibrary;
use cohortElevenLibrary;

CREATE TABLE Book(
bookId 			INT(3) 			NOT NULL,
bookName 		VARCHAR(45) 	NOT NULL,
bookAuthor 		VARCHAR(45) 	NOT NULL,
publishedDate 	DATE	 		NOT NULL,
isbn			INT(12) 		NOT NULL,
bookGenre		VARCHAR(45)  	NOT NULL,
pageNumber		INT(4)			NOT NULL,
CONSTRAINT 		Book_PK			Primary Key(bookId)
);



CREATE TABLE User(
userId 		INT(5) 		NOT NULL, 
fullName	VARCHAR(45)	NOT NULL,
gender		VARCHAR(1)	NOT NULL,
address		VARCHAR(55)	NOT NULL,
phoneNumber	VARCHAR(15)	NOT NULL,
CONSTRAINT User_PK Primary Key(userId)
);



CREATE TABLE BorrowedBook(
borrowedId 		INT(5) 		NOT NULL,
userId			INT(5)		NOT NULL,
bookId			INT(5)		NOT NULL,
CONSTRAINT	user_FK	FOREIGN KEY(userId)
 						 REFERENCES	User(userId),
CONSTRAINT book_FK FOREIGN KEY(bookId)
						REFERENCES Book(bookId),
dateCollected		VARCHAR(15)	NOT NULL,
deadline 			VARCHAR(15)	NOT NULL,
CONSTRAINT BorrowedBook_PK Primary Key(borrowedId)
);


CREATE TABLE Staff(
`staffId` 			INT(5) 	 		NOT NULL,
`fullName`			VARCHAR(45)		NOT NULL,
`emailAddress`		VARCHAR(45)		NOT NULL,
`phoneNumber`		VARCHAR(15)		NOT NULL,
`address` 			VARCHAR(25)		NOT NULL,
`job`				VARCHAR(20)		NOT NULL,
CONSTRAINT STAFF_PK Primary Key(staffId)
);			
