%
%       GENERADOR DE HORARIOS DE CLASE
%

asignatura(mat).
asignatura(len).
asignatura(nat).
asignatura(bio).


diferente(A,B,C,D) :-
    dif(A,B),
    dif(A,C),
    dif(A,D),
    dif(B,C),
    dif(B,D),
    dif(C,D).

horario(L1,L2,L3,L4, M1,M2,M3,M4, X1,X2,X3,X4) :-
    % LUNES
    asignatura(L1), dif(L1,mat), % Los lunes a primera no puede haber matemáticas.
    asignatura(L2),
    asignatura(L3),
    asignatura(L4),
    diferente(L1,L2,L3,L4), % No puede repetirse una asignatura el mismo día.
    (L3 == nat; L4 == nat), % Naturales debe darse los lunes a tercera o cuarta hora.
    % MARTES
    asignatura(M1),
    asignatura(M2),
    asignatura(M3),
    asignatura(M4),
    diferente(M1,M2,M3,M4),
    % MIÉRCOLES
    asignatura(X1),
    asignatura(X2),
    asignatura(X3),
    asignatura(X4),
    diferente(X1,X2,X3,X4).


go(L1,L2,L3,L4,M1,M2,M3,M4,X1,X2,X3,X4) :-
    horario(L1,L2,L3,L4,M1,M2,M3,M4,X1,X2,X3,X4),
    writeln(" L   M   X"),
    writeln("-----------"),
    write(L1),
    write(" "),
    write(M1),
    write(" "),
    writeln(X1),
    
    write(L2),
    write(" "),
    write(M2),
    write(" "),
    writeln(X2),
    
    write(L3),
    write(" "),
    write(M3),
    write(" "),
    write(X3),
    writeln(" "),

    write(L4),
    write(" "),
    write(M4),
    write(" "),
    write(X4),
    writeln(" "),
    writeln(" ").

go :- go(_,_,_,_,_,_,_,_,_,_,_,_).

% Añadiremos las asignaturas de música (mus) e inglés (ing).
% Añadiremos también el jueves.
% A primera hora nunca puede haber ni matemáticas ni lengua.
% Los jueves siempre debe haber una hora de música.
% Matemáticas y lengua no debe coincidir el mismo día. Podemos utilizar el operador \+ para negar una condición.

asignatura4(mus).
asignatura4(ing).
asignatura4(A) :- asignatura(A).

tiene_asignatura(A, T1, T2, T3, T4) :-
    (A == T1; A == T2; A == T3; A == T4).

horario4(L1,L2,L3,L4, M1,M2,M3,M4, X1,X2,X3,X4, J1,J2,J3,J4) :-
    % LUNES
    asignatura4(L1), dif(L1,mat), dif(L1,len), % Los lunes a primera no puede haber matemáticas ni lengua.
    asignatura4(L2),
    asignatura4(L3),
    asignatura4(L4),
    diferente(L1,L2,L3,L4), % No puede repetirse una asignatura el mismo día.
    (L3 == nat; L4 == nat), % Naturales debe darse los lunes a tercera o cuarta hora.
    \+ (tiene_asignatura(mat, L1,L2,L3,L4), tiene_asignatura(len, L1,L2,L3,L4)), % No puede haber matemáticas ni lengua el mismo día.
    % MARTES
    asignatura4(M1), dif(M1,mat), dif(M1,len), % Los martes a primera no puede haber matemáticas ni lengua.
    asignatura4(M2),
    asignatura4(M3),
    asignatura4(M4),
    diferente(M1,M2,M3,M4),
    \+ (tiene_asignatura(mat, M1,M2,M3,M4), tiene_asignatura(len, M1,M2,M3,M4)), % No puede haber matemáticas ni lengua el mismo día.
    % MIÉRCOLES
    asignatura4(X1), dif(X1,mat), dif(X1,len), % Los miércoles a primera no puede haber matemáticas ni lengua.
    asignatura4(X2),
    asignatura4(X3),
    asignatura4(X4),
    diferente(X1,X2,X3,X4),
    \+ (tiene_asignatura(mat, X1,X2,X3,X4), tiene_asignatura(len, X1,X2,X3,X4)), % No puede haber matemáticas ni lengua el mismo día.
    % JUEVES
    asignatura4(J1), dif(J1,mat), dif(J1,len), % Los jueves a primera no puede haber matemáticas ni lengua.
    asignatura4(J2),
    asignatura4(J3),
    asignatura4(J4),
    diferente(J1,J2,J3,J4),
    \+ (tiene_asignatura(mat, J1,J2,J3,J4), tiene_asignatura(len, J1,J2,J3,J4)), % No puede haber matemáticas ni lengua el mismo día.
    tiene_asignatura(mus, J1, J2, J3, J4). % El jueves debe haber una hora de música.

go4(L1,L2,L3,L4,M1,M2,M3,M4,X1,X2,X3,X4,J1,J2,J3,J4) :-
    horario4(L1,L2,L3,L4,M1,M2,M3,M4,X1,X2,X3,X4,J1,J2,J3,J4),
    writeln(" L   M   X   J"),
    writeln("---------------"),
    write(L1),
    write(" "),
    write(M1),
    write(" "),
    write(X1),
    write(" "),
    writeln(J1),
    
    write(L2),
    write(" "),
    write(M2),
    write(" "),
    write(X2),
    write(" "),
    writeln(J2),
    
    write(L3),
    write(" "),
    write(M3),
    write(" "),
    write(X3),
    write(" "),
    writeln(J3),

    write(L4),
    write(" "),
    write(M4),
    write(" "),
    write(X4),
    write(" "),
    writeln(J4),
    writeln(" ").

go4 :- go4(_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_).


