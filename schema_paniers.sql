CREATE TABLE paniers (
    id_panier VARCHAR PRIMARY KEY NOT NULL,
    label_panier VARCHAR,
    type_panier VARCHAR,
    id_utilisateur VARCHAR,
    actif BOOLEAN,
    nombre_produits INTEGER,
    date_publication DATE,
    utilisateur_creation VARCHAR,
    date_creation DATE,
    utilisateur_modification VARCHAR,
    date_modification DATE,
    image VARCHAR,
    presentation VARCHAR,
    links VARCHAR
);



CREATE TABLE produits_paniers (
    id_produits_paniers TEXT PRIMARY KEY NOT NULL,
    id_panier VARCHAR,
    id_produit VARCHAR,
    label_produit VARCHAR,
    label_panier VARCHAR,
    quantite INTEGER,
    utilisateur_creation VARCHAR,
    date_creation DATE,
    links VARCHAR,
    FOREIGN KEY(id_panier) REFERENCES paniers(id_panier),
    FOREIGN KEY(id_produit) REFERENCES produits(id)
);
