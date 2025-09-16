%Ejercicio de clase
/*
							              Crono
                              |
                             Rea
                              |
                             Zeus
                     		      |
                     --------------------
                   Hades			        Poseidon
                     |					         |
                   Ares				        Hefesto

*/
arbol(crono,arbol(rea,arbol(zeus,arbol(hades,arbol(ares,nil,nil),nil),arbol(poseidon,arbol(hefesto,nil,nil),nil)),nil),nil).

/*
							               Odin
                              |
                            Frigg
                              |
                            Thor
                     		      |
                     --------------------
                   Baldur			         Hodr
                     |					        |
                   Magni			         Modi

*/
arbol(odin,arbol(frigg,arbol(thor,arbol(baldur,arbol(magni,nil,nil),nil),arbol(hodr,arbol(modi,nil,nil),nil)),nil),nil).

/* Soluciones */
%preorden(arbol(crono,arbol(rea,arbol(zeus,arbol(hades,arbol(ares,nil,nil),nil),arbol(poseidon,arbol(hefesto,nil,nil),nil)),nil),nil),L).
%postorden(arbol(odin,arbol(frigg,arbol(thor,arbol(baldur,arbol(magni,nil,nil),nil),arbol(hodr,arbol(modi,nil,nil),nil)),nil),nil),L).


% Preorden (Raíz – Izq – Der)
preorden(nil, []).
preorden(arbol(X,Izq,Der), L) :-
preorden(Izq, L1),
preorden(Der, L2),
append([X|L1], L2, L).

% Postorden (Izq – Der – Raíz)
postorden(nil, []). 
postorden(arbol(X,Izq,Der), L) :-
postorden(Izq, L1),
postorden(Der, L2),
append(L1, L2, L3), %Concatena listas
append(L3, [X], L).

