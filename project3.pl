%a) Facts:

affair(steve, jane).
affair(steve, mary).
affair(jane, steve).
affair(mary, steve).
married(tom, jane).
married(jane, jom).
rich(steve).
greedy(john).

hatred(M,N):- affair(M,X), married(N,X).
greed(M,N):- rich(M), greedy(N).

willingToKill(N) :- hatred(M,N); greed(M,N).

/*
b) Possible suspects:
John and Tom
c) Fact to add:
We would need to know if: rich(John)
We would add \+(rich(N)) to the fact greed so that a person needs to be greedy but not rich to become a suspect.
So we would know if John was a possible suspects.
If rich(John) then he is not possible suspect.
*/


numElements(0,[]).
numElements(COUNT,[_|L]):- numElements(COUNT1, L), COUNT is COUNT1+1.

removeElement(X, [X|T], T).
removeElement(X, [H|T], [H|T1]):- removeElement(X, T, T1).

insertElementAt(X,L,1,[X|L]).
insertElementAt(X,[H|L],N,[H|L1]) :- N1 is N - 1, insertElementAt(X,L,N1,L1).
 
segment([],_).
segment([X],[H2|_]) :- X == H2.
segment([H1,H2|X],[H3,H4|Y]) :- H1 == H3, H2 == H4, segmentHelper(X,Y),!.
segment([H1|X],[_|Y]) :- segment([H1|X],Y).
segmentHelper([],_).
segmentHelper([H|X],[H|Y]) :- segmentHelper(X,Y).

addUpList(L1,L2) :- addUpListHelper(L1,L2,0).
addUpListHelper([],[],_).
addUpListHelper([H1|L1],[H2|L2],Acc) :- H2 is H1+Acc, addUpListHelper(L1,L2,H2).

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
  
binaryTree(nil).
binaryTree(t(_,nil,nil)).
binaryTree(t(_,L,R)) :- binaryTree(L), binaryTree(R).

preorder(nil,[]).
preorder(t(X,L,R),[X|Lis]) :- preorder(L,LLis), preorder(R,RLis), append(LLis,RLis,Lis).

leaves(nil,[]).
leaves(t(X,nil,nil),[X]) :- !.
leaves(t(_,L,R),Lis) :- leaves(L,LLis), leaves(R,RLis), append(LLis,RLis,Lis).
  
   
