DROP TABLE IF EXISTS FeuilleDeMatch;
DROP TABLE IF EXISTS MatchDeRugby;
DROP TABLE IF EXISTS Commentaire;
DROP TABLE IF EXISTS Joueur;
DROP TABLE IF EXISTS Entraineur;
CREATE TABLE IF NOT EXISTS Joueur (
                                      idJoueur INT PRIMARY KEY AUTO_INCREMENT,
                                      numeroLicense INT(4) NOT NULL,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    dateNaissance DATE NOT NULL,
    taille INT(3) NULL,
    poids INT(3) NULL,
    statut ENUM('ACTIF', 'BLESSE', 'SUSPENDU', 'ABSENT') NOT NULL,
    postePrefere VARCHAR(50) NULL,
    estPremiereLigne BOOLEAN NULL
    );

CREATE TABLE IF NOT EXISTS Commentaire (
                                           idCommentaire INT PRIMARY KEY AUTO_INCREMENT,
                                           commentaires TEXT NULL,
                                           idJoueur INT NOT NULL,
                                           FOREIGN KEY (idJoueur) REFERENCES Joueur(idJoueur)
    );

CREATE TABLE IF NOT EXISTS MatchDeRugby (
                                            idMatchDeRugby INT PRIMARY KEY AUTO_INCREMENT,
                                            dateHeure DATETIME NOT NULL,
                                            adversaire VARCHAR(50) NOT NULL,
    lieu ENUM('DOMICILE', 'EXTERIEUR') NOT NULL,
    resultat ENUM('VICTOIRE', 'DEFAITE', 'NUL') NULL
    );

CREATE TABLE IF NOT EXISTS FeuilleDeMatch (
                                              idMatchDeRugby INT NOT NULL,
                                              idJoueur INT NOT NULL,
                                              estTitulaire BOOLEAN NULL,
                                              poste VARCHAR(50) NULL,
    note FLOAT NULL,
    commentaires TEXT NULL,
    PRIMARY KEY (idMatchDeRugby, idJoueur),
    FOREIGN KEY (idMatchDeRugby) REFERENCES MatchDeRugby(idMatchDeRugby),
    FOREIGN KEY (idJoueur) REFERENCES Joueur(idJoueur)
    );

CREATE TABLE IF NOT EXISTS Entraineur (
                                          idEntraineur INT PRIMARY KEY AUTO_INCREMENT,
                                          nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    equipe VARCHAR(20) NOT NULL,
    motDePasse VARCHAR(60) NOT NULL
    );