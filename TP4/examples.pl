% Exemple 1 : Trouver tous les scénarios valides
?- find_valid_scenarios(L).
% Attendu : L = [(moutarde, couteau, salon), (moutarde, couteau, bibliotheque), 
%               (rose, revolver, salon), (rose, couteau, salon), 
%               (rose, couteau, cuisine)].

% Exemple 2 : Vérifier un scénario spécifique
?- scenario_valide(rose, couteau, cuisine).
% Attendu : false (rose ne peut pas être dans la cuisine avec un couteau)

?- scenario_valide(moutarde, poison, cuisine).
% Attendu : true (Moutarde peut être dans la cuisine avec du poison)

% Exemple 3 : Vérifier tous les scénarios possibles
?- find_valid_scenarios(L).
% Attendu : L = [(moutarde, couteau, salon), (moutarde, couteau, bibliotheque), 
%               (rose, couteau, salon), (rose, couteau, cuisine), 
%               (rose, revolver, salon)].
