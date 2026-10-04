% Define 'compute' as a postfix operator
:- op(600, yf, compute).

% Predicate to perform operations
Expression compute :-
    Result is Expression,
    write('Arithmetic Result: '), write(Result), nl,
    
    % Performing various infix operations
    Sum is 10 + 5,
    Diff is 10 - 5,
    Prod is 10 * 5,
    Quot is 10 / 5,
    Modulo is 10 mod 3,
    Exp is 2 ** 3,
    
    % Displaying results
    write('10 + 5 = '), write(Sum), nl,
    write('10 - 5 = '), write(Diff), nl,
    write('10 * 5 = '), write(Prod), nl,
    write('10 / 5 = '), write(Quot), nl,
    write('10 mod 3 = '), write(Modulo), nl,
    write('2 ** 3 = '), write(Exp), nl,

    % Comparison Operations
    (10 > 5 -> write('10 > 5 is True'), nl ; write('10 > 5 is False'), nl),
    (10 =:= 10 -> write('10 =:= 10 is True'), nl ; write('10 =:= 10 is False'), nl),
    
    % Logical Operators
    (true, true -> write('Logical AND (true, true) is True'), nl ; write('Logical AND (true, true) is False'), nl),
    (false; true -> write('Logical OR (false; true) is True'), nl ; write('Logical OR (false; true) is False'), nl).
