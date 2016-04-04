numElements(0,[]).
numElements(C,[H|T]) :- size(T,C1), C is C1 + 1.