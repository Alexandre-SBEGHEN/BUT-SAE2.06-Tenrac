/*                                                
                 ,---,       ,----..        ,---, 
       ,---.  ,`--.' |      /   /   \    ,`--.' | 
      /__./| /    /  :     /   .     :  /    /  : 
 ,---.;  ; |:    |.' '    .   /   ;.  \:    |.' ' 
/___/ \  | |`----':  |   .   ;   /  ` ;`----':  | 
\   ;  \ ' |   '   ' ;   ;   |  ; \ ; |   '   ' ; 
 \   \  \: |   |   | |   |   :  | ; | '   |   | | 
  ;   \  ' .   '   : ;   .   |  ' ' ' :   '   : ; 
   \   \   '   |   | '   '   ;  \; /  |   |   | ' 
    \   `  ;   '   : | ___\   \  ',  /__  '   : | 
     :   \ |   ;   |.'/  .\;   :    /  .\ ;   |.' 
      '---'    '---'  \  ; |\   \ .'\  ; |'---'   
                       `--'  `---`   `--'         
                                                  
*/
SET DEFINE OFF;

PROMPT "Creation de l extension de la base de donnees";

-- 1) Membres et hiérarchie --
-- Ajout des grades
INSERT INTO Tenrac_Grade (grade_id, grade_nom) VALUES (1, 'AFFILIE');
INSERT INTO Tenrac_Grade (grade_id, grade_nom) VALUES (2, 'SYMPATHISANT');
INSERT INTO Tenrac_Grade (grade_id, grade_nom) VALUES (3, 'ADHERENT');
INSERT INTO Tenrac_Grade (grade_id, grade_nom) VALUES (4, 'CHEVALIER/DAME');
INSERT INTO Tenrac_Grade (grade_id, grade_nom) VALUES (5, 'GRAND CHEVALIER/HAUTE DAME');
INSERT INTO Tenrac_Grade (grade_id, grade_nom) VALUES (6, 'COMMANDEUR');
INSERT INTO Tenrac_Grade (grade_id, grade_nom) VALUES (7, 'GRAND CROIX');
-- Ajout des rangs
INSERT INTO Tenrac_Rang (rang_id, rang_nom) VALUES (1, 'NOVICE');
INSERT INTO Tenrac_Rang (rang_id, rang_nom) VALUES (2, 'COMPAGNON');
-- Ajout des titres
INSERT INTO Tenrac_Titre (titre_id, titre_nom) VALUES (1, 'PHILANTROPE');
INSERT INTO Tenrac_Titre (titre_id, titre_nom) VALUES (2, 'PROTECTEUR');
INSERT INTO Tenrac_Titre (titre_id, titre_nom) VALUES (3, 'HONORABLE');
-- Ajout des dignités
INSERT INTO Tenrac_Dignite (dignite_id, dignite_nom) VALUES (1, 'MAITRE');
INSERT INTO Tenrac_Dignite (dignite_id, dignite_nom) VALUES (2, 'GRAND CHANCELIER');
INSERT INTO Tenrac_Dignite (dignite_id, dignite_nom) VALUES (3, 'GRAND MAITRE');
-- Ajout des genres
INSERT INTO Tenrac_Genre (genre_id, genre_nom) VALUES (1, 'MASCULIN');
INSERT INTO Tenrac_Genre (genre_id, genre_nom) VALUES (2, 'FEMININ');
INSERT INTO Tenrac_Genre (genre_id, genre_nom) VALUES (3, 'AUTRE');
INSERT INTO Tenrac_Genre (genre_id, genre_nom) VALUES (4, 'MICKAEL MARTIN NEVOT');
-- Ajout des Tenracs
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite_id, genre_id) VALUES (1, 'SBEGHEN', 'ALEXANDRE', 'ALEXANDRE@SBEGHEN.FR', '0766117611', '44 AVENUE MAURICE THOREZ', 'RESIDENCE L''ARPEGE', '13110', 'PORT-DE-BOUC', '49573343174126', 4, 1, 1, NULL, 1);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite_id, genre_id) VALUES (2, 'SOUBIALE', 'ELIAS', 'ELIAS.SOUBIALE2007@GMAIL.COM', '0745746718', '44 AVENUE PAUL LOMBARDI', NULL, '13620', 'CARRY-LE-ROUET', '81039915742549', 1, 1, NULL, NULL, 1);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite_id, genre_id) VALUES (3, 'DUJARDIN', 'TRISTAN', 'T.DUJARDIN@GMAIL.COM', '0639340147', '14 RUE DES LILAS', NULL, '75012', 'PARIS', '19325770722439', 2, NULL, NULL, NULL, 1);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite_id, genre_id) VALUES (4, 'CARPENTIER', 'AYMERIC', 'AYMERIC.CARPENTIER@OUTLOOK.FR', '0727075379', '8 AVENUE VICTOR HUGO', 'RESIDENCE LA RESIDENCE', '69003', 'LYON', '81039915742549', 1, 1, 2, NULL, 3);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite_id, genre_id) VALUES (5, 'DIEUDONNE', 'SEBASTIEN', 'SEB.DIEUDO@YAHOO.FR', '0635708653', '22 BOULEVARD SAINT-MICHEL', NULL, '33000', 'BORDEAUX', '34343978457843', 1, NULL, NULL, NULL, 1);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite_id, genre_id) VALUES (6, 'ALLARD', 'SEBASTIEN', 'ALLARDS01@HOTMAIL.COM', '0640275210', '47 RUE DE LA RÉPUBLIQUE', 'RESIDENCE DU PAFF', '13001', 'MARSEILLE', '91709245161275', 2, NULL, 1, NULL, 1);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite_id, genre_id) VALUES (7, 'GERIN', 'LAURA', 'LAURA.GERIN1994@WANADOO.FR', '0656765327', '3 RUE DU MOULIN', NULL, '59000', 'LILLE', '29267099812654', 5, 2, NULL, 3, 2);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite_id, genre_id) VALUES (8, 'COURVOISIER', 'NICOLETTE', 'NICOLETTE.COURVOISIER@GMAIL.COM', '0789896543', '19 CHEMIN DES OLIVIERS', 'LA PETITE MAISON DANS LA PRAIRIE', '31000', 'TOULOUSE', '49573343174126', 1, 1, NULL, NULL, 2);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite_id, genre_id) VALUES (9, 'AUGER', 'ELODIE', 'ELODIIIE@GMAIL.COM', '0642424242', '11 AVENUE DES FLEURS', 'MAISON DU PRE FLEURI', '06000', 'NICE', '65141608307812', 3, 1, 2, NULL, 3);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite_id, genre_id) VALUES (10, 'GAVREAY', 'YVETTE', 'GAVREAY.Y@GMAIL.COM', '0644450918', '6 RUE DES PEUPLIERS', 'RESIDENCE DU PEUPLE', '44000', 'NANTES', '46088520694523', 5, NULL, NULL, 2, 2);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite_id, genre_id) VALUES (11, 'VERDUN', 'ANGELINA', 'ANGEVERDUN@OUTLOOK.FR', '0607586955', '41 ALLEE LOUIS DAQUIN', 'LA CAGE D''ESCALIER', '13500', 'MARTIGUES', '18972948872548', 4, 1, NULL, 2, 2);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite_id, genre_id) VALUES (12, 'HANOTIN', 'FIONA', 'FIONA.HANNOTIN@ETU.UNIV-AMU.FR', '0761896236', '9 IMPASSE DE BANCAU', NULL, '13500', 'MARTIGUES', '19325770722439', 6, 2, 2, 3, 2);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite_id, genre_id) VALUES (13, 'PETIT', 'NOE', 'NOE.PETIT@LAMACHE.ORG', '0777991797', '14 RUE DU PAFF', NULL, '69100', 'LYON', '11367072392341', 1, 1, NULL, NULL, 3);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite_id, genre_id) VALUES (14, 'OROFIAMMA', 'EMMA', 'EMMA.OROFIAMMA@ETU.UNIV-AMU.FR', '0781024046', '4 RESIDENCE LES OLIVELLES', NULL, '13960', 'SAUSSET-LES-PINS', '18972948872548', 3, 1, 2, NULL, 2);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite_id, genre_id) VALUES (15, 'BON', 'JEAN', 'JEANBON2014@MSN.COM', '0654321234', '25 RUE PASTEUR', NULL, '38000', 'GRENOBLE', '70117132427816', 1, NULL, 1, 1, 1);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite_id, genre_id) VALUES (16, 'LAMBERT', 'JULIEN', 'JUJUDU21@CLUB-INTERNET.FR', '0762842057', '12 RUE DE LA LIBERTE', 'RESIDENCE LA MOUTARDE', '21000', 'DIJON', '47824861065134', 1, NULL, NULL, 2, 1);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite_id, genre_id) VALUES (17, 'FRANCOIS', 'MAXIME', 'MAXIME.FRANCOIS49@GMAIL.COM', '0606060606', '8 AVENUE JEAN JAURES', 'LA MAISON DU PAPE', '49000', 'ANGERS', '94514775215649', 4, 1, 2, 2, 1);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite_id, genre_id) VALUES (18, 'KEVIN', 'JEAN', 'JEANKEVIN@GMAIL.COM', '0707070707', '1 RUE DE L''ANONYMITE', NULL, '00000', 'VILLE', '70117132427816', 2, 1, NULL, NULL, 3);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite_id, genre_id) VALUES (19, 'BEN-KHELIL', 'INES', 'INES.BEN-KHELIL@ETU.UNIV-AMU.FR', '0739571269', '45 RUE DU QUADRICEPS', NULL, '13500', 'MARTIGUES', '77784108501264', 7, 2, 3, 3, 1);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite_id, genre_id) VALUES (20, 'PEYRON', 'MAELAN', 'MAELAN.PEYRON@ETU.UNIV-AMU.FR', '0767676767', '76 BOULEVARD DU SIX SEVEN', '', '67000', 'STRASBOURG', '94514775215649', 1, NULL, NULL, NULL, 4);

