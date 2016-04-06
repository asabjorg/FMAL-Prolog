leaves(nil,[]).
leaves(t(X,nil,nil),[X]) :- !.
leaves(t(_,L,R),Lis) :- leaves(L,LLis), leaves(R,RLis), append(LLis,RLis,Lis).
