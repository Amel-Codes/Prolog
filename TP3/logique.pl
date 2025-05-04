% TP3 : Logique et contraintes en Prolog

% Question 1 : Compter les éléments d'une liste avec un accumulateur
nb_elt_Acc([], N, N).
nb_elt_Acc([_|B], N, R) :- N1 is N + 1, nb_elt_Acc(B, N1, R).

% Question 2 : Somme des éléments d'une liste
somme([], Acc, Acc).
somme([X|B], Acc, S) :- Acc1 is Acc + X, somme(B, Acc1, S).

% Question 3 : Calculer la moyenne d'une liste
moyenne(M, L) :- somme(L, 0, S), nb_elt_Acc(L, 0, N), N > 0, M is S / N.

% Question 4 : Trouver les carrés parfaits entre 100 et 1000
carre(X) :- between(100, 1000, Y), X =:= Y * Y.

% Question 5 : Carré magique (Somme des lignes, colonnes, et diagonales égale)
tous_differents([]).
tous_differents([T|Q]) :- \+ member(T, Q), tous_differents(Q).

carre_magique(A, B, C, D, E, F, G, H, I, S) :-
    between(0, 9, A), between(0, 9, B), between(0, 9, C),
    between(0, 9, D), between(0, 9, E), between(0, 9, F),
    between(0, 9, G), between(0, 9, H), between(0, 9, I),
    tous_differents([A, B, C, D, E, F, G, H, I]),
    S is A + B + C,
    S is D + E + F,
    S is G + H + I,
    S is A + D + G,
    S is B + E + H,
    S is C + F + I, !.

% Question 6 : Problème de coloriage de régions (graphes)
couleur(rouge).
couleur(jaune).
couleur(vert).
couleur(bleu).

coloriage(A, B, C, D, E, F) :-
    couleur(A), couleur(B), couleur(C), couleur(D),
    couleur(E), couleur(F),
    A \= B, A \= E, A \= C, A \= F,
    B \= D, B \= E, B \= C, B \= F,
    C \= F, C \= D,
    E \= F.
