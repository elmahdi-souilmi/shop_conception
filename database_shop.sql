create database shop;
CREATE TABLE fourniseur (
    ref_fourni int NOT NULL,
    nom_fourni varchar(255) NOT NULL,
    email  varchar(255),
    tele varchar(15),
    address varchar(40),
    PRIMARY KEY (ref_fourni)
); 
CREATE TABLE Produit (
    ProduitID int NOT NULL,
    quantite int ,
    prix int NOT NULL,
    FOREIGN KEY (ref_fourni) REFERENCES fourniseur(ref_fourni),
    PRIMARY KEY (ProduitID)
); 
CREATE TABLE rayon (
    code_rayon int NOT NULL,
    info varchar(255) NOT NULL,
    FOREIGN KEY (ProduitID) REFERENCES Produit(ProduitID),
    PRIMARY KEY (code_rayon)
); 