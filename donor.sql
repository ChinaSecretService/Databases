CREATE DATABASE Donor;
USE Donor;

CREATE TABLE DonorTable (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

INSERT INTO DonorTable (name) VALUES
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

