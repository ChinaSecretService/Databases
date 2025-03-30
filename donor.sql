DROP TABLE IF EXISTS Donor_table;
DROP TABLE IF EXISTS Recieves_donation;

CREATE TABLE Donor_table(
    name    TEXT,
    PRIMARY KEY(name)
);

CREATE TABLE Recieves_donation(
    location TEXT,
    name TEXT,
    amount INTEGER,
    PRIMARY KEY (location, name, amount),
    FOREIGN KEY (location) REFERENCES Botanical_Garden(location),
    FOREIGN KEY (name) REFERENCES Donor_table(name),
    );

INSERT INTO Donor_table (name) VALUES
('University of Leiden'),
('Johnson and Johnson'),
('Bio Labs Leiden'),
('Botanic Gardens Conservation International (BGCI)'),
('Stichting Vrienden van de Leidse Hortus'),
('Gravin van Bylandt Stichting'),
('Van der Mandele Stichting'),
('Provincie Zuid-Holland'),
('BPD Cultuurfonds'),
('Fiskars NL'),
('Gardena NL'),
('Husqvarna NL'),
('Upperbloom'),
('Plantsome'),
('Garden Connect'),
('Grow Dutch'),
('Dutch Museum Association'),
('Jakarta Hotel Stichting'),
('NL Bloeit'),
('STIHL NL');
