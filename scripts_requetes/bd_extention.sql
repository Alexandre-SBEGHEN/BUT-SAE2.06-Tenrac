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
      '---"    '---'  \  ; |\   \ .'\  ; |'---'   
                       `--"  `---`   `--"         
                                                  
*/

PROMPT "Creation de l'extension de la base de donnees";

-- 1) Membres et hiérarchie --
-- Ajout des grades
INSERT INTO Tenrac_Grade (grade_id, grade_nom) VALUES (1, "AFFILIE");
INSERT INTO Tenrac_Grade (grade_id, grade_nom) VALUES (2, "SYMPATHISANT");
INSERT INTO Tenrac_Grade (grade_id, grade_nom) VALUES (3, "ADHERENT");
INSERT INTO Tenrac_Grade (grade_id, grade_nom) VALUES (4, "CHEVALIER/DAME");
INSERT INTO Tenrac_Grade (grade_id, grade_nom) VALUES (5, "GRAND CHEVALIER/HAUTE DAME");
INSERT INTO Tenrac_Grade (grade_id, grade_nom) VALUES (6, "COMMANDEUR");
INSERT INTO Tenrac_Grade (grade_id, grade_nom) VALUES (7, "GRAND CROIX");
-- Ajout des rangs
INSERT INTO Tenrac_Rang (rang_id, rang_nom) VALUES (1, "NOVICE");
INSERT INTO Tenrac_Rang (rang_id, rang_nom) VALUES (2, "COMPAGNON");
-- Ajout des titres
INSERT INTO Tenrac_Titre (titre_id, titre_nom) VALUES (1, "PHILANTROPE");
INSERT INTO Tenrac_Titre (titre_id, titre_nom) VALUES (2, "PROTECTEUR");
INSERT INTO Tenrac_Titre (titre_id, titre_nom) VALUES (3, "HONORABLE");
-- Ajout des dignités
INSERT INTO Tenrac_Dignite (dignite_id, dignite_nom) VALUES (1, "MAITRE");
INSERT INTO Tenrac_Dignite (dignite_id, dignite_nom) VALUES (2, "GRAND CHANCELIER");
INSERT INTO Tenrac_Dignite (dignite_id, dignite_nom) VALUES (3, "GRAND MAITRE");
-- Ajout des Tenracs
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (1, 'SBEGHEN', 'ALEXANDRE', 'ALEXANDRE@SBEGHEN.FR', '0766117611', '44 AVENUE MAURICE THOREZ', 'RESIDENCE L''ARPEGE', '13110', 'PORT-DE-BOUC', ..., ..., ..., ..., ...);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (2, 'SOUBIALE', 'ELIAS', '@', '0745746718', '44 AVENUE PAUL LOMBARDI', NULL, '13620', 'CARRY-LE-ROUET', ..., ..., ..., ..., ...);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (3, '', '', '', '', '', '', '', '', ..., ..., ..., ..., ...);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (4, '', '', '', '', '', '', '', '', ..., ..., ..., ..., ...);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (5, '', '', '', '', '', '', '', '', ..., ..., ..., ..., ...);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (6, '', '', '', '', '', '', '', '', ..., ..., ..., ..., ...);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (7, '', '', '', '', '', '', '', '', ..., ..., ..., ..., ...);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (8, '', '', '', '', '', '', '', '', ..., ..., ..., ..., ...);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (9, '', '', '', '', '', '', '', '', ..., ..., ..., ..., ...);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (10, '', '', '', '', '', '', '', '', ..., ..., ..., ..., ...);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (11, '', '', '', '', '', '', '', '', ..., ..., ..., ..., ...);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (12, '', '', '', '', '', '', '', '', ..., ..., ..., ..., ...);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (13, '', '', '', '', '', '', '', '', ..., ..., ..., ..., ...);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (14, '', '', '', '', '', '', '', '', ..., ..., ..., ..., ...);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (15, '', '', '', '', '', '', '', '', ..., ..., ..., ..., ...);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (16, '', '', '', '', '', '', '', '', ..., ..., ..., ..., ...);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (17, '', '', '', '', '', '', '', '', ..., ..., ..., ..., ...);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (18, '', '', '', '', '', '', '', '', ..., ..., ..., ..., ...);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (19, '', '', '', '', '', '', '', '', ..., ..., ..., ..., ...);
INSERT INTO Tenrac (tenrac_id, tenrac_nom, tenrac_prenom, tenrac_courriel, tenrac_telephone, tenrac_adresse_principale, tenrac_adresse_complement, tenrac_adresse_code_postal, tenrac_adresse_ville, organisme_siret, grade_id, rang_id, titre_id, dignite) VALUES (20, '', '', '', '', '', '', '', '', ..., ..., ..., ..., ...);
----------------------------------------------------------------------



