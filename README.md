W załączony Git widnieje opis trzech obrazów na zaliczenie , wybrałem obrazy :
 - Obraz1 - opis samolotu Airbus A380.
 - Obraz6 - opis drzewa dynasti Królowej Elżbiety II.
 - Obraz8 - opis serialowych Przyjaciół z filmu Friends.
 
We wszystkich programach Prolog w pierwszej kolejności opisane są Atomy , kolejnie Fakty oraz Reguły.

Starałem się w każdym programie wykonać procedurę start , aby program automatycznie wyświetlił opis obrazu.

Obraz1

reguły:
plane_left.
plane_right.
plane_front.
plane_back.
plane_do.
plane_have.

start. - opisujący cały obrazek

Obraz6

reguły:
parent(X,Y).
grandmother(X, Y).
grandfather(X, Y).
greatgrandmother(X,Y).
greatgrandfather(X,Y).
great_grandmother.
great_grandfather.
grand_mother.
grand_father.
grandchild.
greatgrandchild.

start. - opisujący cały obrazek

Obraz8

reguły:
drinkstogether(X,Y). 
friends(X). 
couple(X,Y). 
maried(X, Y).

likes.
drinks_together_icecoffe.
drinks_together_icelatte.
friends_name.
couple1.
couple2.

start. - opisujący cały obrazek

