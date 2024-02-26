-- noinspection SqlDialectInspectionForFile

-- noinspection SqlNoDataSourceInspectionForFile

create database library;

CREATE TABLE Users (
                       UserId int,
                       FName varchar(255),
                       LName varchar(255),
                       StreetAddress varchar(255),
                       City varchar(255),
                       State varchar(100),
                       ZipCode int,
                       Phone varchar(10),
                       MemberShipDate date,
                       isLibrarian boolean,
                       primary key (UserId)
);

CREATE TABLE Credentials(
                            UserId int,
                            UserName varchar(255),
                            Password varchar(255),
                            foreign key (UserId) references users(UserId)
);

CREATE TABLE Books (
                       BookId int AUTO_INCREMENT,
                       ISBN varchar(255),
                       Title varchar(255),
                       Author varchar(255),
                       Publisher varchar(255),
                       Genre varchar(255),
                       DateAdded Date,
                       DateModified Date,
                       PRIMARY KEY(BookId)
);


INSERT INTO Users (UserId, FName, LName, StreetAddress, City, State, ZipCode, Phone, MemberShipDate, isLibrarian) VALUES
(1, 'John', 'Doe', '123 Elm St', 'Springfield', 'IL', 62704, '2175550123', '2023-01-01', 0),
(2, 'Jane', 'Smith', '456 Maple Ave', 'Lincoln', 'NE', 68502, '4025550187', '2023-02-15', 1),
(3, 'Emily', 'Johnson', '789 Oak Ln', 'Madison', 'WI', 53703, '6085550246', '2023-03-10', 0),
(4, 'Michael', 'Brown', '101 Pine Ct', 'Columbus', 'OH', 43210, '6145550305', '2023-04-05', 0),
(5, 'Chloe', 'Davis', '234 Birch Pl', 'Austin', 'TX', 78701, '5125550364', '2023-05-20', 1),
(6, 'Luke', 'Miller', '567 Cedar Blvd', 'Phoenix', 'AZ', 85004, '6025550423', '2023-06-15', 0),
(7, 'Sophia', 'Wilson', '890 Redwood Dr', 'Seattle', 'WA', 98101, '2065550482', '2023-07-01', 0),
(8, 'Ethan', 'Moore', '321 Spruce St', 'Denver', 'CO', 80202, '3035550541', '2023-08-20', 1),
(9, 'Olivia', 'Taylor', '654 Fir Ave', 'Portland', 'OR', 97203, '5035550600', '2023-09-10', 0),
(10, 'Liam', 'Anderson', '987 Pineapple St', 'San Francisco', 'CA', 94103, '4155550669', '2023-10-05', 0);


INSERT INTO Credentials (UserId, UserName, Password) VALUES
                                                         (1, 'john.doe', 'password123'),
                                                         (2, 'jane.smith', 'password124'),
                                                         (3, 'emily.johnson', 'password125'),
                                                         (4, 'michael.brown', 'password126'),
                                                         (5, 'chloe.davis', 'password127'),
                                                         (6, 'luke.miller', 'password128'),
                                                         (7, 'sophia.wilson', 'password129'),
                                                         (8, 'ethan.moore', 'password1210'),
                                                         (9, 'olivia.taylor', 'password1211'),
                                                         (10, 'liam.anderson', 'password1212');

INSERT INTO Books (ISBN, Title, Author, Publisher, Genre, DateAdded, DateModified) VALUES
                                                                                       ('978-3-16-148410-0', 'The Great Adventure', 'John Doe', 'Fictional Publishing', 'Adventure', '2023-01-01', '2023-01-02'),
                                                                                       ('978-1-23-456789-7', 'Science for Beginners', 'Emily Johnson', 'Educational Press', 'Science', '2023-01-15', '2023-01-20'),
                                                                                       ('978-0-12-345678-9', 'Mysteries of the Ocean', 'Michael Brown', 'Oceanic Books', 'Nature', '2023-02-01', '2023-02-05'),
                                                                                       ('978-4-56-789012-3', 'History of the 21st Century', 'Chloe Davis', 'Historical Insights', 'History', '2023-02-20', '2023-02-25'),
                                                                                       ('978-5-67-890123-4', 'Cooking with Spices', 'Luke Miller', 'Culinary Arts', 'Cooking', '2023-03-01', '2023-03-10'),
                                                                                       ('978-6-78-901234-5', 'The Art of Gardening', 'Sophia Wilson', 'Green Thumb', 'Gardening', '2023-03-15', '2023-03-20'),
                                                                                       ('978-7-89-012345-6', 'Exploring the Cosmos', 'Ethan Moore', 'Space Publishers', 'Astronomy', '2023-04-01', '2023-04-05'),
                                                                                       ('978-8-90-123456-7', 'World of Insects', 'Olivia Taylor', 'Nature World', 'Entomology', '2023-04-15', '2023-04-18'),
                                                                                       ('978-9-01-234567-8', 'Modern Architecture', 'Liam Anderson', 'Design House', 'Architecture', '2023-05-01', '2023-05-05'),
                                                                                       ('978-0-98-765432-1', 'Philosophy in Daily Life', 'Jane Smith', 'Thoughtful Reads', 'Philosophy', '2023-05-20', '2023-05-22');


