% Base case: Move a single disk directly from Source to Destination
move(1, Source, Destination, _) :-  
    write('Move disk 1 from '), write(Source), write(' to '), write(Destination), nl.

% Recursive case: Move N disks from Source to Destination using Auxiliary
move(N, Source, Destination, Auxiliary) :-  
    N > 1,
    M is N - 1,
    
    % Move N-1 disks from Source to Auxiliary using Destination as helper
    move(M, Source, Auxiliary, Destination),
    
    % Move the remaining largest disk directly to Destination
    write('Move disk '), write(N), write(' from '), write(Source), write(' to '), write(Destination), nl,
    
    % Move the N-1 disks from Auxiliary to Destination using Source as helper
    move(M, Auxiliary, Destination, Source).

% Query to solve Tower of Hanoi for N disks:
% ?- move(3, left, right, middle).