-- Clubs et Ordre --
INSERT INTO Club (club_id, club_nom, registre_id) VALUES (1, 'SUPER RACLETTE', 1)
INSERT INTO Club (club_id, club_nom, registre_id) VALUES (2, 'TENDERS DORES', 2)
INSERT INTO Club (club_id, club_nom, registre_id) VALUES (3, 'POULETT FONDANT', 3)
INSERT INTO Club (club_id, club_nom, registre_id) VALUES (4, 'POULET CRROUSTY', 4)
INSERT INTO Club (club_id, club_nom, registre_id) VALUES (5, 'CROQUANT FONDANT', 5)
INSERT INTO Club (club_id, club_nom, registre_id) VALUES (7, 'CLUB RACC', 6)

INSERT INTO Ordre (ordre_id, ordre_nom, registre_id) VALUES (1, 'Ordre Central du Tenrac', 7)

INSERT INTO Registre (registre_id) VALUES (1)
INSERT INTO Registre (registre_id) VALUES (2)
INSERT INTO Registre (registre_id) VALUES (3)
INSERT INTO Registre (registre_id) VALUES (4)
INSERT INTO Registre (registre_id) VALUES (5)
INSERT INTO Registre (registre_id) VALUES (6)
INSERT INTO Registre (registre_id) VALUES (7)


INSERT INTO Organisme_Type (type_id, type_nom) VALUES (1, 'ENTREPRISE')
INSERT INTO Organisme_Type (type_id, type_nom) VALUES (2, 'ASSOCIATION')
INSERT INTO Organisme_Type (type_id, type_nom) VALUES (3, 'EDUCATION')



INSERT INTO Organisme (organisme_siret, organisme_raison, type_id) VALUES (4957334317, 'Raclette & Co')
INSERT INTO Organisme (organisme_siret, organisme_raison) VALUES (1897294887, 'Tenders Formation France')
INSERT INTO Organisme (organisme_siret, organisme_raison) VALUES (8103991574, 'Institut Supérieur de la Raclette')
INSERT INTO Organisme (organisme_siret, organisme_raison) VALUES (9170924516, 'Fédération Culinaire Fromagère')
INSERT INTO Organisme (organisme_siret, organisme_raison) VALUES (3434397845)
INSERT INTO Organisme (organisme_siret, organisme_raison) VALUES (2926709981)
INSERT INTO Organisme (organisme_siret, organisme_raison) VALUES (7778410850)
INSERT INTO Organisme (organisme_siret, organisme_raison) VALUES (4782486106)
INSERT INTO Organisme (organisme_siret, organisme_raison) VALUES (1136707239)
INSERT INTO Organisme (organisme_siret, organisme_raison) VALUES (9451477521)
INSERT INTO Organisme (organisme_siret, organisme_raison) VALUES (7011713242)
INSERT INTO Organisme (organisme_siret, organisme_raison) VALUES (1932577072)
INSERT INTO Organisme (organisme_siret, organisme_raison) VALUES (4608852069)
INSERT INTO Organisme (organisme_siret, organisme_raison) VALUES (6514160830)




----------------------------------------------------------------------

-- 4) Repas et plats --
-- ==== REPAS ====

INSERT INTO Repas (repas_id, repas_nom) VALUES (1, "RACLETTE & CIE");
INSERT INTO Repas (repas_id, repas_nom) VALUES (2, "PIZZA & CIE");
INSERT INTO Repas (repas_id, repas_nom) VALUES (3, "VIANDARD");
INSERT INTO Repas (repas_id, repas_nom) VALUES (4, "AU FRUITS");
INSERT INTO Repas (repas_id, repas_nom) VALUES (5, "MER ET OCEAN");
INSERT INTO Repas (repas_id, repas_nom) VALUES (6, "SAVEURE RICHE");
INSERT INTO Repas (repas_id, repas_nom) VALUES (7, "GOURMET");
INSERT INTO Repas (repas_id, repas_nom) VALUES (8, "POUR UN LONG MOMENT");
INSERT INTO Repas (repas_id, repas_nom) VALUES (9, "UNE LEGERE PLUME");


-- ===============

