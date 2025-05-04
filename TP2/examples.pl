% Exemple 1 : Trouver le dernier élément
?- my_last(X, [a,b,c,d]).
% Attendu : X = d.

% Exemple 2 : Trouver l'avant-dernier élément
?- before_last(X, [a,b,c,d]).
% Attendu : X = c.

% Exemple 3 : Trouver le Kième élément
?- element_at(X, [a,b,c,d,e], 3).
% Attendu : X = c.

% Exemple 4 : Compter le nombre d'éléments
?- nb_elt(N, [a,b,c,d]).
% Attendu : N = 4.

% Exemple 5 : Inverser une liste
?- inverse([a,b,c], X).
% Attendu : X = [c,b,a].

% Exemple 6 : Vérifier si une liste est un palindrome
?- palindrome([x,a,m,a,x]).
% Attendu : true.

% Exemple 7 : Aplatir une liste
?- my_flatten([a, [b, [c, d], e]], X).
% Attendu : X = [a, b, c, d, e].

% Exemple 8 : Éliminer les éléments consécutifs
?- compress([a,a,a,a,b,c,c,a,a,d,e,e,e,e], X).
% Attendu : X = [a,b,c,a,d,e].

% Exemple 9 : Empaqueter les éléments consécutifs
?- pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e], X).
% Attendu : X = [[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]].

% Exemple 10 : Encodage des répétitions
?- encode([a,a,a,a,b,c,c,a,a,d,e,e,e,e], X).
% Attendu : X = [[4,a],[1,b],[2,c],[2,a],[1,d],[4,e]].

% Exemple 11 : Encodage modifié
?- encode_modified([a,a,a,a,b,c,c,a,a,d,e,e,e,e], X).
% Attendu : X = [[4,a],b,[2,c],[2,a],d,[4,e]].

% Exemple 12 : Décodage d'une liste encodée
?- decode([[4,a],[1,b],[2,c],[2,a],[1,d],[4,e]], X).
% Attendu : X = [a,a,a,a,b,c,c,a,a,d,e,e,e,e].
