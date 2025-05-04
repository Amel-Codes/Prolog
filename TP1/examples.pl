% Exemple 1 : Vérification des personnes "cool"
?- cool(X).
% Attendu : X = yolanda ; X = amel.

% Exemple 2 : Vérification si Mia joue de la guitare
?- joueAirGuitar(mia).
% Attendu : true ou false.

% Exemple 3 : Afficher tous les chemins
?- chemin(X, Y).
% Attendu : tous les chemins définis dans le fait "chemin/2"

% Exemple 4 : Trouver un chemin sans passer par 2
?- chemin(1, X), X \= 2.
% Affichera tous les points accessibles sauf 2.