-- ===== PLAT ====
-- 10) Quels sont les noms des repas et les noms des plats qui les composent, par ordre alphabetique des repas ? 2 attributs, 30 tuples

INSERT INTO Plat (plat_id, plat_nom) VALUES (1, "RACLETTE CLASSIQUE");
INSERT INTO Plat (plat_id, plat_nom) VALUES (2, "TENDERS DE POULET FRITS");
INSERT INTO Plat (plat_id, plat_nom) VALUES (3, "VIANDE A KEBAB");
INSERT INTO Plat (plat_id, plat_nom) VALUES (4, "PIZZA");
INSERT INTO Plat (plat_id, plat_nom) VALUES (5, "QUICHE");
INSERT INTO Plat (plat_id, plat_nom) VALUES (6, "SAUMON");
INSERT INTO Plat (plat_id, plat_nom) VALUES (7, "ANANAS");
INSERT INTO Plat (plat_id, plat_nom) VALUES (8, "BEURRE");
INSERT INTO Plat (plat_id, plat_nom) VALUES (9, "POULET");
INSERT INTO Plat (plat_id, plat_nom) VALUES (10, "THON");
INSERT INTO Plat (plat_id, plat_nom) VALUES (11, "POMME");
INSERT INTO Plat (plat_id, plat_nom) VALUES (12, "POIRE");
INSERT INTO Plat (plat_id, plat_nom) VALUES (13, "CRABE");
INSERT INTO Plat (plat_id, plat_nom) VALUES (14, "TENDERS DE POULET");
INSERT INTO Plat (plat_id, plat_nom) VALUES (15, "TENDERS AUX LEGUMES");
INSERT INTO Plat (plat_id, plat_nom) VALUES (16, "RACLETTE ULTIME");
INSERT INTO Plat (plat_id, plat_nom) VALUES (17, "BOEUF");
INSERT INTO Plat (plat_id, plat_nom) VALUES (18, "PIZZA AUX TENDERS");
INSERT INTO Plat (plat_id, plat_nom) VALUES (19, "SALAMANDRE");
INSERT INTO Plat (plat_id, plat_nom) VALUES (20, "RACLETTE ANANAS");
INSERT INTO Plat (plat_id, plat_nom) VALUES (21, "RACLETTE-PIZZA-XXL");

-- ================

-- ==== COMPOSITION ====

INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (1, 1);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (1, 16);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (1, 20);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (1, 21);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (2, 4);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (2, 7);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (2, 18);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (2, 19);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (3, 2);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (3, 3);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (3, 9);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (3, 14);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (3, 17);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (4, 7);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (4, 11);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (4, 12);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (4, 20);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (4, 21);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (5, 6);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (5, 10);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (5, 13);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (5, 19);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (6, 5);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (6, 18);
INSERT INTO Repas_Constitue_De (repas_id, plat_id) VALUES (6, 20);
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

-- =====================
--16)

INSERT INTO Machine_Modele (modele_id, modele_nom) VALUES (1, lampe  à  raclette  traditionnelle);
INSERT INTO Machine_Modele (modele_id, modele_nom) VALUES (2, combiné  raclette-pierrade-fondue-crêpière-friteuse-salamandre);
INSERT INTO Machine_Modele (modele_id, modele_nom) VALUES (3, appareil à raclette bon marché);

INSERT INTO Machine (machine_id, machine_nom, modele_id) VALUES (1, "TERROIR" ,1);
INSERT INTO Machine (machine_id, machine_nom, modele_id) VALUES (2, "" ,1);
INSERT INTO Machine (machine_id, machine_nom, modele_id) VALUES (3, "CHIMERE" ,2);
INSERT INTO Machine (machine_id, machine_nom, modele_id) VALUES (4, "JACK-OF-ALL-TRADE" ,2);
INSERT INTO Machine (machine_id, machine_nom, modele_id) VALUES (5, "" ,2);
INSERT INTO Machine (machine_id, machine_nom, modele_id) VALUES (6, "RAB-AIS" ,3);
INSERT INTO Machine (machine_id, machine_nom, modele_id) VALUES (7, "WISHCLETTE" ,3);

INSERT INTO Entretien (entretien_id, entretien_type, entretien_periodicite) VALUES (1, "TERROIR" ,1);

INSERT INTO (certificat_id , entretien_date, tenrac_id) VALUES ();
----------------------------------------------------------------------

PROMPT "Fin de création de l'extension de la base de donnees";