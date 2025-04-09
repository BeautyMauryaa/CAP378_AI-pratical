% Define the initial state
initial_state((0,0)).

% Define the goal state
goal_state((2,_)).
goal_state((_,2)).

% Define possible moves
move((X,Y), (4,Y)) :- X < 4.  % Fill 4-liter jug
move((X,Y), (X,3)) :- Y < 3.  % Fill 3-liter jug
move((X,Y), (0,Y)) :- X > 0.  % Empty 4-liter jug
move((X,Y), (X,0)) :- Y > 0.  % Empty 3-liter jug

% Pour water from 4-liter jug to 3-liter jug
move((X,Y), (X1, Y1)) :-  
    X > 0, Y < 3, 
    Total is X + Y, 
    (Total =< 3 -> (X1 is 0, Y1 is Total); (X1 is Total - 3, Y1 is 3)).

% Pour water from 3-liter jug to 4-liter jug
move((X,Y), (X1, Y1)) :-  
    Y > 0, X < 4, 
    Total is X + Y, 
    (Total =< 4 -> (X1 is Total, Y1 is 0); (X1 is 4, Y1 is Total - 4)).

% Solve the problem using depth-first search
solve(State, Path) :-  
    dfs(State, [State], Path).

dfs(State, Path, Path) :- goal_state(State).  % If goal is reached, return the path

dfs(State, Visited, Path) :-  
    move(State, NewState),  
    \+ member(NewState, Visited),  % Avoid cycles
    dfs(NewState, [NewState | Visited], Path).

% Query to find the solution:
% ?- initial_state(S), solve(S, Path). Explain this  code line by line 