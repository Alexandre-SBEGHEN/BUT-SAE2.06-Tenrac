-- ////////////////////////////////////////////////////////////////////
/*                                                                                                                                                                                               
                                         .--,-``-.     
                 ,---,        ,---,     /   /     '.   
       ,---.  ,`--.' |     ,`--.' |    / ../        ;  
      /__./| /    /  :    /    /  :    \ ``\  .`-    ' 
 ,---.;  ; |:    |.' '   :    |.' '     \___\/   \   : 
/___/ \  | |`----':  |   `----':  |          \   :   | 
\   ;  \ ' |   '   ' ;      '   ' ;          /  /   /  
 \   \  \: |   |   | |      |   | |          \  \   \  
  ;   \  ' .   '   : ;      '   : ;      ___ /   :   | 
   \   \   '   |   | '      |   | '     /   /\   /   : 
    \   `  ;   '   : | ___  '   : | ___/ ,,/  ',-    . 
     :   \ |   ;   |.'/  .\ ;   |.'/  .\ ''\        ;  
      '---"    '---'  \  ; |'---'  \  ; \   \     .'   
                       `--"         `--" `--`-,,-'     
                                                                                                                 
*/
-- ////////////////////////////////////////////////////////////////////

/* 

--- LEGENDE DU CODE ---

/// VERSION ///

*** PARTIES (TENRAC / NOURRITURE / MACHINES) ***

=== SOUS-PARTIE DE CHAQUE PARTIE ===

-----------------------

*/


PROMPT "Création de l'intension de la base de données des Tenracs"

-- *****************************************************************

PROMPT "Définition des données"

-- *****************************************************************

-- ==================================================================

-- SUPPRESSION AUTOMATIQUE DES TABLES AVANT DE LES CREER POUR EVITER PROBLEMES

-- //** ENTITE **//
DROP TABLE IF EXISTS Tenrac CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Adresse CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Tenrac_Grade CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Tenrac_Rang CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Tenrac_Titre CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Tenrac_Dignite CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Carte_Membre CASCADE CONSTRAINT PURGE;
-----------------------------------------------------------
DROP TABLE IF EXISTS Ordre CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Club CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Reunion CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Organisme CASCADE CONSTRAINT PURGE;
-----------------------------------------------------------
DROP TABLE IF EXISTS Allergie CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Croyance CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Conviction CASCADE CONSTRAINT PURGE;
-----------------------------------------------------------
DROP TABLE IF EXISTS Machine CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Entretient CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Certificat_Entretient CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Machine_Modele CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Registre CASCADE CONSTRAINT PURGE;
-----------------------------------------------------------
DROP TABLE IF EXISTS Plat CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Legume CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Boisson CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Sauce CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Raclette CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Composition CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Ingredient CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Degustation CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Repas CASCADE CONSTRAINT PURGE;
-- //******************//


-- //** ENTITEE ASSOS **//

DROP TABLE IF EXISTS Tenrac_Se_Reunissent CASCADE CONSTRAINT PURGE;

-- //******************//

-- **********************************************************************

-- TENRAC

-- ==================================================================

-- TENRAC

CREATE TABLE Tenrac {
    tenrac_id NUMBER(10, 0),
    tenrac_nom VARCHAR2(50) NOT NULL,
    tenrac_prenom VARCHAR2(50) NOT NULL,
    tenrac_courriel VARCHAR2(320) NOT NULL,
    tenrac_telephone VARCHAR2(20) NOT NULL,
    tenrac_adresse_principale VARCHAR2(38) NOT NULL,
    tenrac_adresse_complement VARCHAR2(38),
    tenrac_adresse_code_postal VARCHAR2(10) NOT NULL,
    tenrac_adresse_ville VARCHAR2(38) NOT NULL,
    PRIMARY KEY(tenrac_id),
    FOREIGN KEY(organisme_siret) REFERENCES Organisme(organisme_siret),
    FOREIGN KEY(grade_id) REFERENCES Tenrac_Grade(grade_id),
    FOREIGN KEY(rang_id) REFERENCES Tenrac_Rang(rang_id),
    FOREIGN KEY(titre_id) REFERENCES Tenrac_Titre(titre_id), 
    FOREIGN KEY(dignite_id) REFERENCES Tenrac_Dignite(dignite_id)
}

