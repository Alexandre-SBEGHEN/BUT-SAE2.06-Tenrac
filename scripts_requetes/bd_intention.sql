-- ////////////////////////////////////////////////////////////////////
/*                                                                                                                                                                                                                                                                                                        
                                                            
                 ,---,            ,----,           ,----,   
       ,---.  ,`--.' |          .'   .' \        .'   .' \  
      /__./| /    /  :        ,----,'    |     ,----,'    | 
 ,---.;  ; |:    |.' '        |    :  .  ;     |    :  .  ; 
/___/ \  | |`----':  |        ;    |.'  /      ;    |.'  /  
\   ;  \ ' |   '   ' ;        `----'/  ;       `----'/  ;   
 \   \  \: |   |   | |          /  ;  /          /  ;  /    
  ;   \  ' .   '   : ;         ;  /  /-,        ;  /  /-,   
   \   \   '   |   | '        /  /  /.`|       /  /  /.`|   
    \   `  ;   '   : | ___  ./__;      :___  ./__;      :   
     :   \ |   ;   |.'/  .\ |   :    .'/  .\ |   :    .'    
      '---"    '---'  \  ; |;   | .'   \  ; |;   | .'       
                       `--" `---'       `--" `---'          
                                                                                                                                                                                                                                                                                                                               
*/
-- ////////////////////////////////////////////////////////////////////

/* 

--- LEGENDE DU CODE ---

/// VERSION ///

*** PARTIES (TENRAC / NOURRITURE / MACHINES) ***

=== SOUS-PARTIE DE CHAQUE PARTIE ===

PK ==> PRIMARY KEY
FK ==> FOREIGN KEY
DM ==> DOMAIN
TGR ==> TRIGGER

-----------------------

*/
-- EVITER ERREUR D'ESPACE
SET SQLBLANKLINES ON;
--

PROMPT "Création de l'intension de la base de données des Tenracs";

-- *****************************************************************

PROMPT "Définition des données";

/*
CREATE OR REPLACE TRIGGER VERIF_Certificat_Entretien_Dignite
BEFORE INSERT ON Certificat
FOR EACH ROW
DECLARE
    v_dignite NUMBER(3,0);
BEGIN
    SELECT dignite_id INTO v_dignite
    FROM Tenrac
    WHERE tenrac_id = :NEW.tenrac_id;
    
    IF v_dignite IS NULL THEN
        RAISE_APPLICATION_ERROR(-20001, 'ERREUR : L''entretien doit etre effectue par un Tenrac de dignite idoine !');
    END IF;
END;
/
*/

-- *****************************************************************

-- ==================================================================

-- SUPPRESSION AUTOMATIQUE DES TABLES AVANT DE LES CREER POUR EVITER PROBLEMES

-- //** TABLES ENTITES **//
DROP TABLE IF EXISTS Tenrac                     CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Adresse                    CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Tenrac_Grade               CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Tenrac_Rang                CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Tenrac_Titre               CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Tenrac_Dignite             CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Carte_Membre               CASCADE CONSTRAINT PURGE;
-----------------------------------------------------------
DROP TABLE IF EXISTS Ordre                      CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Club                       CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Reunion                    CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Organisme                  CASCADE CONSTRAINT PURGE;
-----------------------------------------------------------
DROP TABLE IF EXISTS Allergie                   CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Croyance                   CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Conviction                 CASCADE CONSTRAINT PURGE;
-----------------------------------------------------------
DROP TABLE IF EXISTS Machine                    CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Entretien                  CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Certificat_Entretien       CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Machine_Modele             CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Registre                   CASCADE CONSTRAINT PURGE;
-----------------------------------------------------------
DROP TABLE IF EXISTS Plat                       CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Legume                     CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Boisson                    CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Sauce                      CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Raclette                   CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Composition                CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Ingredient                 CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Degustation                CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Repas                      CASCADE CONSTRAINT PURGE;
-- //******************//


-- //** TABLES ASSOCIATIONS **//