--Carte membre
INSERT INTO Carte_Membre (carte_id, carte_codeperso, carte_active, carte_expiration, club_id, tenrac_id) VALUES (1, '48291736', 1, TO_DATE('2024-03-17', 'YYYY-MM-DD'), NULL, 1);
INSERT INTO Carte_Membre (carte_id, carte_codeperso, carte_active, carte_expiration, club_id, tenrac_id) VALUES (2, '10583927', 1, TO_DATE('2027-11-05', 'YYYY-MM-DD'), NULL, 2);
INSERT INTO Carte_Membre (carte_id, carte_codeperso, carte_active, carte_expiration, club_id, tenrac_id) VALUES (3, '76429015', 0, TO_DATE('2025-06-22', 'YYYY-MM-DD'), NULL, 3);
INSERT INTO Carte_Membre (carte_id, carte_codeperso, carte_active, carte_expiration, club_id, tenrac_id) VALUES (4, '93816204', 1, TO_DATE('2028-01-14', 'YYYY-MM-DD'), NULL, 4);
INSERT INTO Carte_Membre (carte_id, carte_codeperso, carte_active, carte_expiration, club_id, tenrac_id) VALUES (5, '21745098', 1, TO_DATE('2026-09-30', 'YYYY-MM-DD'), NULL, 5);
INSERT INTO Carte_Membre (carte_id, carte_codeperso, carte_active, carte_expiration, club_id, tenrac_id) VALUES (6, '65039481', 0, TO_DATE('2024-12-08', 'YYYY-MM-DD'), NULL, 6);
INSERT INTO Carte_Membre (carte_id, carte_codeperso, carte_active, carte_expiration, club_id, tenrac_id) VALUES (7, '30957264', 1, TO_DATE('2027-04-19', 'YYYY-MM-DD'), NULL, 7);
INSERT INTO Carte_Membre (carte_id, carte_codeperso, carte_active, carte_expiration, club_id, tenrac_id) VALUES (8, '87120439', 1, TO_DATE('2025-10-11', 'YYYY-MM-DD'), NULL, 8);
INSERT INTO Carte_Membre (carte_id, carte_codeperso, carte_active, carte_expiration, club_id, tenrac_id) VALUES (9, '54698172', 0, TO_DATE('2026-02-03', 'YYYY-MM-DD'), NULL, 9);
INSERT INTO Carte_Membre (carte_id, carte_codeperso, carte_active, carte_expiration, club_id, tenrac_id) VALUES (10, '19283746', 1, TO_DATE('2028-07-27', 'YYYY-MM-DD'), NULL, 10);
INSERT INTO Carte_Membre (carte_id, carte_codeperso, carte_active, carte_expiration, club_id, tenrac_id) VALUES (11, '68392015', 0, TO_DATE('2024-05-29', 'YYYY-MM-DD'), NULL, 11);
INSERT INTO Carte_Membre (carte_id, carte_codeperso, carte_active, carte_expiration, club_id, tenrac_id) VALUES (12, '40715298', 1, TO_DATE('2027-08-16', 'YYYY-MM-DD'), NULL, 12);
INSERT INTO Carte_Membre (carte_id, carte_codeperso, carte_active, carte_expiration, club_id, tenrac_id) VALUES (13, '25984371', 0, TO_DATE('2025-01-07', 'YYYY-MM-DD'), NULL, 13);
INSERT INTO Carte_Membre (carte_id, carte_codeperso, carte_active, carte_expiration, club_id, tenrac_id) VALUES (14, '73401652', 1, TO_DATE('2026-11-21', 'YYYY-MM-DD'), NULL, 14);
INSERT INTO Carte_Membre (carte_id, carte_codeperso, carte_active, carte_expiration, club_id, tenrac_id) VALUES (15, '91827530', 1, TO_DATE('2028-03-09', 'YYYY-MM-DD'), NULL, 15);
INSERT INTO Carte_Membre (carte_id, carte_codeperso, carte_active, carte_expiration, club_id, tenrac_id) VALUES (16, '36259084', 0, TO_DATE('2024-09-14', 'YYYY-MM-DD'), NULL, 16);
INSERT INTO Carte_Membre (carte_id, carte_codeperso, carte_active, carte_expiration, club_id, tenrac_id) VALUES (17, '84570913', 1, TO_DATE('2027-02-28', 'YYYY-MM-DD'), NULL, 17);
INSERT INTO Carte_Membre (carte_id, carte_codeperso, carte_active, carte_expiration, club_id, tenrac_id) VALUES (18, '12068457', 0, TO_DATE('2024-12-19', 'YYYY-MM-DD'), NULL, 18);
INSERT INTO Carte_Membre (carte_id, carte_codeperso, carte_active, carte_expiration, club_id, tenrac_id) VALUES (19, '59723108', 1, TO_DATE('2026-06-05', 'YYYY-MM-DD'), NULL, 19);
INSERT INTO Carte_Membre (carte_id, carte_codeperso, carte_active, carte_expiration, club_id, tenrac_id) VALUES (20, '76049821', 1, TO_DATE('2028-10-31', 'YYYY-MM-DD'), NULL, 20);
--Nouvelles cartes membres (pour celles qui ont expiré)
INSERT INTO Carte_Membre (carte_id, carte_codeperso, carte_active, carte_expiration, club_id, tenrac_id) VALUES (21, '76429015', 1, TO_DATE('2027-02-11', 'YYYY-MM-DD'), NULL, 3);
INSERT INTO Carte_Membre (carte_id, carte_codeperso, carte_active, carte_expiration, club_id, tenrac_id) VALUES (22, '65039481', 1, TO_DATE('2027-09-23', 'YYYY-MM-DD'), NULL, 6);
INSERT INTO Carte_Membre (carte_id, carte_codeperso, carte_active, carte_expiration, club_id, tenrac_id) VALUES (23, '54698172', 1, TO_DATE('2028-04-06', 'YYYY-MM-DD'), NULL, 9);
INSERT INTO Carte_Membre (carte_id, carte_codeperso, carte_active, carte_expiration, club_id, tenrac_id) VALUES (24, '68392015', 1, TO_DATE('2028-12-01', 'YYYY-MM-DD'), NULL, 11);
INSERT INTO Carte_Membre (carte_id, carte_codeperso, carte_active, carte_expiration, club_id, tenrac_id) VALUES (25, '25984371', 1, TO_DATE('2026-07-15', 'YYYY-MM-DD'), NULL, 13);
INSERT INTO Carte_Membre (carte_id, carte_codeperso, carte_active, carte_expiration, club_id, tenrac_id) VALUES (26, '43167950', 1, TO_DATE('2027-11-28', 'YYYY-MM-DD'), NULL, 16); --A change son code perso
INSERT INTO Carte_Membre (carte_id, carte_codeperso, carte_active, carte_expiration, club_id, tenrac_id) VALUES (27, '70825391', 0, TO_DATE('2026-03-12', 'YYYY-MM-DD'), NULL, 18); --A change son code perso
--3e carte de Tenrac 18
INSERT INTO Carte_Membre (carte_id, carte_codeperso, carte_active, carte_expiration, club_id, tenrac_id) VALUES (28, '12068457', 1, TO_DATE('2026-03-12', 'YYYY-MM-DD'), NULL, 18); --A remis son code d'origine
----------------------------------------------------------------------



