% TP : Programmation Logique en Prolog

% Exemples de prédicats simples pour la logique

cool(yolanda).
cool(amel).

ecoute2LaMusique(mia).
ecoute2LaMusique(yolanda):- cool(yolanda).

joueAirGuitar(mia):- ecoute2LaMusique(mia).
joueAirGuitar(yolanda):- ecoute2LaMusique(yolanda).

% Requête : Trouver tous les cool
% ?- cool(X).
% Affichera X = yolanda ; X = amel.

% Requête : Trouver si Mia joue à l'air guitar
% ?- joueAirGuitar(mia).
% Affichera true ou false.

% Exemple de l'utilisation de "listing" pour afficher un prédicat défini par l'utilisateur
% ?- listing(cool).
% Affichera : 
% cool(yolanda).
% cool(amel).

% Exemple avec une règle récursive
chemin(3,8).
chemin(3,2).
chemin(5,2).
chemin(5,8).
chemin(5,18).
chemin(5,10).
chemin(5,20).
chemin(7,8).
chemin(12,10).
chemin(12,18).
chemin(13,10).
chemin(13,18).
chemin(15,10).
chemin(15,18).
chemin(15,20).
chemin(17,18).
chemin(19,20).
chemin(4,2).
chemin(6,2).
chemin(4,8).
chemin(6,10).
chemin(6,14).
chemin(6,20).
chemin(14,10).
chemin(11,10).
chemin(11,14).
chemin(11,20).
chemin(16,10).
chemin(16,18).
chemin(14,18).
chemin(16,20).

% Règles récursives pour trouver un chemin
chemin(X, Y) :- connecte(X, Y). % Cas de base
chemin(X, Y) :- connecte(X, Z), chemin(Z, Y). % Cas récursif

% Exemples de requêtes avec chemin :
% Quel est le chemin entre 1 et 2 ?
% ?- chemin(1, 2).
% Affichera true ou false.

% Exemples de requêtes avec différence :
% Quels sont les points accessibles à partir de 1, mais pas 2 ?
% ?- chemin(1, X), X \= 2.
% Affichera tous les points accessibles sauf 2.

% Exemple avec "!" pour obtenir un résultat unique
chemin(X, Y) :- connecte(X, Y), !. % Ajout de "!" pour ne garder qu'un seul résultat possible