DROP TABLE IF EXISTS Tenrac_Se_Reunissent       CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Tenrac_Est_Allergique      CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Tenrac_A_Pour_Conviction   CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Tenrac_Croit               CASCADE CONSTRAINT PURGE;
------------------------------------------------------------------------
DROP TABLE IF EXISTS Legume_Peut_Enfreindre     CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Legume_Peut_Heurter        CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Legume_Peut_Provoquer      CASCADE CONSTRAINT PURGE;
------------------------------------------------------------------------
DROP TABLE IF EXISTS Repas_Constitue_De         CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Repas_Servi_Avec           CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Plat_Est_Accompagne_De     CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Compo_Est_Assemblage_De    CASCADE CONSTRAINT PURGE;
------------------------------------------------------------------------
DROP TABLE IF EXISTS Machine_Prepare            CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Modele_Necessite           CASCADE CONSTRAINT PURGE;
DROP TABLE IF EXISTS Registre_Archive           CASCADE CONSTRAINT PURGE;

-- //******************//

-- **********************************************************************

-- TENRAC

-- ==================================================================

-- REGISTRE /!\ EN LIEN AVEC L'ORDRE ET LE CLUB

CREATE TABLE Registre (
    --Attributs --------------------------------------------------------------
    registre_id NUMBER(5, 0),
    --------------------------------------------------------------
    --Contraintes --------------------------------------------------------------
    CONSTRAINT PK_registre_id   PRIMARY KEY(registre_id)
    --------------------------------------------------------------
);

-- ==================================================================

-- ==================================================================

-- GRADE / TITRE / RANG / DIGNITE

CREATE TABLE Tenrac_Grade (
    --Attributs --------------------------------------------------------------
    grade_id        NUMBER(3, 0),
    grade_nom       VARCHAR2(32)    NOT NULL,
    --------------------------------------------------------------
    --Contraintes --------------------------------------------------------------
    CONSTRAINT PK_grade_id      PRIMARY KEY(grade_id)
    --------------------------------------------------------------
);

CREATE TABLE Tenrac_Rang (
    --Attributs --------------------------------------------------------------
    rang_id         NUMBER(3, 0),
    rang_nom        VARCHAR2(32)    NOT NULL,
    --------------------------------------------------------------
    --Contraintes --------------------------------------------------------------
    CONSTRAINT PK_rang_id       PRIMARY KEY(rang_id)
    --------------------------------------------------------------
);

CREATE TABLE Tenrac_Titre (
    --Attributs --------------------------------------------------------------
    titre_id        NUMBER(3, 0),
    titre_nom       VARCHAR2(32)    NOT NULL,
    --------------------------------------------------------------
    --Contraintes --------------------------------------------------------------
    CONSTRAINT PK_titre_id      PRIMARY KEY(titre_id)
    --------------------------------------------------------------
);

CREATE TABLE Tenrac_Dignite (
    --Attributs --------------------------------------------------------------
    dignite_id      NUMBER(3, 0),
    dignite_nom     VARCHAR2(32)    NOT NULL,
    --------------------------------------------------------------
    --Contraintes --------------------------------------------------------------
    CONSTRAINT PK_dignite_id    PRIMARY KEY(dignite_id)
    --------------------------------------------------------------
);

-- ==================================================================

-- ORGANISME

CREATE TABLE Organisme (
    organisme_siret     VARCHAR2(14),
    organisme_nom       VARCHAR2(64)    NOT NULL,
    organisme_raison    VARCHAR2(128)   NOT NULL,
    --------------------------------------------------------------
    CONSTRAINT PK_organisme_siret   PRIMARY KEY(organisme_siret)
    --------------------------------------------------------------
);
-- ==================================================================

-- ==================================================================

-- SENSIBILITE TENRAC => ALLERGIE / CROYANCE / CONVICTION

CREATE TABLE Allergie (
    --Attributs --------------------------------------------------------------
    allergie_id     NUMBER(10, 0),
    allergie_nom    VARCHAR2(64)    NOT NULL,
    --------------------------------------------------------------
    --Contraintes --------------------------------------------------------------
    CONSTRAINT PK_allergie_id   PRIMARY KEY (allergie_id)
    --------------------------------------------------------------
);

