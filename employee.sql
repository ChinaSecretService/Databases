sqlite> PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Gardeners;
DROP TABLE IF EXISTS Researchers;
DROP TABLE IF EXISTS Training;
    
CREATE TABLE Employees (
    ssn INTEGER,
    name TEXT,
    age INTEGER,
    salary INTEGER,
    e_mail TEXT,
    PRIMARY KEY(ssn),
);

CREATE TABLE Researchers (
    ssn INTEGER,
    season TEXT,
    university TEXT,
    FOREIGN KEY(ssn) REFERENCES Employees(ssn)
);

CREATE TABLE Gardeners (
    ssn INTEGER,
    seniority TEXT,
    FOREIGN KEY(ssn) REFERENCES Employees(ssn)
);

CREATE TABLE Training(
    trainer_ssn INTEGER,
    trainee_ssn INTEGER,
    PRIMARY KEY (trainer_ssn,trainee_ssn),
    FOREIGN KEY (trainer_ssn) REFERENCES Gardeners(ssn),
    FOREIGN KEY (trainee_ssn) REFERENCES Gardeners(ssn)
);

INSERT INTO Employees (ssn, name, age, salary, e_mail)
VALUES
(111111111, 'Angela Van Delft', 20, 95000, 'angela.vandelft@delftbgarden.nl'),
(123456789, 'Walter White', 50, 85000, 'walter.white@leidenbgarden.nl'),
(987654321, 'Jon Snow', 30, 62000, 'jon.snow@delftbgarden.nl'),
(567890123, 'Daenerys Targaryen', 28, 90000, 'daenerys.targaryen@amsterdambgarden.nl'),
(654321987, 'Tony Stark', 48, 100000, 'tony.stark@leidenbgarden.nl'),
(345678901, 'Sherlock Holmes', 35, 75000, 'sherlock.holmes@delftbgarden.nl'),
(112233445, 'Arya Stark', 22, 72000, 'arya.stark@amsterdambgarden.nl'),
(998877665, 'Harry Potter', 32, 78000, 'harry.potter@leidenbgarden.nl'),
(334455667, 'Bruce Wayne', 45, 92000, 'bruce.wayne@delftbgarden.nl'),
(556677889, 'Hermione Granger', 29, 81000, 'hermione.granger@amsterdambgarden.nl'),
(667788990, 'Jack Sparrow', 40, 70000, 'jack.sparrow@leidenbgarden.nl'),
(223344556, 'Rachel Green', 35, 63000, 'rachel.green@amsterdambgarden.nl'),
(778899001, 'Monica Geller', 34, 69000, 'monica.geller@delftbgarden.nl'),
(889900112, 'Chandler Bing', 36, 65000, 'chandler.bing@leidenbgarden.nl'),
(990011223, 'Phoebe Buffay', 31, 54000, 'phoebe.buffay@delftbgarden.nl'),
(101112131, 'Joey Tribbiani', 38, 61000, 'joey.tribbiani@amsterdambgarden.nl'),
(212223242, 'Michael Scott', 42, 85000, 'michael.scott@leidenbgarden.nl'),
(323334353, 'Dwight Schrute', 40, 68000, 'dwight.schrute@amsterdambgarden.nl'),
(434445464, 'Jim Halpert', 35, 72000, 'jim.halpert@delftbgarden.nl'),
(545556575, 'Pam Beesly', 33, 62000, 'pam.beesly@leidenbgarden.nl'),
(656667687, 'Frodo Baggins', 28, 71000, 'frodo.baggins@amsterdambgarden.nl'),
(767778798, 'Samwise Gamgee', 30, 60000, 'samwise.gamgee@delftbgarden.nl'),
(878889909, 'Gandalf the Grey', 60, 95000, 'gandalf.grey@leidenbgarden.nl'),
(989900112, 'Luke Skywalker', 29, 68000, 'luke.skywalker@amsterdambgarden.nl'),
(101213141, 'Leia Organa', 32, 72000, 'leia.organa@delftbgarden.nl'),
(212324253, 'Han Solo', 45, 89000, 'han.solo@leidenbgarden.nl'),
(323435363, 'Anakin Skywalker', 27, 67000, 'anakin.skywalker@amsterdambgarden.nl'),
(434546474, 'Obi-Wan Kenobi', 50, 94000, 'obiwan.kenobi@delftbgarden.nl'),
(545657575, 'Lara Croft', 26, 52000, 'lara.croft@amsterdambgarden.nl'),
(656768687, 'John Wick', 38, 83000, 'john.wick@leidenbgarden.nl'),
(767879797, 'Katniss Everdeen', 31, 64000, 'katniss.everdeen@amsterdambgarden.nl'),
(878990909, 'Neo Anderson', 37, 87000, 'neo.anderson@leidenbgarden.nl'),
(989101112, 'Morpheus', 45, 88000, 'morpheus@delftbgarden.nl'),
(101213151, 'Trinity', 40, 81000, 'trinity@amsterdambgarden.nl'),
(212324262, 'Yoda', 65, 100000, 'yoda@leidenbgarden.nl'),
(323435364, 'Bilbo Baggins', 45, 77000, 'bilbo.baggins@delftbgarden.nl'), -- Fixed duplicate SSN
(434546484, 'Peter Parker', 30, 61000, 'peter.parker@amsterdambgarden.nl'),
(545657576, 'Clark Kent', 33, 75000, 'clark.kent@leidenbgarden.nl'),
(656768696, 'Diana Prince', 28, 78000, 'diana.prince@delftbgarden.nl'),
(767879808, 'Steve Rogers', 40, 83000, 'steve.rogers@amsterdambgarden.nl'),
(878990929, 'Natasha Romanoff', 35, 86000, 'natasha.romanoff@leidenbgarden.nl'),
(989101223, 'Bruce Banner', 45, 82000, 'bruce.banner@amsterdambgarden.nl'),
(101112313, 'Thor Odinson', 38, 93000, 'thor.odinson@delftbgarden.nl'),
(212223334, 'Wanda Maximoff', 32, 79000, 'wanda.maximoff@amsterdambgarden.nl'),
(323334456, 'Vision', 35, 88000, 'vision@leidenbgarden.nl'),
(434546576, 'Tyrion Lannister', 42, 85000, 'tyrion.lannister@delftbgarden.nl'),
(545657697, 'Cersei Lannister', 43, 92000, 'cersei.lannister@amsterdambgarden.nl'),
(656768718, 'Jaime Lannister', 45, 87000, 'jaime.lannister@leidenbgarden.nl'),
(767879838, 'Sansa Stark', 29, 61000, 'sansa.stark@delftbgarden.nl'),
(878990949, 'Jorah Mormont', 40, 73000, 'jorah.mormont@amsterdambgarden.nl');

INSERT INTO Gardeners (ssn, seniority):
VALUES
(111111111, Senior),
(123456789, Senior),
(987654321, Senior),
(567890123, Senior),
(654321987, Senior),
(345678901, Senior),
(112233445, Senior),
(998877665, Senior),
(334455667, Senior),
(556677889, Senior),
(667788990, Senior),
(223344556, Senior),
(778899001, Senior),
(889900112, Senior),
(990011223, Junior),
(101112131, Junior),
(212223242, Junior),
(323334353, Junior),
(434445464, Junior),
(545556575, Junior),
(656667687, Junior),
(767778798, Junior),
(878889909, Junior),
(989900112, Junior),
(101213141, Junior),
(212324253, Junior),
(323435363, Junior),
(434546474, Junior),
(545657575, Junior),
(656768687, Junior),
(767879797, Junior),
(878990909, Junior),
(989101112, Junior),
(101213151, Junior),

