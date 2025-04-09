% Facts: Symptoms associated with diseases
disease(flu) :- symptom(fever), symptom(cough), symptom(headache).
disease(cold) :- symptom(cough), symptom(sneezing), symptom(runny_nose).
disease(malaria) :- symptom(fever), symptom(chills), symptom(sweating).
disease(typhoid) :- symptom(fever), symptom(abdominal_pain), symptom(fatigue).
disease(covid19) :- symptom(fever), symptom(cough), symptom(loss_of_taste), symptom(shortness_of_breath).

% Asking user for symptoms
ask_symptom(S) :-
    write('Do you have '), write(S), write('? (yes/no): '),
    read(Reply), nl,
    (Reply == yes -> assert(symptom(S)); true).

% Diagnosis based on user input
diagnose :-
    retractall(symptom(_)),  % Clear previous session symptoms
    write('Medical Diagnosis System'), nl,
    write('Answer the following questions:'), nl,
    ask_symptom(fever),
    ask_symptom(cough),
    ask_symptom(headache),
    ask_symptom(sneezing),
    ask_symptom(runny_nose),
    ask_symptom(chills),
    ask_symptom(sweating),
    ask_symptom(abdominal_pain),
    ask_symptom(fatigue),
    ask_symptom(loss_of_taste),
    ask_symptom(shortness_of_breath),
    
    (   disease(Disease) 
    ->  write('You may have: '), write(Disease), nl
    ;   write('No matching disease found. Consult a doctor.'), nl
    ).

% Start the diagnosis
start :-
    diagnose. 

?- start.
