% Personas presentes
persona(alice).
persona(robert).
persona(clara).
persona(james).

% Relaciones
esposo(alice, lord_henry).
sobrina(clara, lord_henry).
socio(james, lord_henry).
empleado(robert, lord_henry).

% Motivos (quién podría tener razones)
motivo(alice, herencia).
motivo(robert, maltrato).
motivo(clara, deuda).
motivo(james, negocios).

% Medios (quién tuvo acceso al arma)
acceso(alice, veneno).
acceso(robert, cuchillo).
acceso(clara, cuerda).
acceso(james, pistola).

% Oportunidad (quién estuvo en la biblioteca)
estuvo(alice, sala).
estuvo(robert, cocina).
estuvo(clara, biblioteca).
estuvo(james, estudio).

% Arma utilizada
arma(cuerda).

/* Reglas */
sospechoso(X) :- motivo(X,_).
en_biblioteca(X) :- estuvo(X, biblioteca).
motivo_oportunidad(X) :- en_biblioteca(X), sospechoso(X).
uso_arma_confirmada(X, Y) :- acceso(X, Y), arma(Y).
culpable(X) :- acceso(X, cuerda), motivo_oportunidad(X).