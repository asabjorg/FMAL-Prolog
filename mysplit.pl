mysplit([],[],[]).
mysplit(L2,[],L2).
mysplit(L1,L1,[]).
mysplit([[H1,H2]|L1],[H3|L2],[H4|L3]):- H1 = H3, H2 = H4, mysplit(L1,L2,L3).

