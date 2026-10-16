# CONCEPTION DE BASE DE DONNÉ

## Etape2 : les categories
### Ranger les plats par catégorie

    # Creation de 1 tables:
    -Categorie
    -> Ajouter une foreign-key dans le tableau plat

    # Rangement par gatéforie:
         libelle      |     libelle     
    ------------------+-----------------
    Plat_malagasy     | Romazava
    Plat_malagasy     | Ravitoto
    Plat_malagasy     | Akoho_sy_voanio
    Plat_chinois      | Mi_soa
    Soupe             | Soupe Chisnoise
    Dessert_et_Goute  | Mofo Gasy
    Boisson           | Ranon-apango

    ->piège : Pourquoi on a pas mit categorie dans le table plat puisque une Catégorie de plat peut avoir nombreuse plat exemple :
     Cat: plat malagasy => plat 1, plat2, plat 3

     Quand on parle de plat malagasy on ne pense pas à un seul plat mais plusieurs c'est pour cela qu'on met pas catégorie dans table plat 