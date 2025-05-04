% TP4 : Jeu d'enquête - Cluedo simplifié

% Faits : suspects, armes, lieux
suspect(moutarde).
suspect(rose).
suspect(leblanc).

arme(couteau).
arme(revolver).
arme(poison).

lieu(salon).
lieu(cuisine).
lieu(bibliotheque).

% Informations complémentaires
% On suppose que Moutarde et Rose ont tous deux un mobile, et que Leblanc n'en a pas.
mobile(moutarde).
mobile(rose).

% On déclare qui peut accéder à quel lieu (pour restreindre les possibilités)
acces(moutarde, salon).
acces(moutarde, bibliotheque).
acces(rose, cuisine).
acces(rose, salon).
acces(leblanc, salon).

% Hypothèse : Si l'arme est "poison", le crime a eu lieu en cuisine.
in(cuisine, Arme) :- Arme = poison.
in(_, Arme) :- Arme \= poison.

% Scénario valide : Détermine si une combinaison suspect-arme-lieu est valide
scenario_valide(Suspect, Arme, Lieu):- 
    arme(Arme),
    lieu(Lieu),
    suspect(Suspect), 
    acces(Suspect, Lieu), % Le suspect doit pouvoir accéder au lieu
    in(Lieu, Arme), % Si l'arme est poison, le lieu doit être la cuisine
    mobile(Suspect). % Le suspect doit avoir un mobile

% Exemple : Trouver tous les scénarios valides
find_valid_scenarios(L) :-
    bagof((Suspect, Arme, Lieu), scenario_valide(Suspect, Arme, Lieu), L).