-- Clubs et Ordre --
INSERT INTO Ordre (ordre_id, ordre_nom, registre_id) VALUES (1, 'ORDRE CENTRAL DES TENRACS', 1);
INSERT INTO Club (club_id, club_nom, ordre_id, registre_id) VALUES (1, 'SUPER RACLETTE', 1, 2);
INSERT INTO Club (club_id, club_nom, ordre_id, registre_id) VALUES (2, 'TENDERS DORES', 1, 3);
INSERT INTO Club (club_id, club_nom, ordre_id, registre_id) VALUES (3, 'POULETT FONDANT', 1, 4);
INSERT INTO Club (club_id, club_nom, ordre_id, registre_id) VALUES (4, 'POULET CROUSTY', 1, 5);
INSERT INTO Club (club_id, club_nom, ordre_id, registre_id) VALUES (5, 'CROQUANT FONDANT', 1, 6);
INSERT INTO Club (club_id, club_nom, ordre_id, registre_id) VALUES (7, 'CLUB RACC', 1, 7);

INSERT INTO Registre (registre_id) VALUES (1);
INSERT INTO Registre (registre_id) VALUES (2);
INSERT INTO Registre (registre_id) VALUES (3);
INSERT INTO Registre (registre_id) VALUES (4);
INSERT INTO Registre (registre_id) VALUES (5);
INSERT INTO Registre (registre_id) VALUES (6);
INSERT INTO Registre (registre_id) VALUES (7);

INSERT INTO Organisme_Type (orgatype_id, orgatype_nom) VALUES (1, 'ENTREPRISE');
INSERT INTO Organisme_Type (orgatype_id, orgatype_nom) VALUES (2, 'ASSOCIATION');
INSERT INTO Organisme_Type (orgatype_id, orgatype_nom) VALUES (3, 'EDUCATION');

INSERT INTO Organisme (organisme_siret, organisme_raison, orgatype_id) VALUES ('49573343174126', 'RACLETTE & CO', 1);
INSERT INTO Organisme (organisme_siret, organisme_raison, orgatype_id) VALUES ('18972948872548', 'TENDERS FORMATION FRANCE', 3);
INSERT INTO Organisme (organisme_siret, organisme_raison, orgatype_id) VALUES ('81039915742549', 'INSTITUT SUPERIEURE DE LA RACLETTE', 3);
INSERT INTO Organisme (organisme_siret, organisme_raison, orgatype_id) VALUES ('91709245161275', 'FEDERATION CULINAIRE FROMAGERE', 2);
INSERT INTO Organisme (organisme_siret, organisme_raison, orgatype_id) VALUES ('34343978457843', 'TENDERS & TRADITIONS', 1);
INSERT INTO Organisme (organisme_siret, organisme_raison, orgatype_id) VALUES ('29267099812654', 'SOCIETE FRANCAISE DU POULET FRIT', 1);
INSERT INTO Organisme (organisme_siret, organisme_raison, orgatype_id) VALUES ('77784108501264', 'FROMAGERIE DES HAUTS PLATEAUX', 1);
INSERT INTO Organisme (organisme_siret, organisme_raison, orgatype_id) VALUES ('47824861065134', 'MAISON DU FROMAGE ET DU TENDER', 3);
INSERT INTO Organisme (organisme_siret, organisme_raison, orgatype_id) VALUES ('11367072392341', 'TENRAC CAPITAL MANAGEMENT', 1);
INSERT INTO Organisme (organisme_siret, organisme_raison, orgatype_id) VALUES ('94514775215649', 'VOLAILLE & PERFORMANCE LOGISTICS', 1);
INSERT INTO Organisme (organisme_siret, organisme_raison, orgatype_id) VALUES ('70117132427816', 'COMPAGNIE GENERALE DE LA RACLETTE', 1);
INSERT INTO Organisme (organisme_siret, organisme_raison, orgatype_id) VALUES ('19325770722439', 'SYNDICAT NATIONAL DES AFFINEURS DE MONTAGNE', 2);
INSERT INTO Organisme (organisme_siret, organisme_raison, orgatype_id) VALUES ('46088520694523', 'EUROPEAN TENDERS DEVELOPPEMENT', 1);
INSERT INTO Organisme (organisme_siret, organisme_raison, orgatype_id) VALUES ('65141608307812', 'AGENCE NATIONALE POUR LE TENRAC', 2);

INSERT INTO Adresse (adresse_id, adresse_principale, adresse_complement, adresse_code_postal, adresse_ville, ordre_id) VALUES (1, '12 RUE DES LILAS', 'APPARTEMENT 3B', '75015', 'PARIS', 1);
INSERT INTO Adresse (adresse_id, adresse_principale, adresse_complement, adresse_code_postal, adresse_ville, ordre_id) VALUES (2, '8 AVENUE VICTOR HUGO', 'BATIMENT A', '69006', 'LYON', 1);
INSERT INTO Adresse (adresse_id, adresse_principale, adresse_complement, adresse_code_postal, adresse_ville, ordre_id) VALUES (3, '25 RUE SAINTE CATHERINE', 'ETAGE 2', '33000', 'BORDEAUX', 1);
INSERT INTO Adresse (adresse_id, adresse_principale, adresse_complement, adresse_code_postal, adresse_ville, ordre_id) VALUES (4, '3 BOULEVARD LONGCHAMP', 'RESIDENCE LES OLIVIERS', '13001', 'MARSEILLE', 1);
INSERT INTO Adresse (adresse_id, adresse_principale, adresse_complement, adresse_code_postal, adresse_ville, ordre_id) VALUES (5, '17 RUE NATIONALE', NULL, '59000', 'LILLE', 1);
INSERT INTO Adresse (adresse_id, adresse_principale, adresse_complement, adresse_code_postal, adresse_ville, ordre_id) VALUES (6, '6 PLACE DU CAPITOLE', NULL, '31000', 'TOULOUSE', 1);
INSERT INTO Adresse (adresse_id, adresse_principale, adresse_complement, adresse_code_postal, adresse_ville, ordre_id) VALUES (7, '21 AVENUE JEAN MEDECIN', NULL, '06000', 'NICE', 1);
-- 4) Repas et plats --

