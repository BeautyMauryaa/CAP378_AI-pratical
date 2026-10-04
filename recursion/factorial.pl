% Base Case: Factorial of 0 is 1
factorial(0, 1).

% Recursive Case: N! = N * (N-1)!
factorial(N, Result) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, SubResult),
    Result is N * SubResult.