CREATE TABLE Adresse {
    adresse_id NUMBER(5, 0),
    adresse_principale VARCHAR2(38) NOT NULL,
    adresse_complement VARCHAR2(38),
    adresse_code_postal VARCHAR2(10) NOT NULL,
    adresse_ville VARCHAR2(38) NOT NULL,
    PRIMARY KEY(adresse_id),
    FOREIGN KEY(ordre_id) REFERENCES Ordre(ordre_id)
}

CREATE TABLE Carte_Membre {
    tenrac_code NUMBER(10, 0),
    carte_active BOOLEAN NOT NULL,
    carte_expiration DATE NOT NULL,
    PRIMARY KEY(tenrac_code),
    FOREIGN KEY(club_id) REFERENCES Club(club_id),
    FOREIGN KEY(tenrac_id) REFERENCES Tenrac(tenrac_id)
}

-- ==================================================================

-- GRADE / TITRE / RANG / DIGNITE

CREATE TABLE Tenrac_Grade {
    grade_id NUMBER(3, 0),
    grade_nom VARCHAR2(32) NOT NULL,
    PRIMARY KEY(grade_id)
}

CREATE TABLE Tenrac_Rang {
    rang_id NUMBER(3, 0),
    rang_nom VARCHAR2(32) NOT NULL,
    PRIMARY KEY(rang_id)
}

CREATE TABLE Tenrac_Titre {
    titre_id NUMBER(3, 0),
    titre_nom VARCHAR2(32) NOT NULL,
    PRIMARY KEY(titre_id)
}

CREATE TABLE Tenrac_Dignite {
    dignite_id NUMBER(3, 0),
    dignite_nom VARCHAR2(32) NOT NULL,
    PRIMARY KEY(dignite_id)
}

-- ==================================================================

-- SENSIBILITE TENRAC => ALLERGIE / CROYANCE / CONVICTION

CREATE TABLE Allergie {
    allergie_id NUMBER(10, 0),
    allergie_nom VARCHAR2(64) NOT NULL,
    PRIMARY KEY(allergie_id)
}

CREATE TABLE Croyance {
    croyance_id NUMBER(10, 0),
    croyance_nom VARCHAR2(64) NOT NULL,
    PRIMARY KEY(croyance_id)
}

CREATE TABLE Conviction {
    conviction_id NUMBER(10,0),
    conviction_nom VARCHAR2(50) NOT NULL,
    PRIMARY KEY(conviction_id)
}

-- ==================================================================


-- ==================================================================

-- ORDRE / CLUB / ORGANISME / REUNION

CREATE TABLE Ordre {
    ordre_id NUMBER(3, 0),
    ordre_nom VARCHAR2(50) NOT NULL,
    PRIMARY KEY(ordre_id),
    FOREIGN KEY(registre_id) REFERENCES Registre(registre_id)
}

CREATE TABLE Club {
    club_id NUMBER(5, 0),
    club_nom VARCHAR2(32) NOT NULL,
    PRIMARY KEY(club_id),
    FOREIGN KEY(ordre_id) REFERENCES Ordre(ordre_id),
    FOREIGN KEY(registre_id) REFERENCES Registre(registre_id)
}

CREATE TABLE Organisme {
    organisme_siret VARCHAR2(14),
    organisme_nom VARCHAR2(64) NOT NULL,
    organisme_raison VARCHAR2(128) NOT NULL,
    PRIMARY KEY(organisme_siret)
}

CREATE TABLE Reunion {
    reunion_id NUMBER(20, 0),
    reunion_date DATETIME NOT NULL,
    PRIMARY KEY(reunion_id),
    FOREIGN KEY(adresse_id) REFERENCES Adresse(adresse_id)
}

-- ==================================================================

-- REGISTRE /!\ EN LIEN AVEC L'ORDRE ET LE CLUB
CREATE TABLE Registre {
    registre_id NUMBER(5, 0),
    PRIMARY KEY(registre_id)
}

-- ==================================================================


-- **********************************************************************



-- **********************************************************************

-- NOURRITURES


-- ==================================================================

-- PLAT AVEC NOURRITURE ET CI

