CREATE TABLE Gargotte_Rado
\c Gargotte_Rado;

CREATE TABLE categorie(
    id_categorie SERIAL PRIMARY KEY,
    libelle VARCHAR(50)
);

CREATE TABLE plat(
    id_plat SERIAL PRIMARY KEY,
    libelle VARCHAR(50),
    quantite_plat NUMERIC(10,2),
    prix_plat NUMERIC (10,2),
    categorie_id INT,
    CONSTRAINT fk_categorie
    FOREIGN KEY(categorie_id) REFERENCES categorie(id_categorie),
    commande_id INT,
    CONSTRAINT fk_commande
    FOREIGN KEY(commande_id) REFERENCES commande(id_commande)
);

CREATE TABLE commande(
    id_commande SERIAL PRIMARY KEY,
    date_commande date
);

ALTER TABLE plat ADD COLUMN commande_id INT;
ALTER TABLE plat ADD CONSTRAINT fk_commande
    FOREIGN KEY(commande_id) REFERENCES commande(id_commande);

INSERT INTO categorie (id_categorie, libelle) VALUES
(1,'Plat_malagasy'),
(2,'Plat_chinois'),
(3,'Soupe'),
(4,'Dessert_et_Goute'),
(5,'Boisson');

INSERT INTO plat (id_plat, libelle,quantite_plat,prix_plat, categorie_id, commande_id) VALUES
(1,'Romazava', 7000.00, 1000.00, 1, 1),
(2,'Ravitoto', 8000.00, 1200.00, 1, 1),
(3,'Akoho_sy_voanio', 8500.00, 1300.00, 1, 1),
(4,'Mi_soa', 6000.00, 855.55, 2, 1),
(5,'Soupe Chisnoise', 5000.00, 755.55, 3, 1),
(6,'Mofo Gasy', 1009.99, 2222.22, 4, 1),
(7,'Ranon-apango',500.00,5);

INSERT INTO commande (id_commande, date_commande)
VALUES (1, '2023-10-01');
