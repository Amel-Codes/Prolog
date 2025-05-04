# Prolog – Travaux Pratiques

Ce dépôt contient une collection de travaux pratiques réalisés en **Prolog**, un langage de programmation logique. Ces exercices couvrent des concepts essentiels de la logique déclarative et de la manipulation de structures de données, notamment les listes, les prédicats, les règles récursives et la gestion de contraintes.

---

## Table des matières

- [Description](#description)
- [Exemples de prédicats implémentés](#exemples-de-prédicats-implémentés)
- [Installation et utilisation](#installation-et-utilisation)
- [Structure du projet](#structure-du-projet)
- [Contributions](#contributions)
- [Licences](#licences)
- [Auteur](#auteur)

---

## Description

Ce projet regroupe des exercices pratiques en **Prolog** qui permettent d’explorer diverses facettes de la programmation logique et de la résolution de problèmes complexes. Les TPs abordent des sujets allant de la manipulation de listes simples à la modélisation de problèmes logiques comme le **Jeu de la Vie**, les **Carrés Magiques**, et un **Cluedo simplifié**. 

L'objectif est de développer une compréhension approfondie du langage Prolog et de son approche déclarative à travers l'implémentation de différents types de prédicats et de règles.

---

## Exemples de prédicats implémentés

1. **TP1 : Bases de Prolog**
   - Définition de faits et règles
   - Matching et unification
   - Récursivité simple

2. **TP2 : Manipulation de listes**
   - `my_last/2` : Trouver le dernier élément d'une liste
   - `before_last/2` : Trouver l'avant-dernier élément
   - `nb_elt/2` : Compter le nombre d'éléments dans une liste
   - `inverse/2` : Inverser une liste
   - `compress/2` : Eliminer les éléments consécutifs identiques
   - `encode/2` : Encodage par longueur des répétitions

3. **TP3 : Arithmétique et Contraintes**
   - Calcul de somme et moyenne
   - Détection de carrés parfaits
   - Résolution de carrés magiques
   - Problème de coloriage (Graph Coloring)

4. **TP4 : Cluedo & Jeu de la Vie**
   - Déduction logique pour un jeu de type **Cluedo**
   - Simulation de l'évolution des cellules dans le **Jeu de la Vie**
   - Recherche de grilles stables

---

## Installation et utilisation

### Prérequis

- [SWI-Prolog](https://www.swi-prolog.org/) doit être installé sur votre machine pour exécuter ce projet.
  
### Cloner le dépôt

Pour commencer, clonez ce dépôt sur votre machine locale :

```bash
git clone https://github.com/Amel-Codes/Prolog.git
cd Prolog
