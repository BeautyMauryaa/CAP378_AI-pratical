% Base Case: Sum of an empty list is 0
sum_list([], 0).

% Recursive Case: Sum of list [H|T] = H + sum of T
sum_list([H|T], Sum) :-
    sum_list(T, SubSum),
    Sum is H + SubSum.
