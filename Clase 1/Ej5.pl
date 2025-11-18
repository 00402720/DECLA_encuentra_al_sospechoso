% Animales
 mamifero(leon).
 mamifero(gato).
 ave(aguila).
 domestico(gato).
 % Qué come cada uno
 come(leon, carne).
 come(aguila, carne).
 come(gato, carne).
% Regla
 comida_leon(X) :- (mamifero(X); ave(X)), X \= leon.

/*
Query

1. ¿Qué come el águila?
come(aguila,Que).
2. ¿Qué animales son comida del león?
comida_leon(X).
3. ¿Es el gato un mamífero o un ave?
mamifero(gato).
*/