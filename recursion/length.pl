% Base Case: Empty list has length 0
list_length([], 0).

% Recursive Case: Length([H|T]) = 1 + Length(T)
list_length([_|T], Length) :-
    list_length(T, SubLength),
    Length is SubLength + 1.
