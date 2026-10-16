CREATE TABLE Gargotte_Rado
\c Gargotte_Rado;

CREATE TABLE plat(
    id_plat SERIAL PRIMARY KEY,
    libelle VARCHAR(50),
    prix_plat NUMERIC (10,2),
    categorie_id INT,
    CONSTRAINT fk_categorie
    FOREIGN KEY(categorie_id) REFERENCES categorie(id_categorie)
);

CREATE TABLE categorie(
    id_categorie SERIAL PRIMARY KEY,
    libelle VARCHAR(50)
);

INSERT INTO categorie (id_categorie, libelle) VALUES
(1,'Plat_malagasy'),
(2,'Plat_chinois'),
(3,'Soupe'),
(4,'Dessert_et_Goute'),
(5,'Boisson');

INSERT INTO plat (id_plat, libelle, prix_plat, categorie_id) VALUES
(1,'Romazava', 7000.00, 1),
(2,'Ravitoto', 8000.00, 1),
(3,'Akoho_sy_voanio', 8500.00, 1),
(4,'Mi_soa', 6000.00, 2),
(5,'Soupe Chisnoise', 5000.00, 3),
(6,'Mofo Gasy', 1000.00, 4),
(7,'Ranon-apango',500.00,5);

