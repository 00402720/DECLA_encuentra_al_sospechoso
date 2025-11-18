% Animales domésticos
 domestico(perro).
 domestico(gato).
 domestico(conejo).
 % Qué come cada uno
 come(perro, carne).
 come(gato, carne).
 come(conejo, zanahoria).
 % Regla
 comida(X) :- domestico(X), X \= gato.

/*
Query

1. ¿Qué come el conejo? 
come(conejo,Que).
2. ¿Qué animales son comida del gato? 
comida(X).
3. ¿Es el perro un animal doméstico?
domestico(perro).
*/