CREATE TABLE Croyance (
    --Attributs --------------------------------------------------------------
    croyance_id     NUMBER(10, 0),
    croyance_nom    VARCHAR2(64)    NOT NULL,
    --------------------------------------------------------------
    --Contraintes --------------------------------------------------------------
    CONSTRAINT PK_croyance_id   PRIMARY KEY(croyance_id)
    --------------------------------------------------------------
);

CREATE TABLE Conviction (
    --Attributs --------------------------------------------------------------
    conviction_id   NUMBER(10,0),
    conviction_nom  VARCHAR2(50)    NOT NULL,
    --------------------------------------------------------------
    --Contraintes --------------------------------------------------------------
    CONSTRAINT PK_conviction_id  PRIMARY KEY(conviction_id)
    --------------------------------------------------------------
);

-- ==================================================================

-- REPAS

CREATE TABLE Repas (
    repas_id    NUMBER(10, 0),
    repas_nom   VARCHAR2(64)    NOT NULL,
    --------------------------------------------------------------
    CONSTRAINT PK_repas_id  PRIMARY KEY(repas_id)
    --------------------------------------------------------------
);

CREATE TABLE Boisson (
    boisson_id  NUMBER(5, 0),
    boisson_nom VARCHAR2(32)    NOT NULL,
    --------------------------------------------------------------
    CONSTRAINT PK_boisson_id    PRIMARY KEY(boisson_id)
    --------------------------------------------------------------
);


CREATE TABLE Composition (
    composition_id  NUMBER(10, 0),
    -------------------------------------------------------------
    CONSTRAINT PK_composition_id    PRIMARY KEY(composition_id)
    -------------------------------------------------------------
);

CREATE TABLE Ingredient (
    ingredient_id   NUMBER(5, 0),
    ingredient_nom  VARCHAR2(64)    NOT NULL,
    -------------------------------------------------------------
    CONSTRAINT PK_ingredient_id PRIMARY KEY(ingredient_id)
    -------------------------------------------------------------
);

CREATE TABLE Legume (
    legume_id   NUMBER(5, 0),
    legume_nom  VARCHAR2(64)    NOT NULL,
    -------------------------------------------------------------
    CONSTRAINT PK_legume_id PRIMARY KEY(legume_id)
    -------------------------------------------------------------
);

CREATE TABLE Raclette (
    raclette_id     NUMBER(3, 0),
    raclette_nom    VARCHAR2(64)    NOT NULL,
    --------------------------------------------------------------
    CONSTRAINT PK_raclette_id   PRIMARY KEY(raclette_id)
    --------------------------------------------------------------
);
-- ==================================================================

-- ENTRETIEN

CREATE TABLE Machine_Modele (
    modele_id   NUMBER(5, 0),
    modele_nom  VARCHAR2(64) NOT NULL,
    -----------------------------------------------
    CONSTRAINT PK_modele_id PRIMARY KEY(modele_id)
    -----------------------------------------------
);

CREATE TABLE Entretien (
    entretien_id            NUMBER(10, 0),
    entretien_type          VARCHAR2(64)    NOT NULL,
    entretien_periodicite   NUMBER(5, 0)    NOT NULL,
    --------------------------------------------------
    CONSTRAINT PK_entretien_id  PRIMARY KEY(entretien_id)
    --------------------------------------------------
);

CREATE TABLE Tenrac_Genre (
    --Attributs
    genre_id    NUMBER(3, 0),
    genre_nom   VARCHAR2(16)    NOT NULL,
    --Contraintes
    CONSTRAINT PK_genre_id  PRIMARY KEY (genre_id)
);

-- ==================================================================

-- ORDRE / CLUB 

CREATE TABLE Ordre (
    ordre_id    NUMBER(3, 0),
    ordre_nom   VARCHAR2(50)    NOT NULL,
    ------------------------------------------------------------
    registre_id NUMBER(5, 0),
    ------------------------------------------------------------
    --------------------------------------------------------------
    CONSTRAINT PK_ordre_id      PRIMARY KEY(ordre_id),
    CONSTRAINT FK_registre_ordre   FOREIGN KEY(registre_id)    REFERENCES Registre(registre_id)
    --------------------------------------------------------------
);