-- ==== REPAS ====

PROMPT "Creation de l extension de donnees pour la table 'Repas'";

INSERT INTO Repas (repas_id, repas_nom) VALUES (1, 'RACLETTE ET CIE');
INSERT INTO Repas (repas_id, repas_nom) VALUES (2, 'PIZZA ET CIE');
INSERT INTO Repas (repas_id, repas_nom) VALUES (3, 'VIANDARD');
INSERT INTO Repas (repas_id, repas_nom) VALUES (4, 'AU FRUITS');
INSERT INTO Repas (repas_id, repas_nom) VALUES (5, 'MER ET OCEAN');
INSERT INTO Repas (repas_id, repas_nom) VALUES (6, 'SAVEURE RICHE');
INSERT INTO Repas (repas_id, repas_nom) VALUES (7, 'GOURMET');
INSERT INTO Repas (repas_id, repas_nom) VALUES (8, 'POUR UN LONG MOMENT');
INSERT INTO Repas (repas_id, repas_nom) VALUES (9, 'UNE LEGERE PLUME');

-- ===============

-- ==== BOISSONS ====

INSERT INTO Boisson (boisson_id, boisson_nom) VALUES (1, 'EAU');
INSERT INTO Boisson (boisson_id, boisson_nom) VALUES (2, 'PEPSI');
INSERT INTO Boisson (boisson_id, boisson_nom) VALUES (3, 'FUZE-TEA');
INSERT INTO Boisson (boisson_id, boisson_nom) VALUES (4, 'ORANGINA');
INSERT INTO Boisson (boisson_id, boisson_nom) VALUES (5, 'JUS DE FRUIT');
INSERT INTO Boisson (boisson_id, boisson_nom) VALUES (6, 'SEVEN-UP');
INSERT INTO Boisson (boisson_id, boisson_nom) VALUES (7, 'COCA-COLA');
INSERT INTO Boisson (boisson_id, boisson_nom) VALUES (8, 'MATCHA');
INSERT INTO Boisson (boisson_id, boisson_nom) VALUES (9, 'BUBBLE TEA');

-- ==================

-- ==== SAUCE ====

INSERT INTO Sauce (sauce_id, sauce_nom, composition_id) VALUES (1, 'KETCHUP', 1);
INSERT INTO Sauce (sauce_id, sauce_nom, composition_id) VALUES (2, 'MAYONNAISE', 2);
INSERT INTO Sauce (sauce_id, sauce_nom, composition_id) VALUES (3, 'BARBECUE', 3);
INSERT INTO Sauce (sauce_id, sauce_nom, composition_id) VALUES (4, 'ALGERIENNE', 4);
INSERT INTO Sauce (sauce_id, sauce_nom, composition_id) VALUES (5, 'SAMOURAI', 5);
INSERT INTO Sauce (sauce_id, sauce_nom, composition_id) VALUES (6, 'BLANCHE', 6);

-- ===============

-- ==== RACLETTE ====

INSERT INTO Raclette (raclette_id, raclette_nom) VALUES (1, 'LA CLASSIQUE');
INSERT INTO Raclette (raclette_id, raclette_nom) VALUES (2, 'LA GRANDE');
INSERT INTO Raclette (raclette_id, raclette_nom) VALUES (3, 'LA PETITE');
INSERT INTO Raclette (raclette_id, raclette_nom) VALUES (4, 'LA RACLETTE ULTIME');
INSERT INTO Raclette (raclette_id, raclette_nom) VALUES (5, 'POUR LA FAMILLE');
INSERT INTO Raclette (raclette_id, raclette_nom) VALUES (6, 'LA SAINTE RACLETTE');
INSERT INTO Raclette (raclette_id, raclette_nom) VALUES (7, 'LA RACLETTE QUI FAIT VOYAGER');
INSERT INTO Raclette (raclette_id, raclette_nom) VALUES (8, 'LE PLAISIR DES TENRACS');

-- ==================

-- ==== INGREDIENTS ====

INSERT INTO Ingredient (ingredient_id, ingredient_nom) VALUES (1, 'LAIT');
INSERT INTO Ingredient (ingredient_id, ingredient_nom) VALUES (2, 'MAGIE');
INSERT INTO Ingredient (ingredient_id, ingredient_nom) VALUES (3, 'FROMAGES');
INSERT INTO Ingredient (ingredient_id, ingredient_nom) VALUES (4, 'SUCRE');
INSERT INTO Ingredient (ingredient_id, ingredient_nom) VALUES (5, 'SEL DE MER');
INSERT INTO Ingredient (ingredient_id, ingredient_nom) VALUES (6, 'FARINE');
INSERT INTO Ingredient (ingredient_id, ingredient_nom) VALUES (7, 'FRUIT');
INSERT INTO Ingredient (ingredient_id, ingredient_nom) VALUES (8, 'CRUSTACES');
INSERT INTO Ingredient (ingredient_id, ingredient_nom) VALUES (9, 'TOMATE');
INSERT INTO Ingredient (ingredient_id, ingredient_nom) VALUES (10, 'COSMIC');
INSERT INTO Ingredient (ingredient_id, ingredient_nom) VALUES (11, 'MOUTARD');
INSERT INTO Ingredient (ingredient_id, ingredient_nom) VALUES (12, 'EPICES');
INSERT INTO Ingredient (ingredient_id, ingredient_nom) VALUES (13, 'PROTEINES');

-- =====================

-- ==== COMPOSITION ====

INSERT INTO Composition (composition_id) VALUES (1);
INSERT INTO Composition (composition_id) VALUES (2);
INSERT INTO Composition (composition_id) VALUES (3);
INSERT INTO Composition (composition_id) VALUES (4);
INSERT INTO Composition (composition_id) VALUES (5);
INSERT INTO Composition (composition_id) VALUES (6);
INSERT INTO Composition (composition_id) VALUES (7);
INSERT INTO Composition (composition_id) VALUES (8);
INSERT INTO Composition (composition_id) VALUES (9);
INSERT INTO Composition (composition_id) VALUES (10);
INSERT INTO Composition (composition_id) VALUES (11);
INSERT INTO Composition (composition_id) VALUES (12);
INSERT INTO Composition (composition_id) VALUES (13);
INSERT INTO Composition (composition_id) VALUES (14);
INSERT INTO Composition (composition_id) VALUES (15);
INSERT INTO Composition (composition_id) VALUES (16);
INSERT INTO Composition (composition_id) VALUES (17);
INSERT INTO Composition (composition_id) VALUES (18);
INSERT INTO Composition (composition_id) VALUES (19);
INSERT INTO Composition (composition_id) VALUES (20);
INSERT INTO Composition (composition_id) VALUES (21);
INSERT INTO Composition (composition_id) VALUES (22);
INSERT INTO Composition (composition_id) VALUES (23);
INSERT INTO Composition (composition_id) VALUES (24);
INSERT INTO Composition (composition_id) VALUES (21);
INSERT INTO Composition (composition_id) VALUES (26);
INSERT INTO Composition (composition_id) VALUES (27);
INSERT INTO Composition (composition_id) VALUES (28);
INSERT INTO Composition (composition_id) VALUES (29);
INSERT INTO Composition (composition_id) VALUES (30);


-- =====================

-- ===== PLAT ====
-- 10) Quels sont les noms des repas et les noms des plats qui les composent, par ordre alphabetique des repas ? 2 attributs, 47 tuples

PROMPT "Creation de l'extension de donnees pour la table 'Plat'";

