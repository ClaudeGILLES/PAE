create database if not exists dba1 character set ='utf8';
use dba1;
CREATE TABLE AA (
  id VARCHAR(50) NOT NULL,
  UE_id VARCHAR(45) NOT NULL,
  titre VARCHAR(100) NULL,
  nbCredits INTEGER UNSIGNED NULL,
  PRIMARY KEY(id),
  KEY AA_FKIndex1(UE_id)
);

CREATE TABLE etudiant (
  id VARCHAR(45) NOT NULL,
  nom VARCHAR(75)not NULL,
  prenom varchar(75) not null,
  sectionEtu ENUM('assistante de direction', 'comptabilité', 'informatique de gestion'),
  bloc VARCHAR(2) NULL,
  PRIMARY KEY(id)
);

CREATE TABLE UE (
  id VARCHAR(45) NOT NULL,
  eleve_id VARCHAR(45) NOT NULL,
  titre VARCHAR(100)not NULL,
  nbCredits INTEGER UNSIGNED not NULL,
  sectionUE ENUM('assistante de direction', 'comptabilité', 'informatique de gestion'),
  PRIMARY KEY(id),
  key UE_FKIndex1(eleve_id)
);

CREATE TABLE utilisateur (
  id VARCHAR(45) NOT NULL,
  nom VARCHAR(45) NULL,
  prenom VARCHAR(45) NULL,
  motDePasse VARCHAR(45) NULL,
  role VARCHAR(50) NULL,
  email VARCHAR(100) NULL,
  PRIMARY KEY(id)
);