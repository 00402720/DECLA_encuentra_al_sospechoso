estudiante(victor).
estudiante(axel).
estudiante(marielos).
estudiante(grecia).

no_es_estudiante(Nombre) :- \+ estudiante(Nombre).

listado_unico(Nombre) :-
    write('Nombre: '), write(Nombre), nl, !.

listado_estudiantes(Nombre) :-
    estudiante(Nombre),
    write('Nombre: '), write(Nombre), nl,
    fail.

consultar_estudiante :-
    write('Ingrese nombre del estudiante: '), read(Nombre),
    (   estudiante(Nombre)
    ->  write('Es estudiante')
    ;   write('No es estudiante')
    ).