INSERT INTO Plat (plat_id, plat_nom, raclette_id, composition_id) VALUES (1, 'RACLETTE CLASSIQUE', 1, 7);
INSERT INTO Plat (plat_id, plat_nom, raclette_id, composition_id) VALUES (2, 'TENDERS DE POULET FRITS', 3, 8);
INSERT INTO Plat (plat_id, plat_nom, legume_id, raclette_id, composition_id) VALUES (3, 'VIANDE A KEBAB', 2, 2, 9);
INSERT INTO Plat (plat_id, plat_nom, legume_id, raclette_id, composition_id) VALUES (4, 'PIZZA', 1, 5, 10);
INSERT INTO Plat (plat_id, plat_nom, legume_id, raclette_id, composition_id) VALUES (5, 'QUICHE', 4, 1, 11);
INSERT INTO Plat (plat_id, plat_nom, raclette_id, composition_id) VALUES (6, 'SAUMON', 3, 12);
INSERT INTO Plat (plat_id, plat_nom, raclette_id, composition_id) VALUES (7, 'ANANAS', 7, 13);
INSERT INTO Plat (plat_id, plat_nom, raclette_id, composition_id) VALUES (8, 'BEURRE', 1, 14);
INSERT INTO Plat (plat_id, plat_nom, legume_id, raclette_id, composition_id) VALUES (9, 'POULET', 5, 2, 15);
INSERT INTO Plat (plat_id, plat_nom, legume_id, raclette_id, composition_id) VALUES (10,'THON', 7, 5, 16);
INSERT INTO Plat (plat_id, plat_nom, raclette_id, composition_id) VALUES (11,'POMME', 5, 17);
INSERT INTO Plat (plat_id, plat_nom, raclette_id, composition_id) VALUES (12,'POIRE', 4, 18);
INSERT INTO Plat (plat_id, plat_nom, legume_id, raclette_id, composition_id) VALUES (13,'CRABE', 8, 1, 19);
INSERT INTO Plat (plat_id, plat_nom, raclette_id, composition_id) VALUES (14,'TENDERS DE POULET', 8, 20);
INSERT INTO Plat (plat_id, plat_nom, raclette_id, composition_id) VALUES (15,'TENDERS AUX LEGUMES', 8, 21);
INSERT INTO Plat (plat_id, plat_nom, raclette_id, composition_id) VALUES (16,'RACLETTE ULTIME', 4, 22);
INSERT INTO Plat (plat_id, plat_nom, legume_id, raclette_id, composition_id) VALUES (17,'BOEUF', 3, 5, 23);
INSERT INTO Plat (plat_id, plat_nom, raclette_id, composition_id) VALUES (18,'PIZZA AUX TENDERS', 8, 24);
INSERT INTO Plat (plat_id, plat_nom, legume_id, raclette_id, composition_id) VALUES (19,'SALAMANDRE', 8, 6, 25);
INSERT INTO Plat (plat_id, plat_nom, legume_id, raclette_id, composition_id) VALUES (20,'RACLETTE ANANAS', 6, 7, 26);
INSERT INTO Plat (plat_id, plat_nom, raclette_id, composition_id) VALUES (21,'RACLETTE-PIZZA-XXL', 8, 27);
INSERT INTO Plat (plat_id, plat_nom, legume_id, raclette_id, composition_id) VALUES (22,'PORC A L ''ANANAS', 5, 7, 27);
INSERT INTO Plat (plat_id, plat_nom, raclette_id, composition_id) VALUES (23,'RACLETTE AU THON', 4, 28);
INSERT INTO Plat (plat_id, plat_nom, legume_id, raclette_id, composition_id) VALUES (24,'RACLETTE POUR LA FAMILLE', 6, 5, 29);
INSERT INTO Plat (plat_id, plat_nom, legume_id, raclette_id, composition_id) VALUES (25,'MULTI-FRUITS', 4, 4, 30);

-- ================

-- ==== COMPOSITION ====

PROMPT "Creation de l'extension de donnees pour la table 'Repas_Constitue_De'";

INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (1, 1);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (1, 16);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (1, 20);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (1, 21);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (1, 23);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (1, 24);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (2, 4);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (2, 7);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (2, 18);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (2, 19);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (2, 22);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (3, 2);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (3, 3);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (3, 9);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (3, 14);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (3, 17);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (3, 22);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (4, 7);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (4, 11);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (4, 12);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (4, 20);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (4, 21);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (4, 22);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (4, 25);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (5, 6);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (5, 10);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (5, 13);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (5, 19);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (5, 23);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (6, 5);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (6, 18);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (6, 20);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (6, 22);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (6, 25);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (7, 13);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (7, 15);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (7, 16);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (7, 17);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (7, 18);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (7, 21);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (8, 2);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (8, 14);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (8, 15);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (8, 16);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (8, 18);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (8, 21);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (8, 24);

-- ==== REPAS SERVIS AVEC UNE BOISSON ====

INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (1, 1);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (1, 2);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (1, 4);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (1, 6);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (1, 7);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (2, 1);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (2, 3);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (2, 5);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (2, 8);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (3, 1);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (3, 5);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (3, 8);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (3, 9);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (4, 1);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (4, 5);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (4, 8);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (4, 9);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (5, 1);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (5, 3);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (5, 6);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (5, 7);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (6, 1);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (7, 1);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (7, 5);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (7, 6);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (7, 9);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (8, 1);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (8, 2);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (8, 3);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (8, 4);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (8, 5);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (8, 6);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (8, 7);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (8, 8);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (8, 9);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (9, 1);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (9, 5);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (9, 6);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (9, 8);
INSERT INTO Repas_Servi_Avec (repas_id, boisson_id) VALUES (9, 9);

-- =======================================

-- ==== PLAT SERVI AVEC UNE SAUCE OU NON ====

INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (3, 1);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (3, 2);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (3, 3);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (3, 4);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (3, 5);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (3, 6);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (6, 3);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (6, 6);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (9, 1);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (9, 2);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (9, 3);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (9, 4);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (9, 5);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (9, 6);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (10, 3);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (10, 6);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (13, 1);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (13, 2);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (13, 3);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (13, 6);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (14, 1);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (14, 2);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (14, 5);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (14, 6);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (17, 1);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (17, 2);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (17, 3);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (17, 4);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (17, 5);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (19, 2);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (19, 3);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (19, 5);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (22, 2);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (22, 5);
INSERT INTO Plat_Est_Accompagne_De (plat_id, sauce_id) VALUES (22, 6);

-- ==========================================

-- ==== Composition est un assemblage de ====

