mysplit([],[],[]).
mysplit(L1,L1,[]).
mysplit(L1,[],L1).
mysplit([H1, H2], H1,H2).
mysplit([H1,H2|L1],[H1|L2],[H2|L3]):- mysplit(L1,L2,L3).

