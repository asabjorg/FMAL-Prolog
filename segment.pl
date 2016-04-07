segment([],_).
segment([X],[H2|_]) :- X == H2.
segment([H1,H2|X],[H3,H4|Y]) :- H1 == H3, H2 == H4, segmentHelper(X,Y),!.
segment([H1|X],[_|Y]) :- segment([H1|X],Y).

segmentHelper([],_).
segmentHelper([H|X],[H|Y]) :- segmentHelper(X,Y).
