insertElementAt(X,L,1,[X|L]).
insertElementAt(X,[H|L],N,[H|L1]) :- 
   N1 is N - 1, insertElementAt(X,L,N1,L1).
