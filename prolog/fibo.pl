fibo(0,1).
fibo(1,1).
fibo(N,F) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fibo(N1,F1),
    fibo(N2,F2),
    F is F1 + F2.

fiboL(1, [1]).
fiboL(2, [1, 1]).
fiboL(N, L) :-
    N > 1,
    N1 is N - 1,
    fiboL(N1, L1),
    [F1,F2|_] = L1,
    F is F1+F2,
    L = [F|L1].

% Fibonacci sums the last two numbers
% Generic fibonacci shall sum the last K numbers!

sum([], 0).
sum([X|L], R) :-
    sum(L, X1),
    R is X+X1.

firstN(0,_,[]).
firstN(N,L,R) :-
    N > 0,
    N1 is N - 1,
    [X|L1] = L,
    firstN(N1,L1, R1),
    R = [X|R1].

repeat(_,0,[]).
repeat(X,N,L) :-
    N > 0,
    N1 is N-1,
    repeat(X,N1,L1),
    L = [X|L1].

genfibo(_,0,[]).
genfibo(K,N,L) :-
    K > 2,
    N > 0,
    (
        (K >= N, repeat(1,N,L));
        (
            N1 is N-1,
            genfibo(K,N1,L1),
            firstN(K,L1,SL),
            sum(SL,F),
            L = [F|L1]
        )
    ),!.