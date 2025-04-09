move(state(Monkey, Box, on_floor, HasBanana), 
     walk(Monkey, NewPos), 
     state(NewPos, Box, on_floor, HasBanana)).


move(state(Monkey, Monkey, on_floor, HasBanana), 
     push(Monkey, NewPos), 
     state(NewPos, NewPos, on_floor, HasBanana)).


move(state(Pos, Pos, on_floor, HasBanana), 
     climb, 
     state(Pos, Pos, on_box, HasBanana)).


move(state(Pos, Pos, on_box, no), 
     grab, 
     state(Pos, Pos, on_box, yes)).

solve(state(_, _, _, yes), _) :- 
    write('Monkey got the banana!'), nl.

solve(State, Visited) :- 
    move(State, Action, NewState), 
    \+ member(NewState, Visited),  
    write('Action: '), write(Action), nl,
    solve(NewState, [NewState | Visited]).

% Run the problem
start :-
    InitialState = state(at_door, at_window, on_floor, no),
    solve(InitialState, [InitialState]).

