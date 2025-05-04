% TP2 : Manipulation des listes en Prolog

% Question 1 : Trouver le dernier élément d'une liste
my_last(X,[X]). 
my_last(X,[_|Q]):- my_last(X,Q).

% Question 2 : Trouver l'avant-dernier élément d'une liste
before_last(X,[X,_]).
before_last(X,[_|Q]):- before_last(X,Q).

% Question 3 : Trouver le Kième élément d'une liste
element_at(X,[X|_],1).
element_at(X,[_|Q],K) :- element_at(X,Q,K1), K is K1+1.

element_at2(X,[X|_],1).
element_at2(X,[_|Q],K) :- K>1, K1 is K-1, element_at2(X,Q,K1).

% Question 4 : Trouver le nombre d'éléments d'une liste
nb_elt(0,[]).
nb_elt(N,[_|Q]):- nb_elt(N1,Q), N is N1+1.

% Variante avec accumulateur
nb_elt_Acc([], N, N). % A la fin, N est le nombre total d'éléments
nb_elt_Acc([_|Q], N, R) :- N1 is N+1, nb_elt_Acc(Q, N1, R).

% Question 5 : Inverser une liste
inverse([X,Y], [Y,X]).
inverse([X|Q], L) :- inverse(Q, L1), append(L1,[X],L).

% Variante avec accumulateur pour l'inversion
inverseAcc([], L, L). % La liste est vide, on retourne L
inverseAcc([T|Q], L, Acc) :- inverseAcc(Q, L, [T|Acc]).
inverse2(X, L) :- inverseAcc(X, L, []).

% Question 6 : Vérifier si une liste est un palindrome
palindrome(L) :- inverse(L, L).
palindrome2(L) :- inverse2(L, L).

% Question 7 : "Aplatir" une liste composée d'éléments qui sont des listes
my_flatten([], []).
my_flatten([H|T], L) :- is_list(H), my_flatten(H, L1), my_flatten(T, L2), append(L1, L2, L).
my_flatten([H|T], [H|L]) :- \+ is_list(H), my_flatten(T, L).

% Question 8 : Éliminer les éléments consécutifs identiques d'une liste
compress([], []).
compress([X], [X]).
compress([X,X|T], L) :- compress([X|T], L).
compress([X,Y|T], [X|L]) :- X \= Y, compress([Y|T], L).

% Question 9 : Empaqueter les éléments consécutifs dans des sous-listes
pack([], []).
pack([X], [[X]]).
pack([X,X|T], [[X|L]|T1]) :- pack([X|T], [L|T1]).
pack([X,Y|T], [[X]|L]) :- X \= Y, pack([Y|T], L).

% Question 10 : Encodage par longueur des répétitions
encode([], []).
encode([X], [[1,X]]).
encode([X,X|T], [[N,X]|T1]) :- encode([X|T], [[N1,X]|T1]), N is N1 + 1.
encode([X,Y|T], [[1,X],[1,Y]|T1]) :- X \= Y, encode([Y|T], T1).

% Question 11 : Encodage modifié des répétitions
encode_modified([], []).
encode_modified([X], [X]).
encode_modified([X,X|T], [[N,X]|T1]) :- encode_modified([X|T], [[N1,X]|T1]), N is N1 + 1.
encode_modified([X,Y|T], [X|L]) :- X \= Y, encode_modified([Y|T], L).

% Question 12 : Décodage des listes encodées
decode([], []).
decode([[N,X]|T], L) :- decode(T, L1), append([X], L1, L).

