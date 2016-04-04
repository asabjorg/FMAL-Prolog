

a) Facts:

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

willingToKill :- hatred(M,N); greed(M,N).

/*
b) Possible suspects:
Jonn and Tom

c) Fact to add:
We would need to know if: rich(John)
So we would know if John was a possible suspects.
If rich(John) then he is not possible suspect.
*/