INSERT INTO Compo_Est_Assemblage_De (ingredient_id, composition_id) VALUES (9, 1);
INSERT INTO Compo_Est_Assemblage_De (ingredient_id, composition_id) VALUES (11, 2);
INSERT INTO Compo_Est_Assemblage_De (ingredient_id, composition_id) VALUES (12, 3);
INSERT INTO Compo_Est_Assemblage_De (ingredient_id, composition_id) VALUES (12, 4);
INSERT INTO Compo_Est_Assemblage_De (ingredient_id, composition_id) VALUES (12, 5);
INSERT INTO Compo_Est_Assemblage_De (ingredient_id, composition_id) VALUES (1, 6);
INSERT INTO Compo_Est_Assemblage_De (ingredient_id, composition_id) VALUES (3, 7);
INSERT INTO Compo_Est_Assemblage_De (ingredient_id, composition_id) VALUES (12, 8);
INSERT INTO Compo_Est_Assemblage_De (ingredient_id, composition_id) VALUES (13, 9);
INSERT INTO Compo_Est_Assemblage_De (ingredient_id, composition_id) VALUES (6, 10);
INSERT INTO Compo_Est_Assemblage_De (ingredient_id, composition_id) VALUES (3, 11);
INSERT INTO Compo_Est_Assemblage_De (ingredient_id, composition_id) VALUES (8, 12);
INSERT INTO Compo_Est_Assemblage_De (ingredient_id, composition_id) VALUES (7, 13);
INSERT INTO Compo_Est_Assemblage_De (ingredient_id, composition_id) VALUES (1, 14);
INSERT INTO Compo_Est_Assemblage_De (ingredient_id, composition_id) VALUES (13, 15);
INSERT INTO Compo_Est_Assemblage_De (ingredient_id, composition_id) VALUES (8, 16);
INSERT INTO Compo_Est_Assemblage_De (ingredient_id, composition_id) VALUES (7, 17);
INSERT INTO Compo_Est_Assemblage_De (ingredient_id, composition_id) VALUES (7, 18);
INSERT INTO Compo_Est_Assemblage_De (ingredient_id, composition_id) VALUES (8, 19);
INSERT INTO Compo_Est_Assemblage_De (ingredient_id, composition_id) VALUES (13, 20);
INSERT INTO Compo_Est_Assemblage_De (ingredient_id, composition_id) VALUES (10, 21);
INSERT INTO Compo_Est_Assemblage_De (ingredient_id, composition_id) VALUES (3, 22);
INSERT INTO Compo_Est_Assemblage_De (ingredient_id, composition_id) VALUES (13, 23);
INSERT INTO Compo_Est_Assemblage_De (ingredient_id, composition_id) VALUES (9, 24);
INSERT INTO Compo_Est_Assemblage_De (ingredient_id, composition_id) VALUES (13, 25);
INSERT INTO Compo_Est_Assemblage_De (ingredient_id, composition_id) VALUES (7, 26);
INSERT INTO Compo_Est_Assemblage_De (ingredient_id, composition_id) VALUES (7, 27);
INSERT INTO Compo_Est_Assemblage_De (ingredient_id, composition_id) VALUES (8, 28);
INSERT INTO Compo_Est_Assemblage_De (ingredient_id, composition_id) VALUES (3, 29);
INSERT INTO Compo_Est_Assemblage_De (ingredient_id, composition_id) VALUES (7, 30);

-- ==========================================

--Legumes et leurs effets

INSERT INTO Legume (legume_id, legume_nom) VALUES (1, 'LAITUE');
INSERT INTO Legume (legume_id, legume_nom) VALUES (2, 'OIGNON');
INSERT INTO Legume (legume_id, legume_nom) VALUES (3, 'EPINARD');
INSERT INTO Legume (legume_id, legume_nom) VALUES (4, 'BROCOLI');
INSERT INTO Legume (legume_id, legume_nom) VALUES (5, 'CELERI');
INSERT INTO Legume (legume_id, legume_nom) VALUES (6, 'POIVRON');
INSERT INTO Legume (legume_id, legume_nom) VALUES (7, 'CAROTTE');
INSERT INTO Legume (legume_id, legume_nom) VALUES (8, 'FENOUIL');

INSERT INTO Allergie (allergie_id, allergie_nom) VALUES (1, 'POLLEN');
INSERT INTO Allergie (allergie_id, allergie_nom) VALUES (2, 'OEUF');
INSERT INTO Allergie (allergie_id, allergie_nom) VALUES (3, 'FRUIT A COQUE');
INSERT INTO Allergie (allergie_id, allergie_nom) VALUES (4, 'GLUTEN');
INSERT INTO Allergie (allergie_id, allergie_nom) VALUES (5, 'EAU');
INSERT INTO Allergie (allergie_id, allergie_nom) VALUES (6, 'SOLEIL');

INSERT INTO Croyance (croyance_id, croyance_nom) VALUES (1, 'SEPT EPICES');
INSERT INTO Croyance (croyance_id, croyance_nom) VALUES (2, 'HUILE DORE');
INSERT INTO Croyance (croyance_id, croyance_nom) VALUES (3, 'FONTE ETERNELLE');
INSERT INTO Croyance (croyance_id, croyance_nom) VALUES (4, 'FRATERNITE TENRAC');
INSERT INTO Croyance (croyance_id, croyance_nom) VALUES (5, 'CROUSTILLANCE');

INSERT INTO Conviction (conviction_id, conviction_nom) VALUES (1, 'REFUS DES LEGUMES');
INSERT INTO Conviction (conviction_id, conviction_nom) VALUES (2, 'REFUS DU MELANGE SUCRE-SALE');
INSERT INTO Conviction (conviction_id, conviction_nom) VALUES (3, 'CONVICTION CARNIVORE STRICTE');
INSERT INTO Conviction (conviction_id, conviction_nom) VALUES (4, 'CONVICTION ANTI-ANANAS');
INSERT INTO Conviction (conviction_id, conviction_nom) VALUES (5, 'OPPOSITION AUX RECETTES ETRANGERES');


INSERT INTO Tenrac_Est_Allergique (tenrac_id, allergie_id) VALUES (1, 5);
INSERT INTO Tenrac_Est_Allergique (tenrac_id, allergie_id) VALUES (3, 2);
INSERT INTO Tenrac_Est_Allergique (tenrac_id, allergie_id) VALUES (4, 6);
INSERT INTO Tenrac_Est_Allergique (tenrac_id, allergie_id) VALUES (4, 5);
INSERT INTO Tenrac_Est_Allergique (tenrac_id, allergie_id) VALUES (6, 2);
INSERT INTO Tenrac_Est_Allergique (tenrac_id, allergie_id) VALUES (7, 4);
INSERT INTO Tenrac_Est_Allergique (tenrac_id, allergie_id) VALUES (9, 1);
INSERT INTO Tenrac_Est_Allergique (tenrac_id, allergie_id) VALUES (12, 2);
INSERT INTO Tenrac_Est_Allergique (tenrac_id, allergie_id) VALUES (13, 3);
INSERT INTO Tenrac_Est_Allergique (tenrac_id, allergie_id) VALUES (14, 3);
INSERT INTO Tenrac_Est_Allergique (tenrac_id, allergie_id) VALUES (20, 1);
INSERT INTO Tenrac_Est_Allergique (tenrac_id, allergie_id) VALUES (20, 2);
INSERT INTO Tenrac_Est_Allergique (tenrac_id, allergie_id) VALUES (20, 4);
INSERT INTO Tenrac_Est_Allergique (tenrac_id, allergie_id) VALUES (20, 5);
INSERT INTO Tenrac_Est_Allergique (tenrac_id, allergie_id) VALUES (20, 6);

INSERT INTO Tenrac_Croit (tenrac_ id, croyance_id) VALUES (3, 2);
INSERT INTO Tenrac_Croit (tenrac_ id, croyance_id) VALUES (6, 4);
INSERT INTO Tenrac_Croit (tenrac_ id, croyance_id) VALUES (7, 5);
INSERT INTO Tenrac_Croit (tenrac_ id, croyance_id) VALUES (9, 4);
INSERT INTO Tenrac_Croit (tenrac_ id, croyance_id) VALUES (12, 1);
INSERT INTO Tenrac_Croit (tenrac_ id, croyance_id) VALUES (15, 1);
INSERT INTO Tenrac_Croit (tenrac_ id, croyance_id) VALUES (16, 3);
INSERT INTO Tenrac_Croit (tenrac_ id, croyance_id) VALUES (17, 3);

INSERT INTO Tenrac_A_Pour_Conviction (tenrac_id, conviction_id) VALUES (1, 2);
INSERT INTO Tenrac_A_Pour_Conviction (tenrac_id, conviction_id) VALUES (2, 3);
INSERT INTO Tenrac_A_Pour_Conviction (tenrac_id, conviction_id) VALUES (5, 4);
INSERT INTO Tenrac_A_Pour_Conviction (tenrac_id, conviction_id) VALUES (8, 3);
INSERT INTO Tenrac_A_Pour_Conviction (tenrac_id, conviction_id) VALUES (11, 1);
INSERT INTO Tenrac_A_Pour_Conviction (tenrac_id, conviction_id) VALUES (14, 3);
INSERT INTO Tenrac_A_Pour_Conviction (tenrac_id, conviction_id) VALUES (18, 4);
INSERT INTO Tenrac_A_Pour_Conviction (tenrac_id, conviction_id) VALUES (19, 3);
INSERT INTO Tenrac_A_Pour_Conviction (tenrac_id, conviction_id) VALUES (20, 5);

