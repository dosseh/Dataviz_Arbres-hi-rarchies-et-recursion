-- Script Insertion pour PostgreSQL
-- Valeur de la table langue
INSERT INTO langue(nom_Langue) VALUES ('francais');
INSERT INTO langue(nom_Langue) VALUES ('allemand');
INSERT INTO langue(nom_Langue) VALUES ('anglais'); 
INSERT INTO langue(nom_Langue) VALUES ('espagnol'); 
INSERT INTO langue(nom_Langue) VALUES ('italien'); 
INSERT INTO langue(nom_Langue) VALUES ('romanche');
INSERT INTO langue(nom_Langue) VALUES ('islandais');
INSERT INTO langue(nom_Langue) VALUES ('norvegien');
INSERT INTO langue(nom_Langue) VALUES ('portugais');
INSERT INTO langue(nom_Langue) VALUES ('mirandais');
INSERT INTO langue(nom_Langue) VALUES ('suedois');
INSERT INTO langue(nom_Langue) VALUES ('finnois');
INSERT INTO langue(nom_Langue) VALUES ('neerlandais');
INSERT INTO langue(nom_Langue) VALUES ('grec');

-- Valeur de la table devise
INSERT INTO devise(nom_Devise) VALUES ('euro'); 
INSERT INTO devise(nom_Devise) VALUES ('livre_sterling');
INSERT INTO devise(nom_Devise) VALUES ('franc_suisse'); 
INSERT INTO devise(nom_Devise) VALUES ('couronne_irlandaise');
INSERT INTO devise(nom_Devise) VALUES ('couronne_norvegienne');
INSERT INTO devise(nom_Devise) VALUES ('couronne_suedoise');
 
-- Valeur de la table pays superficie en milliers de km^2, population en millions d'habitant
INSERT INTO pays(nom_pays, superficie, nb_habitants, drapeau,devise_id) VALUES ('FRANCE',643.801,66.9,'drapeauFrance',(SELECT devise_id FROM devise where nom_devise = 'euro'));
INSERT INTO pays(nom_pays, superficie, nb_habitants, drapeau,devise_id) VALUES ('ALLEMAGNE',357.376,82.67,'drapeauAllemand',(SELECT devise_id FROM devise where nom_devise = 'euro'));
INSERT INTO pays(nom_pays, superficie, nb_habitants, drapeau,devise_id) VALUES ('ITALIE',301.308,60.6,'drapeauItalien',(SELECT devise_id FROM devise where nom_devise = 'euro'));
INSERT INTO pays(nom_pays, superficie, nb_habitants, drapeau,devise_id) VALUES ('ESPAGNE',505.990,46.56,'drapeauEspagnol',(SELECT devise_id FROM devise where nom_devise = 'euro'));
INSERT INTO pays(nom_pays, superficie, nb_habitants, drapeau,devise_id) VALUES ('ROYAUME UNI',242.495,65.4,'drapeauRU',(SELECT devise_id FROM devise where nom_devise = 'livre_sterling'));
INSERT INTO pays(nom_pays, superficie, nb_habitants, drapeau,devise_id) VALUES ('SUISSE',242.495,65.4,'drapeauSuisse',(SELECT devise_id FROM devise where nom_devise = 'franc_suisse')); 
INSERT INTO pays(nom_pays, superficie, nb_habitants, drapeau,devise_id) VALUES ('ISLANDE',103.125,0.33761,'drapeauIslande',(SELECT devise_id FROM devise where nom_devise = 'couronne_irlandaise'));
INSERT INTO pays(nom_pays, superficie, nb_habitants, drapeau,devise_id) VALUES ('Norvege',385.199,5.236826,'drapeauNorvege',(SELECT devise_id FROM devise where nom_devise = 'couronne_norvegienne'));
INSERT INTO pays(nom_pays, superficie, nb_habitants, drapeau,devise_id) VALUES ('Portugal',92.358,10.309573,'drapeauPortugal',(SELECT devise_id FROM devise where nom_devise = 'euro'));
INSERT INTO pays(nom_pays, superficie, nb_habitants, drapeau,devise_id) VALUES ('Suede',449.965,10.014873,'drapeauSuede',(SELECT devise_id FROM devise where nom_devise = 'couronne_suedoise'));
INSERT INTO pays(nom_pays, superficie, nb_habitants, drapeau,devise_id) VALUES ('Finlande',338.145,5.491054,'drapeauFinlande',(SELECT devise_id FROM devise where nom_devise = 'euro'));
INSERT INTO pays(nom_pays, superficie, nb_habitants, drapeau,devise_id) VALUES ('Belgique',30.528,11.356191,'drapeauBelge',(SELECT devise_id FROM devise where nom_devise = 'euro'));
INSERT INTO pays(nom_pays, superficie, nb_habitants, drapeau,devise_id) VALUES ('Grece',131.957,10.757292,'drapeauGrec',(SELECT devise_id FROM devise where nom_devise = 'euro'));

