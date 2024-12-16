-- V1.0.0

INSERT INTO Matiere VALUES (11, 'SQL', 7); 
INSERT INTO Matiere VALUES (12, 'C++', 8);
INSERT INTO Matiere VALUES (13, 'PHP', 7);

INSERT INTO Intervenant VALUES (1, 'Codd', 'Ted', 'P');
INSERT INTO Intervenant VALUES (2, 'Gray', 'Jim', 'V');
INSERT INTO Intervenant VALUES (3, 'Agrawal', 'Rakesh', 'P');
INSERT INTO Intervenant VALUES (4, 'Stonebraker', 'Michael', 'V');
INSERT INTO Intervenant VALUES (5, 'Chen', 'Peter', 'P');
INSERT INTO Intervenant VALUES (6, 'Bachmann', 'Charles', 'V');
INSERT INTO Intervenant VALUES (7, 'Nedjar', 'Sebastien', 'V');
INSERT INTO Intervenant VALUES (8, 'Martin Nevot', 'Mickael', 'V');

INSERT INTO Etudiant VALUES (115, 'Batiatus', 'Quintus', 'G2');
INSERT INTO Etudiant VALUES (116, 'Lebeau', 'Remy', 'G2');
INSERT INTO Etudiant VALUES (117, 'Connor', 'Sarah', 'G2');
INSERT INTO Etudiant VALUES (118, 'Tancarville', 'Laureline', 'G3');
INSERT INTO Etudiant VALUES (119, 'Underwood', 'Francis', 'G3');
INSERT INTO Etudiant VALUES (120, 'Targaryen', 'Aegon', 'G3');
INSERT INTO Etudiant VALUES (121, 'Maximus', 'Magnus', 'G3');
INSERT INTO Etudiant VALUES (110, 'Elric', 'Alphonse', 'G1');
INSERT INTO Etudiant VALUES (111, 'Yagami', 'Light', 'G1');
INSERT INTO Etudiant VALUES (112, 'White', 'Walter', 'G1');
INSERT INTO Etudiant VALUES (113, 'Grimes', 'Rick', 'G1');
INSERT INTO Etudiant VALUES (114, 'Harkness', 'Jack', 'G2');

INSERT INTO Salle VALUES ('E102', 1, 29);
INSERT INTO Salle VALUES ('E103', 1, 29);
INSERT INTO Salle VALUES ('E104', 1, 18);
INSERT INTO Salle VALUES ('E105', 1, 29);
INSERT INTO Salle VALUES ('E106', 1, 30);
INSERT INTO Salle VALUES ('E107', 1, 30);
INSERT INTO Salle VALUES ('E001', 2, 48);

INSERT INTO Cours VALUES (13, 1, 8, 'E106', 'G1', '2021-9-1', 'PM');
INSERT INTO Cours VALUES (11, 1, 5, 'E107', 'G2', '2021-9-1', 'PM');
INSERT INTO Cours VALUES (11, 1, 2, 'E105', 'G3', '2021-9-1', 'PM');
INSERT INTO Cours VALUES (12, 1, 2, 'E105', 'G1', '2021-9-2', 'AM');
INSERT INTO Cours VALUES (13, 1, 7, 'E103', 'G2', '2021-9-2', 'AM');
INSERT INTO Cours VALUES (12, 1, 1, 'E106', 'G3', '2021-9-2', 'AM');
INSERT INTO Cours VALUES (11, 1, 4, 'E107', 'G1', '2021-9-2', 'PM');
INSERT INTO Cours VALUES (12, 1, 3, 'E105', 'G2', '2021-9-2', 'PM');
INSERT INTO Cours VALUES (13, 1, 6, 'E103', 'G3', '2021-9-2', 'PM');
INSERT INTO Cours VALUES (12, 2, 2, 'E102', 'G1', '2021-9-5', 'AM');
INSERT INTO Cours VALUES (11, 2, 5, 'E103', 'G2', '2021-9-5', 'AM');
INSERT INTO Cours VALUES (13, 2, 6, 'E105', 'G3', '2021-9-5', 'AM');
INSERT INTO Cours VALUES (12, 2, 3, 'E102', 'G2', '2021-9-5', 'PM');
INSERT INTO Cours VALUES (11, 2, 2, 'E103', 'G3', '2021-9-5', 'PM');
INSERT INTO Cours VALUES (12, 3, 2, 'E102', 'G2', '2021-9-7', 'AM');
INSERT INTO Cours VALUES (13, 3, 2, 'E102', 'G1', '2021-9-9', 'AM');
INSERT INTO Cours VALUES (13, 1, 2, 'E103', 'G3', '2021-9-15', 'PM');
INSERT INTO Cours VALUES (13, 2, 2, 'E103', 'G3', '2021-9-20', 'PM');
INSERT INTO Cours VALUES (11, 3, 2, 'E103', 'G3', '2021-9-20', 'PM');

INSERT INTO Evaluation VALUES (11, 110, 12);
INSERT INTO Evaluation VALUES (11, 111, 10);
INSERT INTO Evaluation VALUES (11, 112, 14);
INSERT INTO Evaluation VALUES (11, 113, 15);
INSERT INTO Evaluation VALUES (11, 114, 11);
INSERT INTO Evaluation VALUES (11, 115, 18);
INSERT INTO Evaluation VALUES (11, 116, 17);
INSERT INTO Evaluation VALUES (11, 117, 17);
INSERT INTO Evaluation VALUES (11, 118, 11);
INSERT INTO Evaluation VALUES (11, 119, 9);
INSERT INTO Evaluation VALUES (11, 120, 13);
INSERT INTO Evaluation VALUES (11, 121, 19);
INSERT INTO Evaluation VALUES (12, 110, 14);
INSERT INTO Evaluation VALUES (12, 111, 11);
INSERT INTO Evaluation VALUES (12, 112, 11);
INSERT INTO Evaluation VALUES (12, 113, 16);
INSERT INTO Evaluation VALUES (12, 114, 10);
INSERT INTO Evaluation VALUES (12, 115, 9);
INSERT INTO Evaluation VALUES (12, 116, 15);
INSERT INTO Evaluation VALUES (12, 117, 13);
INSERT INTO Evaluation VALUES (12, 118, 17);
INSERT INTO Evaluation VALUES (12, 119, 11);
INSERT INTO Evaluation VALUES (12, 120, 16);
INSERT INTO Evaluation VALUES (12, 121, 15);
INSERT INTO Evaluation VALUES (13, 110, 12);
INSERT INTO Evaluation VALUES (13, 111, 10);
INSERT INTO Evaluation VALUES (13, 112, 18);
INSERT INTO Evaluation VALUES (13, 113, 13);
INSERT INTO Evaluation VALUES (13, 114, 11);
INSERT INTO Evaluation VALUES (13, 115, 15);
INSERT INTO Evaluation VALUES (13, 116, 16);
INSERT INTO Evaluation VALUES (13, 117, 18);
INSERT INTO Evaluation VALUES (13, 118, 11);
INSERT INTO Evaluation VALUES (13, 119, 8);
INSERT INTO Evaluation VALUES (13, 120, 14);
INSERT INTO Evaluation VALUES (13, 121, 12);

INSERT INTO Moyennes (idm, groupe, moyenne)
SELECT e.idm, et.groupe, ROUND(AVG(e.note)::NUMERIC, 2) AS moyenne
FROM Evaluation e
JOIN Etudiant et ON e.ide = et.ide
GROUP BY e.idm, et.groupe;

SELECT * FROM Moyennes;
