mymerge([],[],[]).
mymerge(X, [], X).
mymerge([], Y, Y).
mymerge([H1|T1],[H2|T2],[H|R]):- H1 =< H2, mymerge(T1,[H2|T2],R).
mymerge([H1|T1],[H2|T2],[H|R]):- mymerge([H1|T1],T2,R).