INSERT INTO Legume_Peut_Provoquer (legume_id, allergie_id) VALUES (5, 1);
INSERT INTO Legume_Peut_Provoquer (legume_id, allergie_id) VALUES (7, 1);
INSERT INTO Legume_Peut_Provoquer (legume_id, allergie_id) VALUES (1, 4);
INSERT INTO Legume_Peut_Provoquer (legume_id, allergie_id) VALUES (2, 4);
INSERT INTO Legume_Peut_Provoquer (legume_id, allergie_id) VALUES (6, 6);
INSERT INTO Legume_Peut_Provoquer (legume_id, allergie_id) VALUES (3, 3);
INSERT INTO Legume_Peut_Provoquer (legume_id, allergie_id) VALUES (8, 1);
INSERT INTO Legume_Peut_Provoquer (legume_id, allergie_id) VALUES (4, 5);

INSERT INTO Legume_Peut_Enfreindre (legume_id, croyance_id) VALUES (1, 5);
INSERT INTO Legume_Peut_Enfreindre (legume_id, croyance_id) VALUES (3, 5);
INSERT INTO Legume_Peut_Enfreindre (legume_id, croyance_id) VALUES (5, 2);
INSERT INTO Legume_Peut_Enfreindre (legume_id, croyance_id) VALUES (2, 2);
INSERT INTO Legume_Peut_Enfreindre (legume_id, croyance_id) VALUES (4, 4);
INSERT INTO Legume_Peut_Enfreindre (legume_id, croyance_id) VALUES (8, 1);
INSERT INTO Legume_Peut_Enfreindre (legume_id, croyance_id) VALUES (7, 3);
INSERT INTO Legume_Peut_Enfreindre (legume_id, croyance_id) VALUES (6, 1);

INSERT INTO Legume_Peut_Heurter (legume_id, conviction_id) VALUES (1, 1);
INSERT INTO Legume_Peut_Heurter (legume_id, conviction_id) VALUES (2, 5);
INSERT INTO Legume_Peut_Heurter (legume_id, conviction_id) VALUES (3, 3);
INSERT INTO Legume_Peut_Heurter (legume_id, conviction_id) VALUES (4, 3);
INSERT INTO Legume_Peut_Heurter (legume_id, conviction_id) VALUES (5, 1);
INSERT INTO Legume_Peut_Heurter (legume_id, conviction_id) VALUES (6, 5);
INSERT INTO Legume_Peut_Heurter (legume_id, conviction_id) VALUES (7, 2);
INSERT INTO Legume_Peut_Heurter (legume_id, conviction_id) VALUES (8, 2);

-- =====================
--16)

INSERT INTO Machine_Modele (modele_id, modele_nom) VALUES (1, 'lampe  a  raclette  traditionnelle');
INSERT INTO Machine_Modele (modele_id, modele_nom) VALUES (2, 'combine  raclette-pierrade-fondue-crepiere-friteuse-salamandre');
INSERT INTO Machine_Modele (modele_id, modele_nom) VALUES (3, 'appareil a raclette bon marche');
INSERT INTO Machine_Modele (modele_id, modele_nom) VALUES (4, 'lampe  a  raclette en T');
INSERT INTO Machine_Modele (modele_id, modele_nom) VALUES (5, 'appareil a raclette rond');
INSERT INTO Machine_Modele (modele_id, modele_nom) VALUES (6, 'appareil a raclette triple étage');

INSERT INTO Machine (machine_id, machine_nom, modele_id) VALUES (1, 'TERROIR' ,1);
INSERT INTO Machine (machine_id, machine_nom, modele_id) VALUES (2, 'CHIMERE' ,2);
INSERT INTO Machine (machine_id, machine_nom, modele_id) VALUES (3, 'JACK-OF-ALL-TRADE' ,2);
INSERT INTO Machine (machine_id, machine_nom, modele_id) VALUES (4, 'RAB-AIS' ,3);
INSERT INTO Machine (machine_id, machine_nom, modele_id) VALUES (5, 'LA DOUBLETTE' ,4);
INSERT INTO Machine (machine_id, machine_nom, modele_id) VALUES (6, 'RONDOUILLETTE' ,5);
INSERT INTO Machine (machine_id, machine_nom, modele_id) VALUES (7, 'CHESSE TOWER' ,6);

INSERT INTO Certificat_Entretien (certificat_id , entretien_date, tenrac_id, machine_id) VALUES (1, '2026-02-04', 11, 1);
INSERT INTO Certificat_Entretien (certificat_id , entretien_date, tenrac_id, machine_id) VALUES (2, '2026-02-04', 20, 2);
INSERT INTO Certificat_Entretien (certificat_id , entretien_date, tenrac_id, machine_id) VALUES (3, '2026-02-04', 20, 3);
INSERT INTO Certificat_Entretien (certificat_id , entretien_date, tenrac_id, machine_id) VALUES (4, '2026-02-04', 19, 4);
INSERT INTO Certificat_Entretien (certificat_id , entretien_date, tenrac_id, machine_id) VALUES (5, '2026-02-04', 11, 7);
INSERT INTO Certificat_Entretien (certificat_id , entretien_date, tenrac_id, machine_id) VALUES (6, '2026-02-06', 15, 2);
INSERT INTO Certificat_Entretien (certificat_id , entretien_date, tenrac_id, machine_id) VALUES (7, '2026-02-07', 7, 4);
INSERT INTO Certificat_Entretien (certificat_id , entretien_date, tenrac_id, machine_id) VALUES (8, '2026-02-07', 7, 6);
INSERT INTO Certificat_Entretien (certificat_id , entretien_date, tenrac_id, machine_id) VALUES (9, '2026-02-08', 20, 1);
INSERT INTO Certificat_Entretien (certificat_id , entretien_date, tenrac_id, machine_id) VALUES (10, '2026-02-09', 11, 7);

--17)

INSERT INTO Registre_Archive(registre_id, certificat_id) VALUES (1, 1);
INSERT INTO Registre_Archive(registre_id, certificat_id) VALUES (6, 2);
INSERT INTO Registre_Archive(registre_id, certificat_id) VALUES (2, 3);
INSERT INTO Registre_Archive(registre_id, certificat_id) VALUES (1, 4);
INSERT INTO Registre_Archive(registre_id, certificat_id) VALUES (7, 5);
INSERT INTO Registre_Archive(registre_id, certificat_id) VALUES (2, 6);
INSERT INTO Registre_Archive(registre_id, certificat_id) VALUES (6, 7);
INSERT INTO Registre_Archive(registre_id, certificat_id) VALUES (3, 8);
INSERT INTO Registre_Archive(registre_id, certificat_id) VALUES (4, 9);
INSERT INTO Registre_Archive(registre_id, certificat_id) VALUES (5, 10);

INSERT INTO Machine_Prepare(repas_id, machine_id) VALUES(5, 1);
INSERT INTO Machine_Prepare(repas_id, machine_id) VALUES(3, 2);
INSERT INTO Machine_Prepare(repas_id, machine_id) VALUES(7, 3);
INSERT INTO Machine_Prepare(repas_id, machine_id) VALUES(6, 4);
INSERT INTO Machine_Prepare(repas_id, machine_id) VALUES(2, 5);
INSERT INTO Machine_Prepare(repas_id, machine_id) VALUES(4, 6);
INSERT INTO Machine_Prepare(repas_id, machine_id) VALUES(1, 7);
INSERT INTO Machine_Prepare(repas_id, machine_id) VALUES(5, 8);
INSERT INTO Machine_Prepare(repas_id, machine_id) VALUES(7, 9);


