 % Mamíferos
 mamifero(leon).
 mamifero(vaca).
 mamifero(cabra).
 % Qué come cada animal
 come(leon, carne).
 come(vaca, pasto).
 come(cabra, pasto).
 % Regla
 comida(X) :- mamifero(X), X \= leon.
    
/*
Query

1.¿Qué come el león?  
come(leon, Que).
2. ¿Qué animales son comida del león?
comida(Que).
3. ¿Es la vaca un mamífero?
mamifero(vaca).
*/