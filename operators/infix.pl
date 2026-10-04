% Custom infix operators
:- op(500, xfy, plus).
:- op(500, xfy, minus).
:- op(500, xfy, times).
:- op(500, xfy, divided_by).
:- op(500, xfy, greater_than).
:- op(500, xfy, less_than).

% Defining rules using these operators
X plus Y :- Z is X + Y, write(Z).
X minus Y :- Z is X - Y, write(Z).
X times Y :- Z is X * Y, write(Z).
X divided_by Y :- Z is X / Y, write(Z).
X greater_than Y :- X > Y, write('True').
X less_than Y :- X < Y, write('True').

% Logical operators example
logic_test :- (5 > 3, 10 =:= 10) -> write('Condition is true'); write('Condition is false').

% Query examples
run_tests :- 
    write('Arithmetic Operators:'), nl,
    10 plus 5, nl,
    15 minus 5, nl,
    6 times 3, nl,
    10 divided_by 2, nl,
    write('Comparison Operators:'), nl,
    10 greater_than 5, nl,
    5 less_than 10, nl,
    write('Logical Operators:'), nl,
    logic_test, nl.
