/* Operadores Aritméticos */
%-Ejercicio 1: Cálculo de área y perímetro - Crear predicado rectangulo/3.
rectangulo :-
    write('Ancho: '), read(Ancho),
    write('Alto: '), read(Alto),
    write('Calculo: 1. Área   2. Perímetro'), read(Calculo),
    (Calculo is 1 ->  (is(Ans,*(Ancho, Alto)), write('El área es: '));
    	(is(Ans,+(Ancho, Alto)),write('El perimetro es: '))),
    write(Ans).

rectangulo(Ancho, Alto, Ans) :-
    write('Area: '), Ans is *(Ancho, Alto), write(Ans), nl,
    write('Perimetro: '), Ans2 is +(Ancho, Alto), write(Ans2), nl.

%- Ejercicio 2: Número par o impar - Crear predicado par_impar/1.
par_impar :-
    write('El numero a evaluar es: '), read(Valor),
    is(Ans,mod(Valor,2)),
    Ans == 1 -> write('El numero es impar'); write('El numero es par').

par_impar(Val) :-
    is(Ans,mod(Val,2)),
	Ans == 1 -> write('El numero es impar'); write('El numero es par').

%- Ejercicio 3: Tabla de multiplicar - Crear predicado tabla_multiplicar/1


tabla_multiplicar :-
    write('Obtener la tabla de multiplicar del numero: '), read(Valor),!,
    between(1,10,R),
    write(Valor*R), write('= '), Ans is Valor * R, write(Ans), nl, fail.

tabla_multiplicar(Val) :-
    between(1,10,R),
    write(Val*R), write('= '), Ans is Val * R, write(Ans), nl, fail.

/*  Operadores Relacionales */
%- Ejercicio 4: Mayor de dos números - Crear predicado mayor/3.
mayor :-
    write('Valor 1: '), read(Val1),
    write('Valor 1: '), read(Val2),
    is(Ans,max(Val1,Val2)),
    write('El valor mayor es: '), write(Ans).