/*
Refiye Şehnaz Yıldırım
171805012
Final Exam source code 
23.01.2021
*/

% father(X, Y): X is Y's father.
father(ahmet,hasan).
father(ahmet,mustafa).

father(hasan,kadriye).
father(hasan,necibe).
father(hasan,veysel).

father(veysel,selehattin).
father(veysel,ekrem).
father(veysel,adalet).

% mother(X, Y): X is Y's mother.
mother(kadriye,gülcenaz).
mother(kadriye,şehnaz).
mother(kadriye,kainat).

mother(necibe,serhat).
mother(necibe,ercan).
mother(necibe,ergün).
mother(necibe,bilal).

% male(X): X is male.
male(ahmet).
male(mustafa).
male(hasan).
male(veysel).
male(selehattin).
male(ekrem).
male(serhat).
male(ercan).
male(ergün).
male(bilal).

% female(X): X is female.
female(kadriye).
female(gülcenaz).
female(şehnaz).
female(kainat).
female(necibe).
female(adalet).

% parent(X, Y): X is the parent of Y if he is father or mother of Y.
parent(X, Y):- father(X, Y); mother(X, Y).

% brother(X,Y): X is the brother of Y if he is male and has the same parents(Z) as the Y. 
brother(X,Y) :-  male(X),parent(Z,X),parent(Z,Y), not(X = Y).
% sister(X,Y): X is the sister of Y if she is female and has the same parents(Z) as the Y. 
sister(X,Y) :- female(X),parent(Z,X),parent(Z,Y), not(X = Y).
% uncle(X,Y): X is the uncle of Y if he is male and Z(parent of Y)'s brother.
uncle(X,Y) :-  male(X),brother(X,Z),parent(Z,Y).

% granduncle(X,Y): X is the grand uncle of Y if he is male and Y's father's(Z) uncle.
grand_uncle(X,Y) :- male(X), father(Z,Y), uncle(X,Z).
% granduncle(X,Y): X is the grand uncle of Y if he is male and Y's mother's(Z) uncle.
grand_uncle(X,Y) :- male(X), mother(Z,Y), uncle(X,Z).
