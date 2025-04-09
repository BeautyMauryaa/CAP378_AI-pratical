% Base Case: Reversing an empty list gives an empty list
reverse_list([], []).

% Recursive Case: Reverse [H|T] = Reverse(T) + [H]
reverse_list([H|T], Reversed) :-
    reverse_list(T, RevT),
    append(RevT, [H], Reversed).
