-- ICI LE TEST du deuxième trigger où on check si il y a au moins un Chevalier ou une Dame --

-- ÉTAPE 1 : On remplit les tables "Parents" (les dictionnaires)
-- Sans ça, les Tenracs ne peuvent pas exister
INSERT INTO Tenrac_Grade (grade_id, grade_nom) VALUES (1, 'CHEVALIER');
INSERT INTO Tenrac_Grade (grade_id, grade_nom) VALUES (2, 'ADHERENT');

INSERT INTO Tenrac_Dignite (dignite_id, dignite_nom) VALUES (1, 'AUCUNE');

INSERT INTO Organisme (organisme_siret, organisme_nom, organisme_raison) 
VALUES ('12345678901234', 'Club Raclette', 'Assoc');

INSERT INTO Ordre (ordre_id, ordre_nom) VALUES (1, 'Ordre du Fromage');

INSERT INTO Adresse (adresse_id, adresse_principale, adresse_code_postal, adresse_ville, ordre_id) 
VALUES (1, '1 rue du Gruyere', '75000', 'Paris', 1);

-- ÉTAPE 2 : On crée la Réunion
INSERT INTO Reunion (reunion_id, reunion_date, adresse_id) 
VALUES (500, CURRENT_TIMESTAMP, 1);

-- ÉTAPE 3 : On crée les Tenracs (Attention aux IDs 1 et 2 pour les grades)
-- Le Tenrac 10 est ADHERENT (grade_id 2)
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, dignite_id)
VALUES (10, 'Dupont', 'Jean', 'jean@mail.com', '010203', 'Rue A', '75', 'Paris', '12345678901234', 2, 1);

-- Le Tenrac 11 est CHEVALIER (grade_id 1)
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, dignite_id)
VALUES (11, 'Lancelot', 'Du Lac', 'noble@mail.com', '010204', 'Chateau B', '75', 'Paris', '12345678901234', 1, 1);

-- ÉTAPE 4 : LE TEST DU TRIGGER
-- Tentative 1 : Jean (Adhérent) essaie d'ouvrir la réunion seul -> DOIT BLOQUER
INSERT INTO Tenrac_Se_Reunissent (tenrac_id, reunion_id) VALUES (10, 500);

-- Tentative 2 : Lancelot (Chevalier) rejoint la réunion -> DOIT PASSER
INSERT INTO Tenrac_Se_Reunissent (tenrac_id, reunion_id) VALUES (11, 500);

-- Lien vers le dialogue entre Ewan FRANCOIS et GEMINI pour réaliser les tests https://gemini.google.com/app/3985d296ac3e0b56?hl=fr --
