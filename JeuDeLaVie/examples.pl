% Exemple 1 : Calcul du nombre de voisins vivants pour une cellule (1,1)
?- nb_voisins_vivants([[1,1,0], [1,1,1], [0,1,0]], 1, 1, Nombre).
% Attendu : Nombre = 5.

% Exemple 2 : Calcul du nombre de voisins vivants pour une cellule (2,1)
?- nb_voisins_vivants([[1,1,1], [1,0,1], [0,1,0]], 2, 1, Nombre).
% Attendu : Nombre = 2.

% Exemple 3 : Trouver l'état suivant d'une cellule vivante avec 3 voisins
?- etat_suivant_cellule([[0,1,0], [1,1,1], [0,0,0]], 1, 1, EtatSuivant).
% Attendu : EtatSuivant = 1 (Survie).

% Exemple 4 : Chercher une grille stable de taille 2x2
?- cherche_grille_stable(2, 2, G), afficher_grille(G).
% Attendu : G = [[0, 0], [0, 0]] ; G = [[1, 1], [1, 1]].

% Exemple 5 : Chercher une grille stable de taille 3x3
?- cherche_grille_stable(3, 3, G), afficher_grille(G).
% Attendu : Plusieurs solutions avec des configurations stables.

