INSERT INTO plat (id_plat, libelle,quantite_plat,prix_plat, categorie_id, commande_id) VALUES
(1,'Romazava',2, 7000.00, 1, 1),
(2,'Ravitoto',3, 8000.00, 1, 1);

SELECT SUM(p.prix_plat * p.quantite_plat) AS montant_total_commande 
FROM plat p 
JOIN commande c ON p.commande_id = c.id_commande WHERE c.id_commande = 1 ;