CREATE TABLE Club (
    club_id     NUMBER(5, 0),
    club_nom    VARCHAR2(32)    NOT NULL,
    ------------------------------------------------------------
    ordre_id    NUMBER(3, 0),
    registre_id NUMBER(5, 0),
    ------------------------------------------------------------
    --------------------------------------------------------------
    CONSTRAINT PK_club_id       PRIMARY KEY(club_id),
    CONSTRAINT FK_ordre_club      FOREIGN KEY(ordre_id)       REFERENCES Ordre(ordre_id),
    CONSTRAINT FK_registre_club   FOREIGN KEY(registre_id)    REFERENCES Registre(registre_id)
    --------------------------------------------------------------
);

-- LOCATION

CREATE TABLE Adresse (
    --Attributs --------------------------------------------------------------
    adresse_id                  NUMBER(5, 0),
    adresse_principale          VARCHAR2(38)    NOT NULL,
    adresse_complement          VARCHAR2(38),
    adresse_code_postal         VARCHAR2(10)    NOT NULL,
    adresse_ville               VARCHAR2(38)    NOT NULL,
    --------------------------------------------------------------
    --Cles etrangeres --------------------------------------------------------------
    ordre_id                    NUMBER(3, 0)    NOT NULL,
    --------------------------------------------------------------
    --Contraintes --------------------------------------------------------------
    CONSTRAINT PK_adresse_id    PRIMARY KEY(adresse_id),
    CONSTRAINT FK_ordre_id      FOREIGN KEY(ordre_id)       REFERENCES Ordre(ordre_id)
    --------------------------------------------------------------
);

-- ==================================================================

-- MACHINES / PLAT

CREATE TABLE Machine (
    machine_id  NUMBER(5, 0),
    machine_nom VARCHAR2(32),
    -------------------------------------------------------------
    modele_id   NUMBER(5, 0),
    -------------------------------------------------------------
    -------------------------------------------------------------
    CONSTRAINT PK_machine_id        PRIMARY KEY(machine_id),
    CONSTRAINT FK_modele_machine         FOREIGN KEY(modele_id)          REFERENCES Machine_Modele(modele_id)
    --------------------------------------------------------------
);

CREATE TABLE Plat (
    plat_id         NUMBER(5, 0),
    plat_nom        VARCHAR2(64)    NOT NULL,
    ------------------------------------------------------------
    legume_id       NUMBER(5, 0),
    raclette_id     NUMBER(3, 0),
    composition_id  NUMBER(10, 0),
    ------------------------------------------------------------
    --------------------------------------------------------------
    CONSTRAINT PK_plat_id           PRIMARY KEY(plat_id),
    CONSTRAINT FK_legume_id         FOREIGN KEY(legume_id)      REFERENCES Legume(legume_id),
    CONSTRAINT FK_raclette_id       FOREIGN KEY(raclette_id)    REFERENCES Raclette(raclette_id),
    CONSTRAINT FK_composition_plat    FOREIGN KEY(composition_id) REFERENCES Composition(composition_id)
    --------------------------------------------------------------
);

CREATE TABLE Sauce (
    sauce_id        NUMBER(5, 0),
    sauce_nom       VARCHAR2(64)    NOT NULL,
    --------------------------------------------------------------
    composition_id  NUMBER(10, 0),
    --------------------------------------------------------------
    --------------------------------------------------------------
    CONSTRAINT PK_sauce_id          PRIMARY KEY(sauce_id),
    CONSTRAINT FK_composition_sauce    FOREIGN KEY(composition_id) REFERENCES Composition(composition_id)
    --------------------------------------------------------------
);

-- ==================================================================

-- ==================================================================

-- Reunion

