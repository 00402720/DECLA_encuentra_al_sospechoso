/*
vive_en(Persona, Lugar).
trabaja_en(Persona, Profesion).
padre(Padre, Hijo). / madre(Madre, Hijo).
casado_con(Persona1, Persona2).
hijo(Hijo, Padre).
amigo(Persona1, Persona2).
primo(Persona1, Persona2).
*/

vive_en(don_ernesto, valle_verde).
vive_en(carlos, ciudad).
vive_en(ana, valle_verde).
vive_en(lucia, ciudad).
vive_en(ricardo, ciudad).
vive_en(miguel, valle_verde).
vive_en(dona_carmen, valle_verde).
vive_en(isabela, ciudad).
vive_en(don_felipe, ciudad).
vive_en(A,X) :- casado(A,B), vive_en(B,X), !.


casado(don_ernesto, dona_teresa).
casado(carlos, sofia).
casado(ridardo, laura).
casado(miguel, rosa).
casado(A,B) :- casado(B,A), !.

trabaja_en(don_ernesto, profesor).
trabaja_en(dona_teresa, enfermera).
trabaja_en(carlos, ing_civil).
trabaja_en(sofia, arquitecta).
trabaja_en(ana, profesora).
trabaja_en(lucia, medicina).
trabaja_en(ricardo, abogado).
trabaja_en(laura, bibliotecaria).
trabaja_en(miguel,agricultor).
trabaja_en(rosa, ventas).
trabaja_en(fernanda, biologia).
trabaja_en(dona_carmen, partera).
trabaja_en(isabel, derecho).
trabaja_en(don_felipe, ventas).

hijo(carlos, don_ernesto).
hijo(ana, don_ernesto).
hijo(lucia, don_ernesto).
hijo(mateo, carlos).
hijo(valeria, carlos).
hijo(andres, ana).
hijo(daniel, ricardo).
hijo(fernanda, miguel).
hijo(joaquin, don_felipe).
hijo(A,B) :- casado(B,C) , hijo(A,C), !.

padre(A,B) :- hijo(B,A), !.
madre(A,B) :- hijo(B,A), !.

primo(ana, daniel).
primo(fernanda, andres).
primo(fernanda, mateo).
primo(fernanda, valeria).
primo(A,B) :- primo(B,A) ,!.

amigo(carlos, ricardo).
amigo(daniel,mateo).
amigo(dona_carmen, teresa).
amigo(isabel, fernanda).
amigo(don_felipe, miguel).
amigo(joaquin, andres).
amigo(A,B) :- amigo(B,A), !.

abuelo(dona_carmen, isabel).
abuelo(Nieto, Abuelo) :- hijo(Nieto, Padre), hijo(Padre, Abuelo), !.

hermano(A,B) :- hijo(A, X) :- hijo(B,X), !.

tio(Sobrino, Tio) :- hijo(Sobrino, Padre), hermano(Padre, Tio), !.

%Amigo de un primo


/* Consultas
hijo(X, don_ernesto).

abuelo(mateo, X).




*/
