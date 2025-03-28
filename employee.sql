--- DO NOT WORRY ABOUT UNDERSTANDING THE CONTENT OF THIS FILE YET! This will be explained iteratively starting Week 3!
--- Make output beautiful
.header on
.mode column
.nullvalue 'NULL'


--- Create Schema
CREATE TABLE employees (
    ssn CHAR(9) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT CHECK (age > 15),
    salary DECIMAL(10, 2),
    e_mail VARCHAR(100) UNIQUE NOT NULL
);



INSERT INTO employees (ssn, name, age, salary, e_mail)
VALUES
('111111111', 'Angela Van Delft', 20, 95000.00, 'angela.vandelft@delftbgarden.nl'),
('123456789', 'Walter White', 50, 85000.00, 'walter.white@leidenbgarden.nl'),
('987654321', 'Jon Snow', 30, 62000.00, 'jon.snow@delftbgarden.nl'),
('567890123', 'Daenerys Targaryen', 28, 90000.00, 'daenerys.targaryen@amsterdambgarden.nl'),
('654321987', 'Tony Stark', 48, 100000.00, 'tony.stark@leidenbgarden.nl'),
('345678901', 'Sherlock Holmes', 35, 75000.00, 'sherlock.holmes@delftbgarden.nl'),
('112233445', 'Arya Stark', 22, 72000.00, 'arya.stark@amsterdambgarden.nl'),
('998877665', 'Harry Potter', 32, 78000.00, 'harry.potter@leidenbgarden.nl'),
('334455667', 'Bruce Wayne', 45, 92000.00, 'bruce.wayne@delftbgarden.nl'),
('556677889', 'Hermione Granger', 29, 81000.00, 'hermione.granger@amsterdambgarden.nl'),
('667788990', 'Jack Sparrow', 40, 70000.00, 'jack.sparrow@leidenbgarden.nl'),
('223344556', 'Rachel Green', 35, 63000.00, 'rachel.green@amsterdambgarden.nl'),
('778899001', 'Monica Geller', 34, 69000.00, 'monica.geller@delftbgarden.nl'),
('889900112', 'Chandler Bing', 36, 65000.00, 'chandler.bing@leidenbgarden.nl'),
('990011223', 'Phoebe Buffay', 31, 54000.00, 'phoebe.buffay@delftbgarden.nl'),
('101112131', 'Joey Tribbiani', 38, 61000.00, 'joey.tribbiani@amsterdambgarden.nl'),
('212223242', 'Michael Scott', 42, 85000.00, 'michael.scott@leidenbgarden.nl'),
('323334353', 'Dwight Schrute', 40, 68000.00, 'dwight.schrute@amsterdambgarden.nl'),
('434445464', 'Jim Halpert', 35, 72000.00, 'jim.halpert@delftbgarden.nl'),
('545556575', 'Pam Beesly', 33, 62000.00, 'pam.beesly@leidenbgarden.nl'),
('656667687', 'Frodo Baggins', 28, 71000.00, 'frodo.baggins@amsterdambgarden.nl'),
('767778798', 'Samwise Gamgee', 30, 60000.00, 'samwise.gamgee@delftbgarden.nl'),
('878889909', 'Gandalf the Grey', 60, 95000.00, 'gandalf.grey@leidenbgarden.nl'),
('989900112', 'Luke Skywalker', 29, 68000.00, 'luke.skywalker@amsterdambgarden.nl'),
('101213141', 'Leia Organa', 32, 72000.00, 'leia.organa@delftbgarden.nl'),
('212324253', 'Han Solo', 45, 89000.00, 'han.solo@leidenbgarden.nl'),
('323435363', 'Anakin Skywalker', 27, 67000.00, 'anakin.skywalker@amsterdambgarden.nl'),
('434546474', 'Obi-Wan Kenobi', 50, 94000.00, 'obiwan.kenobi@delftbgarden.nl'),
('545657575', 'Lara Croft', 26, 52000.00, 'lara.croft@amsterdambgarden.nl'),
('656768687', 'John Wick', 38, 83000.00, 'john.wick@leidenbgarden.nl'),
('767879797', 'Katniss Everdeen', 31, 64000.00, 'katniss.everdeen@amsterdambgarden.nl'),
('878990909', 'Neo Anderson', 37, 87000.00, 'neo.anderson@leidenbgarden.nl'),
('989101112', 'Morpheus', 45, 88000.00, 'morpheus@delftbgarden.nl'),
('101213151', 'Trinity', 40, 81000.00, 'trinity@amsterdambgarden.nl'),
('212324262', 'Yoda', 65, 100000.00, 'yoda@leidenbgarden.nl'),
('323435363', 'Bilbo Baggins', 45, 77000.00, 'bilbo.baggins@delftbgarden.nl'),
('434546484', 'Peter Parker', 30, 61000.00, 'peter.parker@amsterdambgarden.nl'),
('545657576', 'Clark Kent', 33, 75000.00, 'clark.kent@leidenbgarden.nl'),
('656768696', 'Diana Prince', 28, 78000.00, 'diana.prince@delftbgarden.nl'),
('767879808', 'Steve Rogers', 40, 83000.00, 'steve.rogers@amsterdambgarden.nl'),
('878990929', 'Natasha Romanoff', 35, 86000.00, 'natasha.romanoff@leidenbgarden.nl'),
('989101223', 'Bruce Banner', 45, 82000.00, 'bruce.banner@amsterdambgarden.nl'),
('101112313', 'Thor Odinson', 38, 93000.00, 'thor.odinson@delftbgarden.nl'),
('212223334', 'Wanda Maximoff', 32, 79000.00, 'wanda.maximoff@amsterdambgarden.nl'),
('323334456', 'Vision', 35, 88000.00, 'vision@leidenbgarden.nl'),
('434546576', 'Tyrion Lannister', 42, 85000.00, 'tyrion.lannister@delftbgarden.nl'),
('545657697', 'Cersei Lannister', 43, 92000.00, 'cersei.lannister@amsterdambgarden.nl'),
('656768718', 'Jaime Lannister', 45, 87000.00, 'jaime.lannister@leidenbgarden.nl'),
('767879838', 'Sansa Stark', 29, 61000.00, 'sansa.stark@delftbgarden.nl'),
('878990949', 'Jorah Mormont', 40, 73000.00, 'jorah.mormont@amsterdambgarden.nl');