CREATE TABLE Reunion (
    reunion_id      NUMBER(20, 0),
    reunion_date    TIMESTAMP NOT NULL,
    ------------------------------------------------------------
    adresse_id      NUMBER(5, 0),
    ------------------------------------------------------------
    --------------------------------------------------------------
    CONSTRAINT PK_reunion_id    PRIMARY KEY (reunion_id),
    CONSTRAINT FK_adresse_id    FOREIGN KEY (adresse_id)     REFERENCES Adresse(adresse_id)
    --------------------------------------------------------------
);
-- ==================================================================

-- ==================================================================

-- TENRAC

CREATE TABLE Tenrac (
    --Atributs --------------------------------------------------------------
    tenrac_id                       NUMBER(10, 0),
    tenrac_nom                      VARCHAR2(50)    NOT NULL,
    tenrac_prenom                   VARCHAR2(50)    NOT NULL,
    tenrac_courriel                 VARCHAR2(320)   NOT NULL,
    tenrac_telephone                VARCHAR2(20)    NOT NULL,
    tenrac_adresse_principale       VARCHAR2(38)    NOT NULL,
    tenrac_adresse_complement       VARCHAR2(38),
    tenrac_adresse_code_postal      VARCHAR2(10)    NOT NULL,
    tenrac_adresse_ville            VARCHAR2(38)    NOT NULL,
    --------------------------------------------------------------
    --Cles etrangeres --------------------------------------------------------------
    genre_id                        NUMBER(3, 0),
    organisme_siret                 VARCHAR2(24)    NOT NULL,
    grade_id                        NUMBER(3, 0)    NOT NULL,
    rang_id                         NUMBER(3, 0),
    titre_id                        NUMBER(3, 0),
    dignite_id                      NUMBER(3, 0),
    --------------------------------------------------------------
    --Contraintes --------------------------------------------------------------
    CONSTRAINT PK_tenrac_id         PRIMARY KEY (tenrac_id),
    CONSTRAINT FK_genre_id          FOREIGN KEY (genre_id)          REFERENCES Tenrac_Genre(genre_id),
    CONSTRAINT FK_organisme_siret   FOREIGN KEY (organisme_siret)   REFERENCES Organisme(organisme_siret),
    CONSTRAINT FK_grade_id          FOREIGN KEY (grade_id)          REFERENCES Tenrac_Grade(grade_id),
    CONSTRAINT FK_rang_id           FOREIGN KEY (rang_id)           REFERENCES Tenrac_Rang(rang_id),
    CONSTRAINT FK_titre_id          FOREIGN KEY (titre_id)          REFERENCES Tenrac_Titre(titre_id), 
    CONSTRAINT FK_dignite_id        FOREIGN KEY (dignite_id)        REFERENCES Tenrac_Dignite(dignite_id)
    --------------------------------------------------------------
);

-- CARTE D'UN TENRAC

CREATE TABLE Carte_Membre (
    --Attributs --------------------------------------------------------------
    tenrac_code                 NUMBER(10, 0),
    carte_active                NUMBER(1, 0)    NOT NULL,
    carte_expiration            DATE            NOT NULL,
    --------------------------------------------------------------
    --Cles etrangeres --------------------------------------------------------------
    club_id                     NUMBER(5, 0),
    tenrac_id                   NUMBER(10, 0)   NOT NULL,
    --------------------------------------------------------------
    --Contraintes --------------------------------------------------------------
    CONSTRAINT PK_tenrac_code   PRIMARY KEY(tenrac_code),
    CONSTRAINT FK_club_id       FOREIGN KEY(club_id)        REFERENCES Club(club_id),
    CONSTRAINT FK_tenrac_carte_membre     FOREIGN KEY(tenrac_id)      REFERENCES Tenrac(tenrac_id),
    CONSTRAINT DM_carte_active  CHECK (carte_active IN (0, 1))
    --------------------------------------------------------------
);

-- QUI PASSE UN ENTRETIEN SUR UNE MACHINE

