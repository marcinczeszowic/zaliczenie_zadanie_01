% Atomy
elizabeth.
philip.
carol.
camilla.
mark.
anna.
andriew.
sarah.
william.
kate.
henry.
eugenie.
beatrice.
george.
charlotte.

% fakty
person(elizabeth).
person(philip).
person(carol).
person(camilla).
person(mark).
person(anna).
person(andriew).
person(sarah).
person(william).
person(kate).
person(henry).
person(eugenie).
person(beatrice).
person(george).
person(charlotte).


female(elizabeth).
female(camilla).
female(anna).
female(sarah).
female(kate).
female(eugenie).
female(beatrice).
female(charlotte).


male(philip).
male(carol).
male(mark).
male(andriew).
male(william).
male(henry).
male(george).



queen(elizabeth).

child(carol,elizabeth).
child(carol,philip).
child(anna,elizabeth).
child(anna,philip).
child(andriew,elizabeth).
child(andriew,philip).
child(mark,elizabeth).
child(mark,philip).
child(camilla,elizabeth).
child(camilla,philip).

child(william,carol).
child(william,camilla).
child(henry,carol).
child(henry,camilla).

child(george,william).
child(george,kate).
child(charlotte,william).
child(charlotte,kate).

child(beatrice,andriew).
child(beatrice,sarah).
child(eugenie,andriew).
child(eugenie,sarah).

% reguły
parent(X,Y) :- child(Y,X).

grandmother(X, Y) :- female(Y), parent(Z, X), parent(Y, Z).
grandfather(X, Y) :- male(Y), parent(Z, X), parent(Y, Z).

greatgrandmother(X,Y):- parent(X, Y), grandmother(Z, Y),queen(X),format(' ~w\n',[Z]),fail.
greatgrandfather(X,Y):- parent(X, Y), grandfather(Z, Y),male(X),format(' ~w\n',[Z]),fail.

great_grandmother:- parent(X, Y), grandmother(Z, Y),queen(X),format(' ~w is greatgrandmother ~w \n',[X,Z]),fail.
great_grandfather:- parent(X, Y), grandfather(Z, Y),male(X),format(' ~w is greatgrandfather ~w \n',[X,Z]),fail.
grand_mother :- female(Y), parent(Z, X), parent(Y, Z),format(' ~w is grandmother ~w\n',[Y,X]),fail.
grand_father :- male(Y), parent(Z, X), parent(Y, Z),format(' ~w is grandfather ~w\n',[Y,X]),fail.
grandchild:- grandmother(X, Y),queen(Y),format(' ~w is ~w and Philip grandchild \n',[X,Y]),fail.
greatgrandchild:- parent(X, Y), grandfather(Z, Y),female(X),queen(X),format(' ~w is ~w and Philip greatgrandchild\n',[Z,X]),fail.

parent_1 :- parent(X,Y),person(X),queen(X),format(' ~w is a Elizabeth and Philip child \n',[Y]),fail.



start:- write('On the picture 6 we will see : '),nl,
    write('Elizabeth II with hierarchy : '),nl,
    parent_1;
    write(' ------------'),nl,
    grandchild;
    write(' ------------'),nl,
    greatgrandchild;
    write(' ------------'),nl,
    great_grandmother;
    write(' ------------'),nl,
    grand_mother;
    write(' ------------'),nl,
    great_grandfather;
    write(' ------------'),nl,
    grand_father.

