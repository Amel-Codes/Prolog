% Exemple 1 : Compter les éléments d'une liste
?- nb_elt_Acc([a, b, c, d], 0, N).
% Attendu : N = 4

% Exemple 2 : Somme des éléments d'une liste
?- somme([1, 2, 3, 4], 0, S).
% Attendu : S = 10

% Exemple 3 : Moyenne d'une liste
?- moyenne(M, [1, 2, 3, 4]).
% Attendu : M = 2.5

% Exemple 4 : Trouver un carré parfait
?- carre(X).
% Attendu : X = 100, puis X = 121, etc.

% Exemple 5 : Trouver un carré magique
?- carre_magique(1,2,3,4,5,6,7,8,9, S).
% Attendu : S = 15

% Exemple 6 : Tester le coloriage
?- coloriage(rouge, jaune, vert, bleu, vert, rouge).
% Attendu : true.
