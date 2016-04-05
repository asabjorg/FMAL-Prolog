addUpList(L1,L2) :- addUpListHelper(L1,L2,0).
addUpListHelper([],[],_).
addUpListHelper([H1|L1],[H2|L2],Acc) :- H2 is H1+Acc, addUpListHelper(L1,L2,H2).