-- Valeur de la table PaysLangue
INSERT INTO PaysLangue(pays_id, langue_id) VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'FRANCE'),(SELECT langue_id FROM langue WHERE nom_Langue = 'francais'));
INSERT INTO PaysLangue(pays_id, langue_id) VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'ALLEMAGNE'),(SELECT langue_id FROM langue WHERE nom_Langue = 'allemand'));
INSERT INTO PaysLangue(pays_id, langue_id) VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'ITALIE'),(SELECT langue_id FROM langue WHERE nom_Langue = 'italien'));
INSERT INTO PaysLangue(pays_id, langue_id) VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'ESPAGNE'),(SELECT langue_id FROM langue WHERE nom_Langue = 'espagnol'));
INSERT INTO PaysLangue(pays_id, langue_id) VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'ROYAUME UNI'),(SELECT langue_id FROM langue WHERE nom_Langue = 'anglais'));
INSERT INTO PaysLangue(pays_id, langue_id) VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'SUISSE'),(SELECT langue_id FROM langue WHERE nom_Langue = 'francais'));
INSERT INTO PaysLangue(pays_id, langue_id) VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'SUISSE'),(SELECT langue_id FROM langue WHERE nom_Langue = 'allemand'));
INSERT INTO PaysLangue(pays_id, langue_id) VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'SUISSE'),(SELECT langue_id FROM langue WHERE nom_Langue = 'italien'));
INSERT INTO PaysLangue(pays_id, langue_id) VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'SUISSE'),(SELECT langue_id FROM langue WHERE nom_Langue = 'romanche'));
INSERT INTO PaysLangue(pays_id, langue_id) VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'ISLANDE'),(SELECT langue_id FROM langue WHERE nom_Langue = 'islandais'));
INSERT INTO PaysLangue(pays_id, langue_id) VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'Norvege'),(SELECT langue_id FROM langue WHERE nom_Langue = 'norvegien'));
INSERT INTO PaysLangue(pays_id, langue_id) VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'Portugal'),(SELECT langue_id FROM langue WHERE nom_Langue = 'portugais'));
INSERT INTO PaysLangue(pays_id, langue_id) VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'Portugal'),(SELECT langue_id FROM langue WHERE nom_Langue = 'mirandais'));
INSERT INTO PaysLangue(pays_id, langue_id) VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'Suede'),(SELECT langue_id FROM langue WHERE nom_Langue = 'suedois'));
INSERT INTO PaysLangue(pays_id, langue_id) VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'Finlande'),(SELECT langue_id FROM langue WHERE nom_Langue = 'finnois'));
INSERT INTO PaysLangue(pays_id, langue_id) VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'Finlande'),(SELECT langue_id FROM langue WHERE nom_Langue = 'suedois'));
INSERT INTO PaysLangue(pays_id, langue_id) VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'Belgique'),(SELECT langue_id FROM langue WHERE nom_Langue = 'francais'));
INSERT INTO PaysLangue(pays_id, langue_id) VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'Belgique'),(SELECT langue_id FROM langue WHERE nom_Langue = 'allemand'));
INSERT INTO PaysLangue(pays_id, langue_id) VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'Belgique'),(SELECT langue_id FROM langue WHERE nom_Langue = 'neerlandais'));
INSERT INTO PaysLangue(pays_id, langue_id) VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'Grece'),(SELECT langue_id FROM langue WHERE nom_Langue = 'grec'));

-- Valeur de la table organisation budget en millions d'euro, valeur cern et AELE approximé avec un convertisseur franc_suisse -> euro
-- espace_shengen n'as pas de siege mais on demande une valeur non null, du coup on a utiliser l'endroit de la signature des accords de shengen
INSERT INTO organisation(nom_orga, Budget, date_Creation, siege) VALUES ('union_europeene',145000.0,'1957/03/25','BRUXELLES');
INSERT INTO organisation(nom_orga, Budget, date_Creation, siege) VALUES ('cern',970.17,'1954/09/29','geneve');
INSERT INTO organisation(nom_orga, Budget, date_Creation, siege) VALUES ('AELE',18.657,'1960/01/04','geneve');
INSERT INTO organisation(nom_orga, Budget, date_Creation, siege) VALUES ('espace_shengen',NULL,'1995/03/26','amsterdam');
 

-- Valeur de la table OrgaPays
-- Union Europeene  
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'FRANCE'),(SELECT orga_id FROM organisation WHERE nom_orga = 'union_europeene'),'1957/03/25',NULL);
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'ALLEMAGNE'),(SELECT orga_id FROM organisation WHERE nom_orga = 'union_europeene'),'1957/03/25',NULL);
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'ITALIE'),(SELECT orga_id FROM organisation WHERE nom_orga = 'union_europeene'),'1957/03/25',NULL);
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'ESPAGNE'),(SELECT orga_id FROM organisation WHERE nom_orga = 'union_europeene'),'1986/01/01',NULL);
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'ROYAUME UNI'),(SELECT orga_id FROM organisation WHERE nom_orga = 'union_europeene'),'1973/01/01',NULL);
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'Belgique'),(SELECT orga_id FROM organisation WHERE nom_orga = 'union_europeene'),'1957/03/25',NULL);
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'Finlande'),(SELECT orga_id FROM organisation WHERE nom_orga = 'union_europeene'),'1995/01/01',NULL);
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'Grece'),(SELECT orga_id FROM organisation WHERE nom_orga = 'union_europeene'),'1981/01/01',NULL);
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'Portugal'),(SELECT orga_id FROM organisation WHERE nom_orga = 'union_europeene'),'1986/01/01',NULL);
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'Suede'),(SELECT orga_id FROM organisation WHERE nom_orga = 'union_europeene'),'1995/01/01',NULL);

