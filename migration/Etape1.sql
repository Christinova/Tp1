CREATE TABLE Gargotte_Rado
\c Gargotte_Rado;

CREATE TABLE plat(
    id_plat SERIAL PRIMARY KEY,
    libelle VARCHAR(50),
    prix_plat NUMERIC (10,2)
  );


INSERT INTO plat (id_plat, libelle, prix_plat) VALUES
(1,'Romazava', 7000.00),
(2,'Ravitoto', 8000.00),
(3,'Akoho_sy_voanio', 8500.00),
(4,'Mi_soa', 6000.00),
(5,'Soupe Chisnoise', 5000.00),
(6,'Mofo Gasy', 1000.00),
(7,'Ranon-apango',500.00);

