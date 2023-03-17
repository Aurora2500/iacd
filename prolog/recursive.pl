factorial(0, 1).
factorial(N, F) :-
  N > 0,
  N1 is N - 1,
  factorial(N1, F1),
  F is N * F1.

nfact(0, []).
nfact(1, [1]).
nfact(N, F) :-
  N > 0,
  N1 is N - 1,
  nfact(N1, FL),
  [F1|_] = FL,
  FN is F1 * N1,
  F = [FN|FL].

% index

index(0, [X|_], X).
index(N, [_|L], R) :-
  N > 0,
  N1 is N - 1,
  index(N1, L, R).
