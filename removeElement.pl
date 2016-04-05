removeElement(X, [X|T], T).
removeElement(X, [H|T], [H|T1]):- removeElement(X, T, T1).