CREATE TABLE Plat {
    INHERITS(Composition);
    plat_id NUMBER(5, 0),
    plat_nom VARCHAR2(64) NOT NULL,
    PRIMARY KEY(plat_id),
    FOREIGN KEY(legume_id) REFERENCES Legume(legume_id),
    FOREIGN KEY(raclette_id) REFERENCES Raclette(raclette_id),
    FOREIGN KEY(composition_id) REFERENCES Composition(composition_id)
}

CREATE TABLE Raclette {
    raclette_id NUMBER(3, 0),
    raclette_nom VARCHAR2(64) NOT NULL,
    PRIMARY KEY(raclette_id)
}

CREATE TABLE Repas {
    repas_id NUMBER(10, 0),
    repas_nom VARCHAR2(64) NOT NULL,
    PRIMARY KEY(repas_id)
}

CREATE TABLE Boisson {
    boisson_id NUMBER(5, 0),
    boisson_nom VARCHAR2(32) NOT NULL,
    PRIMARY KEY(boisson_id)
}

CREATE TABLE Sauce {
    INHERITS(Composition);
    sauce_id NUMBER(5, 0),
    sauce_nom VARCHAR2(64) NOT NULL,
    PRIMARY KEY(sauce_id),
    FOREIGN KEY(composition_id) REFERENCES Composition(composition_id)
}

CREATE TABLE Composition {
    composition_id NUMBER(10, 0),
    PRIMARY KEY(composition_id)
}

CREATE TABLE Ingredient {
    ingredient_id NUMBER(5, 0),
    ingredient_nom VARCHAR2(64) NOT NULL,
    PRIMARY KEY(ingredient_id)
}

CREATE TABLE Legume {
    legume_id NUMBER(5, 0),
    legume_nom VARCHAR2(64) NOT NULL,
    PRIMARY KEY(legume_id)
}

CREATE TABLE Degustation {
    INHERITS(Reunion);
    INHERITS(Tenrac);
    INHERITS(Repas);
    repas_id NUMBER(10, 0),
    tenrac_id NUMBER(10, 0),
    reunion_id NUMBER(20, 0),
    PRIMARY KEY (repas_id, tenrac_id, reunion_id),
    FOREIGN KEY(repas_id) REFERENCES Repas(repas_id),
    FOREIGN KEY(tenrac_id) REFERENCES Tenrac(tenrac_id),
    FOREIGN KEY(reunion_id) REFERENCES Reunion(reunion_id)
} 

-- ==================================================================


-- **********************************************************************



-- **********************************************************************

-- MACHINES

-- ==================================================================

-- ENTRETIENT 

CREATE TABLE Entretient {
    entretient_id NUMBER(10, 0),
    entretient_type VARCHAR2(64) NOT NULL,
    entretient_periodicite NUMBER(5, 0) NOT NULL,
    PRIMARY KEY(entretient_id)
}

CREATE TABLE Machine_Modele {
    modele_id NUMBER(5, 0),
    modele_nom VARCHAR2(32) NOT NULL,
    PRIMARY KEY(modele_id)
}

CREATE TABLE Certificat_Entretient {
    certificat_id NUMBER(10, 0),
    entretient_date DATETIME NOT NULL,
    PRIMARY KEY(certificat_id),
    FOREIGN KEY(tenrac_id) REFERENCES Tenrac(tenrac_id),
    FOREIGN KEY(machine_id) REFERENCES Machine(machine_id)
}

-- ==================================================================

-- ==================================================================

-- MACHINE

CREATE TABLE Machine {
    machine_id NUMBER(5, 0),
    machine_nom VARCHAR2(16),
    PRIMARY KEY(machine_id),
    FOREIGN KEY(modele_id) REFERENCES Machine_Modele(modele_id)
}

-- ==================================================================

-- **********************************************************************



-- **********************************************************************

-- ENTITES ASSOCIATIVES

-- **********************************************************************


-- ==================================================================

-- TENRAC

-- ==================================================================

CREATE TABLE Tenrac_Se_Reunissent {
    tenrac_id NUMBER(10, 0),
    reunion_id NUMBER(20, 0),
    PRIMARY KEY(tenrac_id, reunion_id),
    FOREIGN KEY(tenrac_id) REFERENCES Teranc(tenrac_id),
    FOREIGN KEY(reunion_id) REFERENCES Reunion(reunion_id)
}