CREATE TABLE Certificat_Entretien (
    --Attributs
    certificat_id   NUMBER(10, 0),
    entretien_date  TIMESTAMP NOT NULL,
    -------------------------------------------------------------
    --Cles etrangeres
    tenrac_id       NUMBER(10, 0),
    machine_id      NUMBER(5, 0),
    -------------------------------------------------------------
    -------------------------------------------------------------
    --Contraintes
    CONSTRAINT PK_Certificat_Entretien  PRIMARY KEY(certificat_id),
    CONSTRAINT FK_tenrac_certificat_entretien             FOREIGN KEY(tenrac_id)      REFERENCES Tenrac(tenrac_id),
    CONSTRAINT FK_machine_certificat            FOREIGN KEY(machine_id)     REFERENCES Machine(machine_id)
    --CONSTRAINT AA_tenrac_id             CHECK()
    --------------------------------------------------------------
);

-- ==================================================================

-- **********************************************************************



-- ==================================================================

-- **********************************************************************

-- ENTITES ASSOCIATIVES

-- **********************************************************************

-- ==================================================================

-- TENRAC

CREATE TABLE Tenrac_Se_Reunissent (
    tenrac_id   NUMBER(10, 0),
    reunion_id  NUMBER(20, 0),
    --------------------------------------------------------------
    CONSTRAINT PK_Tenrac_Se_Reunissent      PRIMARY KEY(tenrac_id, reunion_id),
    CONSTRAINT FK_tenrac_reunion                 FOREIGN KEY(tenrac_id)                  REFERENCES Tenrac(tenrac_id),
    CONSTRAINT FK_reunion_groupe                FOREIGN KEY(reunion_id)                 REFERENCES Reunion(reunion_id)
    --------------------------------------------------------------
);

CREATE TABLE Tenrac_Est_Allergique (
    tenrac_id   NUMBER(10, 0),
    allergie_id NUMBER(10, 0),
    ----------------------------------------------------------------
    CONSTRAINT PK_Tenrac_Est_Allergique     PRIMARY KEY(tenrac_id, allergie_id),
    CONSTRAINT FK_tenrac_allergie                 FOREIGN KEY(tenrac_id)                  REFERENCES Tenrac(tenrac_id),
    CONSTRAINT FK_allergie_tenrac               FOREIGN KEY(allergie_id)                REFERENCES Allergie(allergie_id)
    ----------------------------------------------------------------
);

CREATE TABLE Tenrac_Croit (
    tenrac_id   NUMBER(10, 0),
    croyance_id NUMBER(10, 0),
    ----------------------------------------------------------------
    CONSTRAINT PK_Tenrac_Croit  PRIMARY KEY(tenrac_id, croyance_id),
    CONSTRAINT FK_tenrac_croyance     FOREIGN KEY(tenrac_id)                  REFERENCES Tenrac(tenrac_id),
    CONSTRAINT FK_croyance_tenrac   FOREIGN KEY(croyance_id)                REFERENCES Croyance(croyance_id)
    ----------------------------------------------------------------
);

CREATE TABLE Tenrac_A_Pour_Conviction (
    tenrac_id       NUMBER(10, 0),
    conviction_id   NUMBER(10, 0),
    --------------------------------------------------------------
    CONSTRAINT PK_Tenrac_A_Pour_Conviction  PRIMARY KEY(tenrac_id, conviction_id),
    CONSTRAINT FK_tenrac_conviction                 FOREIGN KEY(tenrac_id)                  REFERENCES Tenrac(tenrac_id),
    CONSTRAINT FK_conviction_tenrac             FOREIGN KEY(conviction_id)              REFERENCES Conviction(conviction_id)
    --------------------------------------------------------------
);

-- ==================================================================


-- ==================================================================

-- SENSIBILITEE

CREATE TABLE Legume_Peut_Provoquer (
    legume_id   NUMBER(5, 0),
    allergie_id NUMBER(10, 0),
    -------------------------------------------------------------
    CONSTRAINT PK_Legume_Peut_Provoquer     PRIMARY KEY(legume_id, allergie_id),
    CONSTRAINT FK_legume_provocation                 FOREIGN KEY(legume_id)                  REFERENCES Legume(legume_id),
    CONSTRAINT FK_allergie_id               FOREIGN KEY(allergie_id)                REFERENCES Allergie(allergie_id)
    --------------------------------------------------------------
);

