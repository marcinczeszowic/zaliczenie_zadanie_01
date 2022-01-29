% Atomy

icecoffe.
icelatte.
cake.
icecream.
deser.

phoeabe.
chandler.
monica.
reachel.
joey.
ross.

% fakty
food(cake).
food(icecream).
food(deser).

drink(icecoffe).
drink(icelatte).

person(phoeabe).
person(chandler).
person(monica).
person(reachel).
person(joey).
person(ross).

love(lover1,monica).
love(lover1,chandler).
love(lover2,reachel).
love(lover2,ross).



drinks(icecoffe,chandler).
drinks(icecoffe,reachel).
drinks(icecoffe,ross).

drinks(icelatte, monica).
drinks(icelatte, joey).
drinks(icelatte, phoeabe).

% reguły

drinkstogether(X,Y) :- drinks(Y,X).
friends(X) :- person(X).
couple(X,Y) :-love(Y,X).

maried(X, Y) :- couple(X,Z), couple(Y,Z), X\=Y.


likes(joey,phoeabe).
likes(joey,chandler).
likes(joey,monica).
likes(joey,reachel).
likes(joey,ross).
likes(joey,ross).

likes(joey,icecream).
likes(joey,deser).
likes(monica,icecream).
likes(monica,deser).
likes(phoeabe,icecream).
likes(phoeabe,deser).

likes(chandler,icecream).
likes(chandler,deser).
likes(reachel,icecream).
likes(reachel,deser).
likes(ross,icecream).
likes(ross,deser).


a :- likes(X,Y), food(Y), format(' ~w likes ~w\n', [X,Y]),fail. 

b :- drinkstogether(X,icecoffe), format(' ~w\n', [X]),fail.	

c :- drinkstogether(X,icelatte), format(' ~w\n', [X]),fail.

d :- friends(X), format(' ~w\n', [X]),fail.

e :- love(lover1,X), format(' ~w\n', [X]),fail.
f :- love(lover2,X), format(' ~w\n', [X]),fail.

Start :- write('On the picture 8 we will see: '),nl,
	  write('Friends with name: '),nl,
	d;
	write('First three friends drink together icecoffe'),nl,
	fail, nl;
	b;
	write('Second three friends drink together icelatte'),nl,
	fail, nl;
	c;
    write('Here are two married couple'),nl,
    fail, nl;
    e;
    write('and'),nl,
    f;
    write('Everybady likes...'),nl,
    a.
















