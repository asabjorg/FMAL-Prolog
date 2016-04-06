mymerge([],[],[]).
mymerge(X,[],X).
mymerge([],Y,Y).
mymerge([H1|T1],[H2|T2],[H1|R]):- H1 =< H2,mymerge(T1,[H2|T2],R), !.
mymerge([H1|T1],[H2|T2],[H2|R]):- H1 > H2,mymerge([H1|T1],T2,R).

mysplit([],[],[]).
mysplit([L1],[L1],[]).
mysplit([H1,H2|L1],[H1|L2],[H2|L3]):- mysplit(L1,L2,L3).

mysort([],[]).
mysort([L1],[L1]).
mysort([H1,H2|L1],L2) :- mysplit([H1,H2|L1],M,N), mysort(M,S1),mysort(N,S2),mymerge(S1,S2,L2).
