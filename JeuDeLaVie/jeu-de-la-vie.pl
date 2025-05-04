% TP5 : Jeu de la Vie en Prolog - Détection des formes stables

% 1. Calcul du nombre de voisins vivants d'une cellule
nb_voisins_vivants(Grid, X, Y, Nombre) :-
    voisins(X, Y, Voisins),
    count_voisins_vivants(Voisins, Grid, Nombre).

% Trouver les voisins d'une cellule (coordonnées X, Y)
voisins(X, Y, Voisins) :-
    findall((X1, Y1), voisin(X, Y, X1, Y1), Voisins).

% Définir les voisins autour d'une cellule (y compris les bords)
voisin(X, Y, X1, Y1) :-
    X1 is X - 1, Y1 is Y - 1; X1 is X, Y1 is Y - 1; X1 is X + 1, Y1 is Y - 1;
    X1 is X - 1, Y1 is Y; X1 is X + 1, Y1 is Y;
    X1 is X - 1, Y1 is Y + 1; X1 is X, Y1 is Y + 1; X1 is X + 1, Y1 is Y + 1.

% Compter le nombre de voisins vivants
count_voisins_vivants([], _, 0).
count_voisins_vivants([(X, Y) | T], Grid, Nombre) :-
    nth0(Y, Grid, Row),
    nth0(X, Row, Value),
    count_voisins_vivants(T, Grid, NombreRestant),
    (Value = 1 -> Nombre is NombreRestant + 1; Nombre is NombreRestant).

% 2. État suivant d'une cellule (basé sur les règles du Jeu de la Vie)
etat_suivant_cellule(Grid, X, Y, EtatSuivant) :-
    nb_voisins_vivants(Grid, X, Y, NombreVoisins),
    nth0(Y, Grid, Row),
    nth0(X, Row, EtatActuel),
    transition(EtatActuel, NombreVoisins, EtatSuivant).

% Règles de transition du Jeu de la Vie
transition(1, Voisins, 1) :- Voisins = 2; Voisins = 3.  % Cellule vivante
transition(0, Voisins, 1) :- Voisins = 3.               % Cellule morte
transition(1, Voisins, 0) :- (Voisins < 2; Voisins > 3). % Surpopulation ou isolement
transition(0, _, 0).                                    % Cellule morte reste morte

% 3. Recherche de grilles stables
cherche_grille_stable(NbLignes, NbColonnes, Grille) :-
    generate_grille(NbLignes, NbColonnes, Grille),
    stable(Grille, Grille).

% Générer toutes les configurations possibles pour une grille
generate_grille(0, _, []).
generate_grille(NbLignes, NbColonnes, [Ligne | Grille]) :-
    NbLignes > 0,
    generate_ligne(NbColonnes, Ligne),
    NbLignes1 is NbLignes - 1,
    generate_grille(NbLignes1, NbColonnes, Grille).

generate_ligne(0, []).
generate_ligne(NbColonnes, [0 | Ligne]) :-
    NbColonnes > 0,
    NbColonnes1 is NbColonnes - 1,
    generate_ligne(NbColonnes1, Ligne).
generate_ligne(NbColonnes, [1 | Ligne]) :-
    NbColonnes > 0,
    NbColonnes1 is NbColonnes - 1,
    generate_ligne(NbColonnes1, Ligne).

% Vérifier si une grille est stable
stable(Grille, Grille).
stable(Grille, GrilleSuivante) :-
    evolution_grille(Grille, GrilleSuivante),
    \+ evolution_grille(GrilleSuivante, _).

% Appliquer les règles du Jeu de la Vie à une grille
evolution_grille([], []).
evolution_grille([Ligne | Reste], [LigneSuivante | ResteSuivant]) :-
    evolution_ligne(Ligne, LigneSuivante),
    evolution_grille(Reste, ResteSuivant).

% Appliquer les règles du Jeu de la Vie à une ligne
evolution_ligne([], []).
evolution_ligne([Cellule | Reste], [CelluleSuivante | ResteSuivant]) :-
    etat_suivant_cellule([Reste], 0, 0, CelluleSuivante),
    evolution_ligne(Reste, ResteSuivant).

% Afficher une grille
afficher_grille([]).
afficher_grille([Ligne | Reste]) :-
    write(Ligne), nl,
    afficher_grille(Reste).

