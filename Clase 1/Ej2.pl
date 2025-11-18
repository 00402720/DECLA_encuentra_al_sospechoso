% Aves
 ave(loro).
 ave(aguila).
 ave(pinguino).
 % Qué come cada ave
 come(loro, semillas).
 come(aguila, carne).
 come(pinguino, pescado).
 % Regla
 comida(X) :- ave(X), X \= aguila.

/*
Query

1. ¿Qué come el pingüino? 
come(pinguino, Que).
2. ¿Qué animales son comida del águila?
comida(X).
3. ¿Es el loro un ave?
ave(loro).
*/