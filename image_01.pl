% Atomy

engine.
lamp.
wheels.
wings.
horizontalstabilizer.
windows.
white.
blue.
verticalstabilizer.
fly.
dors.
cocpit.
takeoff.
landing.



% fakty
have(engine).
have(lamp).
have(wheels).
have(verticalstabilizer).
have(windows).
have(horizontalstabilizer).
have(wings).
have(dors).
have(cocpit).


isthere(white).
isthere(blue).

can(fly).
can(takeoff).
can(landing).

% reguły
aeroplane(onTheleft,engine).
aeroplane(onTheleft,wheels).
aeroplane(onTheleft,lamp).
aeroplane(onTheleft,windows).
aeroplane(onTheleft,verticalstabilizer).
aeroplane(onTheleft,wings).
aeroplane(onTheleft,dors).

aeroplane(onTheRight,engine).
aeroplane(onTheRight,wheels).
aeroplane(onTheRight,lamp).
aeroplane(onTheRight,windows).
aeroplane(onTheRight,verticalstabilizer).
aeroplane(onTheRight,wings).
aeroplane(onTheRight,dors).

aeroplane(fromtheFront,windows).
aeroplane(fromtheFront,cocpit).


aeroplane(theBack,horizontalstabilizer).
aeroplane(theBack,verticalstabilizer).





a :- aeroplane(onTheleft,Y), have(Y), format(' ~w\n', [Y]),fail. 
b :- aeroplane(onTheRight,Y), have(Y), format(' ~w\n', [Y]),fail. 
c :- aeroplane(fromtheFront,Y), have(Y), format(' ~w\n', [Y]),fail. 
d :- aeroplane(theBack,Y), have(Y), format(' ~w\n', [Y]),fail.
e :- can(X), format(' ~w\n',[X]),fail.
f :- isthere(X), format(' ~w\n',[X]),fail.


start :- write('On the picture 1 we will see:'),nl,
    write('---Airbus A380--- with details:'),nl,
    write('The plane on the left side has:'),nl,
    a;
    write('The plane on the Right side has:'),nl,
	b;
	write('In front of the plane is:'),nl,
    c;
    write('on the back of the plane is:'),nl,
    d;
    write('This plane can:'),nl,
    e;
    write('Color of this plane is:'),nl,
    f.