-- CERN
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'FRANCE'),(SELECT orga_id FROM organisation WHERE nom_orga = 'cern'),'1954/09/24',NULL);
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'ALLEMAGNE'),(SELECT orga_id FROM organisation WHERE nom_orga = 'cern'),'1954/09/24',NULL);
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'ITALIE'),(SELECT orga_id FROM organisation WHERE nom_orga = 'cern'),'1954/09/24',NULL);
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'ESPAGNE'),(SELECT orga_id FROM organisation WHERE nom_orga = 'cern'),'1983/11/01',NULL);
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'ROYAUME UNI'),(SELECT orga_id FROM organisation WHERE nom_orga = 'cern'),'1954/09/24',NULL);
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'SUISSE'),(SELECT orga_id FROM organisation WHERE nom_orga = 'cern'),'1954/09/24',NULL);
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'Belgique'),(SELECT orga_id FROM organisation WHERE nom_orga = 'cern'),'1954/09/24',NULL);
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'Grece'),(SELECT orga_id FROM organisation WHERE nom_orga = 'cern'),'1954/09/24',NULL);
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'Norvege'),(SELECT orga_id FROM organisation WHERE nom_orga = 'cern'),'1954/09/24',NULL);
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'Suede'),(SELECT orga_id FROM organisation WHERE nom_orga = 'cern'),'1954/09/24',NULL);
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'Portugal'),(SELECT orga_id FROM organisation WHERE nom_orga = 'cern'),'1965/07/01',NULL);
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'Finlande'),(SELECT orga_id FROM organisation WHERE nom_orga = 'cern'),'1991/01/01',NULL);

-- AELE
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'Suede'),(SELECT orga_id FROM organisation WHERE nom_orga = 'AELE'),'1960/04/01','1995/01/01');
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'ROYAUME UNI'),(SELECT orga_id FROM organisation WHERE nom_orga = 'AELE'),'1960/04/01','1973/01/01');
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'Portugal'),(SELECT orga_id FROM organisation WHERE nom_orga = 'AELE'),'1960/04/01','1973/01/01');
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'Norvege'),(SELECT orga_id FROM organisation WHERE nom_orga = 'AELE'),'1960/05/03',NULL);
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'SUISSE'),(SELECT orga_id FROM organisation WHERE nom_orga = 'AELE'),'1960/05/03',NULL);
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'ISLANDE'),(SELECT orga_id FROM organisation WHERE nom_orga = 'AELE'),'1970/01/01',NULL);


-- ESPACE SHENGEN
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'ALLEMAGNE'),(SELECT orga_id FROM organisation WHERE nom_orga = 'espace_shengen'),'1995/03/26',NULL);
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'Portugal'),(SELECT orga_id FROM organisation WHERE nom_orga = 'espace_shengen'),'1995/03/26',NULL);
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'ESPAGNE'),(SELECT orga_id FROM organisation WHERE nom_orga = 'espace_shengen'),'1995/03/26',NULL);
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'FRANCE'),(SELECT orga_id FROM organisation WHERE nom_orga = 'espace_shengen'),'1995/03/26',NULL);
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'Grece'),(SELECT orga_id FROM organisation WHERE nom_orga = 'espace_shengen'),'2000/03/26',NULL);
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'ISLANDE'),(SELECT orga_id FROM organisation WHERE nom_orga = 'espace_shengen'),'2001/03/25',NULL);
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'Finlande'),(SELECT orga_id FROM organisation WHERE nom_orga = 'espace_shengen'),'2001/03/25',NULL);
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'Suede'),(SELECT orga_id FROM organisation WHERE nom_orga = 'espace_shengen'),'2001/03/25',NULL);
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'ITALIE'),(SELECT orga_id FROM organisation WHERE nom_orga = 'espace_shengen'),'1997/10/26',NULL);
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'Belgique'),(SELECT orga_id FROM organisation WHERE nom_orga = 'espace_shengen'),'1997/12/01',NULL);
INSERT INTO OrgaPays(pays_id, orga_id, date_adhesion, date_sortie)  VALUES ((SELECT pays_id FROM pays WHERE nom_pays = 'SUISSE'),(SELECT orga_id FROM organisation WHERE nom_orga = 'espace_shengen'),'2008/12/12',NULL);
					 

					 
					 
			  
			  
			  
 