CREATE TABLE Legume_Peut_Heurter (
    legume_id   NUMBER(5, 0),
    croyance_id NUMBER(10, 0),
    ------------------------------------------------------------
    CONSTRAINT PK_Legume_Peut_Heurter   PRIMARY KEY(legume_id, croyance_id),
    CONSTRAINT FK_legume_heurte             FOREIGN KEY(legume_id)                  REFERENCES Legume(legume_id),
    CONSTRAINT FK_croyance_id           FOREIGN KEY(croyance_id)                REFERENCES Croyance(croyance_id)
    ------------------------------------------------------------
);

CREATE TABLE Legume_Peut_Enfreindre (
    legume_id       NUMBER(5, 0),
    conviction_id   NUMBER(10, 0),
    ------------------------------------------------------------
    CONSTRAINT PK_Legume_Peut_Enfreindre    PRIMARY KEY(legume_id, conviction_id),
    CONSTRAINT FK_legume_enfreint                 FOREIGN KEY(legume_id)                  REFERENCES Legume(legume_id),
    CONSTRAINT FK_conviction_id             FOREIGN KEY(conviction_id)              REFERENCES Conviction(conviction_id)
    ------------------------------------------------------------
);

-- ==================================================================

-- ==================================================================

-- NOURRITURE

CREATE TABLE Repas_Constitue_De (
    repas_id    NUMBER(10, 0),
    plat_id     NUMBER(5, 0),
    --------------------------------------------------------------------
    CONSTRAINT PK_Repas_Constitue_De    PRIMARY KEY(repas_id, plat_id),
    CONSTRAINT FK_repas_num              FOREIGN KEY(repas_id)           REFERENCES Repas(repas_id),
    CONSTRAINT FK_plat_repas               FOREIGN KEY(plat_id)            REFERENCES Plat(plat_id)
    --------------------------------------------------------------------
);

CREATE TABLE Plat_Est_Accompagne_De (
   plat_id  NUMBER(5, 0),
   sauce_id NUMBER(5, 0),
   --------------------------------------------------------------------
   CONSTRAINT PK_Plat_Est_Accompagne_De PRIMARY KEY(plat_id, sauce_id),
   CONSTRAINT FK_plat_accompagnement                FOREIGN KEY(plat_id)            REFERENCES Plat(plat_id),
   CONSTRAINT FK_sauce_id               FOREIGN KEY(sauce_id)           REFERENCES Sauce(sauce_id)
   --------------------------------------------------------------------
);

CREATE TABLE Compo_Est_Assemblage_De (
   ingredient_id    NUMBER(5, 0),
   composition_id   NUMBER(10, 0),
   --------------------------------------------------------------------
   CONSTRAINT PK_Compo_Est_Assemblage_De    PRIMARY KEY(ingredient_id, composition_id),
   CONSTRAINT FK_ingredient_id              FOREIGN KEY(ingredient_id)                  REFERENCES Ingredient(ingredient_id),
   CONSTRAINT FK_composition_id             FOREIGN KEY(composition_id)                 REFERENCES Composition(composition_id)
   --------------------------------------------------------------------
);

CREATE TABLE Repas_Servi_Avec (
   repas_id     NUMBER(10, 0),
   boisson_id   NUMBER(5, 0),
   -------------------------------------------------------------------
   CONSTRAINT PK_Repas_Servi_Avec   PRIMARY KEY(repas_id, boisson_id),
   CONSTRAINT FK_repas_servi           FOREIGN KEY(repas_id)               REFERENCES Repas(repas_id),
   CONSTRAINT FK_boisson_id         FOREIGN KEY(boisson_id)             REFERENCES Boisson(boisson_id)
   -------------------------------------------------------------------
);

-- ==================================================================

-- ==================================================================

-- MACHINES

CREATE TABLE Registre_Archive (
   registre_id      NUMBER(5, 0),
   certificat_id    NUMBER(10, 0),
   --------------------------------------------------------------------
   CONSTRAINT PK_Registre_Archive   PRIMARY KEY(registre_id, certificat_id),
   CONSTRAINT FK_registre_archive        FOREIGN KEY(registre_id)                    REFERENCES Registre(registre_id),
   CONSTRAINT FK_certificat_id      FOREIGN KEY(certificat_id)                  REFERENCES Certificat_Entretien(certificat_id)
   --------------------------------------------------------------------
);

