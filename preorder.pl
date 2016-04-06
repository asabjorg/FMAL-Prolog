preorder(nil,[]).
preorder(t(X,L,R),[X|Lis]) :- preorder(L,LLis), preorder(R,RLis), append(LLis,RLis,Lis).