--18)

INSERT INTO Entretien (entretien_id, entretien_type, entretien_periodicite) VALUES (1, 'BICARBIONATE DE SOUDE', 4);
INSERT INTO Entretien (entretien_id, entretien_type, entretien_periodicite) VALUES (2, 'DEGRAISAGE + PAS UTILISATION PENDANT 2 JOURS',2);
INSERT INTO Entretien (entretien_id, entretien_type, entretien_periodicite) VALUES (3, 'PASSAGE A LA VAISSELLE',5); 
INSERT INTO Entretien (entretien_id, entretien_type, entretien_periodicite) VALUES (4, 'PASSAGE LINGETTE DEGRAISSANTE',4);
INSERT INTO Entretien (entretien_id, entretien_type, entretien_periodicite) VALUES (5, 'UTILISATION DE DEGRAISSANT MR.PROPRE',3);
INSERT INTO Entretien (entretien_id, entretien_type, entretien_periodicite) VALUES (6, 'BROSSAGE + RASSAGE A L EAU', 5);

INSERT INTO Modele_Necessite (modele_id, entretien_id) VALUES (1, 1);
INSERT INTO Modele_Necessite (modele_id, entretien_id) VALUES (2, 2);
INSERT INTO Modele_Necessite (modele_id, entretien_id) VALUES (3, 3);
INSERT INTO Modele_Necessite (modele_id, entretien_id) VALUES (4, 4);
INSERT INTO Modele_Necessite (modele_id, entretien_id) VALUES (5, 5);
INSERT INTO Modele_Necessite (modele_id, entretien_id) VALUES (6, 6);


--Les reunions
INSERT INTO Reunion (reunion_id, reunion_date, adresse_id) VALUES (1, TO_TIMESTAMP('2026/06/12 13:45:21', 'YYYY/MM/DD HH24:MI:SS'), 1);
INSERT INTO Reunion (reunion_id, reunion_date, adresse_id) VALUES (2, TO_TIMESTAMP('2026/08/03 07:18:54', 'YYYY/MM/DD HH24:MI:SS'), 2);
INSERT INTO Reunion (reunion_id, reunion_date, adresse_id) VALUES (3, TO_TIMESTAMP('2026/11/27 19:32:08', 'YYYY/MM/DD HH24:MI:SS'), 3);
INSERT INTO Reunion (reunion_id, reunion_date, adresse_id) VALUES (4, TO_TIMESTAMP('2027/01/14 10:05:39', 'YYYY/MM/DD HH24:MI:SS'), 4);
INSERT INTO Reunion (reunion_id, reunion_date, adresse_id) VALUES (5, TO_TIMESTAMP('2027/03/22 22:41:16', 'YYYY/MM/DD HH24:MI:SS'), 5);
INSERT INTO Reunion (reunion_id, reunion_date, adresse_id) VALUES (6, TO_TIMESTAMP('2027/10/23 19:45:00', 'YYYY/MM/DD HH24:MI:SS'), 6);
--Se reunissent
/*
          1
          7
          10
          11
          12
          17
          19
*/
INSERT INTO Tenrac_Se_Reunissent (tenrac_id, reunion_id) VALUES (1, 1);
INSERT INTO Tenrac_Se_Reunissent (tenrac_id, reunion_id) VALUES (3, 1);
INSERT INTO Tenrac_Se_Reunissent (tenrac_id, reunion_id) VALUES (4, 1);
INSERT INTO Tenrac_Se_Reunissent (tenrac_id, reunion_id) VALUES (5, 1);

INSERT INTO Tenrac_Se_Reunissent (tenrac_id, reunion_id) VALUES (6, 2);
INSERT INTO Tenrac_Se_Reunissent (tenrac_id, reunion_id) VALUES (7, 2);
INSERT INTO Tenrac_Se_Reunissent (tenrac_id, reunion_id) VALUES (14, 2);
INSERT INTO Tenrac_Se_Reunissent (tenrac_id, reunion_id) VALUES (15, 2);

INSERT INTO Tenrac_Se_Reunissent (tenrac_id, reunion_id) VALUES (8, 3);
INSERT INTO Tenrac_Se_Reunissent (tenrac_id, reunion_id) VALUES (11, 3);
INSERT INTO Tenrac_Se_Reunissent (tenrac_id, reunion_id) VALUES (15, 3);
INSERT INTO Tenrac_Se_Reunissent (tenrac_id, reunion_id) VALUES (18, 3);
INSERT INTO Tenrac_Se_Reunissent (tenrac_id, reunion_id) VALUES (19, 3);
INSERT INTO Tenrac_Se_Reunissent (tenrac_id, reunion_id) VALUES (9, 3);
INSERT INTO Tenrac_Se_Reunissent (tenrac_id, reunion_id) VALUES (10, 3);
INSERT INTO Tenrac_Se_Reunissent (tenrac_id, reunion_id) VALUES (2, 3);

INSERT INTO Tenrac_Se_Reunissent (tenrac_id, reunion_id) VALUES (7, 4);
INSERT INTO Tenrac_Se_Reunissent (tenrac_id, reunion_id) VALUES (8, 4);
INSERT INTO Tenrac_Se_Reunissent (tenrac_id, reunion_id) VALUES (13, 4);
INSERT INTO Tenrac_Se_Reunissent (tenrac_id, reunion_id) VALUES (14, 4);
INSERT INTO Tenrac_Se_Reunissent (tenrac_id, reunion_id) VALUES (16, 4);

INSERT INTO Tenrac_Se_Reunissent (tenrac_id, reunion_id) VALUES (12, 5);
INSERT INTO Tenrac_Se_Reunissent (tenrac_id, reunion_id) VALUES (20, 5);
INSERT INTO Tenrac_Se_Reunissent (tenrac_id, reunion_id) VALUES (1, 5);

INSERT INTO Tenrac_Se_Reunissent (tenrac_id, reunion_id) VALUES (17, 6);


--Degustations
INSERT INTO Degustation (repas_id, tenrac_id, reunion_id) VALUES (, 1, 1);
INSERT INTO Degustation (repas_id, tenrac_id, reunion_id) VALUES (, 3, 1);
INSERT INTO Degustation (repas_id, tenrac_id, reunion_id) VALUES (, 4, 1);
INSERT INTO Degustation (repas_id, tenrac_id, reunion_id) VALUES (, 5, 1);
INSERT INTO Degustation (repas_id, tenrac_id, reunion_id) VALUES (, 6, 2);
INSERT INTO Degustation (repas_id, tenrac_id, reunion_id) VALUES (, 7, 2);
INSERT INTO Degustation (repas_id, tenrac_id, reunion_id) VALUES (, 8, 3);
INSERT INTO Degustation (repas_id, tenrac_id, reunion_id) VALUES (, 11, 3);
INSERT INTO Degustation (repas_id, tenrac_id, reunion_id) VALUES (, 15, 3);
INSERT INTO Degustation (repas_id, tenrac_id, reunion_id) VALUES (, 18, 3);
INSERT INTO Degustation (repas_id, tenrac_id, reunion_id) VALUES (, 19, 3);
INSERT INTO Degustation (repas_id, tenrac_id, reunion_id) VALUES (, 7, 4);
INSERT INTO Degustation (repas_id, tenrac_id, reunion_id) VALUES (, 8, 4);
INSERT INTO Degustation (repas_id, tenrac_id, reunion_id) VALUES (, 14, 4);
INSERT INTO Degustation (repas_id, tenrac_id, reunion_id) VALUES (, 16, 4);
INSERT INTO Degustation (repas_id, tenrac_id, reunion_id) VALUES (, 12, 5);


PROMPT "Fin de création de l extension de la base de donnees";