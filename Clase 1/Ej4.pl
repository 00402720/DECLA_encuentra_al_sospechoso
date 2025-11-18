% Animales de granja
 granja(pollo).
 granja(cerdo).
 granja(oveja).
 granja(pasto).
 % Qué come cada uno
 come(pollo, granos).
 come(cerdo, pasto).
 come(oveja, pasto).
 % Regla
 comida(X) :- granja(X), X \= cerdo.
 comida_cerdo(X) :- granja(X), X = pasto.

/*
Query

1. ¿Qué come el cerdo?
come(cerdo,Que).
2. ¿Qué animales son comida del cerdo?
comida_cerdo(Cerdo_come).
3. ¿Es la oveja un animal de granja?
granja(oveja).
*/