CREATE TABLE Machine_Prepare (
   repas_id     NUMBER(10, 0),
   machine_id   NUMBER(5, 0),
   -------------------------------------------------------------------
   CONSTRAINT PK_Machine_Prepare    PRIMARY KEY(repas_id, machine_id),
   CONSTRAINT FK_repas_prepare           FOREIGN KEY(repas_id) REFERENCES Repas(repas_id),
   CONSTRAINT FK_machine_prepare         FOREIGN KEY(machine_id) REFERENCES Machine(machine_id)
   -------------------------------------------------------------------
);

CREATE TABLE Modele_Necessite (
   modele_id        NUMBER(5, 0),
   entretien_id     NUMBER(10, 0),
   -------------------------------------------------------------------
   CONSTRAINT PK_Modele_Necessite   PRIMARY KEY(modele_id, entretien_id),
   CONSTRAINT FK_modele_necessite          FOREIGN KEY(modele_id)                  REFERENCES Machine_Modele(modele_id),
   CONSTRAINT FK_entretien_id      FOREIGN KEY(entretien_id)              REFERENCES Entretien(entretien_id)
   ------------------------------------------------------------------
);

CREATE TABLE Degustation (
    repas_id    NUMBER(10, 0),
    tenrac_id   NUMBER(10, 0),
    reunion_id  NUMBER(20, 0),
    -------------------------------------------------------------
    CONSTRAINT PK_Degustation   PRIMARY KEY (repas_id, tenrac_id, reunion_id),
    CONSTRAINT FK_repas_mange      FOREIGN KEY(repas_id)                           REFERENCES Repas(repas_id),
    CONSTRAINT FK_tenrac_id     FOREIGN KEY(tenrac_id)                          REFERENCES Tenrac(tenrac_id),
    CONSTRAINT FK_reunion_degustation    FOREIGN KEY(reunion_id)                         REFERENCES Reunion(reunion_id)
    --------------------------------------------------------------
);

PROMPT "Fin de création de l'intention de la base de donnée";

-- *********************************************************************************

-- CREATION DES TRIGGERS

-- *********************************************************************************

--Afin d'etre accepte pour une utilisation officielle, une machine doit presenter son certificat d'entretien effectue par un tenrac ayant obtenu la dignite idoine (au moins Maitre)
CREATE OR REPLACE TRIGGER VERIF_Certificat_Entretien_Dignite
BEFORE INSERT ON Certificat
FOR EACH ROW
DECLARE
    v_dignite NUMBER(3,0);
BEGIN
    SELECT dignite_id INTO v_dignite
    FROM Tenrac
    WHERE tenrac_id = :NEW.tenrac_id;
    
    IF v_dignite IS NULL THEN
        RAISE_APPLICATION_ERROR(-20001, 'ERREUR : L''entretien doit etre effectue par un Tenrac de dignite idoine !');
    END IF;
END;
/

--
CREATE OR REPLACE TRIGGER TGR_Verif_Presence_Chevalier_Ou_Dame
AFTER INSERT ON Tenrac_Se_Reunissent
DECLARE
    v_count NUMBER;
BEGIN
    -- Verification de la présence d'une dame ou chevalier
    SELECT COUNT(*)
    INTO v_count
    FROM Tenrac_Se_Reunissent tsr
    INNER JOIN Tenrac t ON tsr.tenrac_id = t.tenrac_id
    INNER JOIN Tenrac_Grade tg ON t.grade_id = tg.grade_id
    WHERE tg.grade_nom IN ('CHEVALIER', 'DAME');

    IF v_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Erreur de l''Ordre : Une réunion ne peut avoir lieu sans un Chevalier ou une Dame !');
    END IF;
END;
/
<<<<<<< HEAD

=======
>>>>>>> 0c9b2b82875dfe1f60fcfd0e9fdea55c931e9673
