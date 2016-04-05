numElements(0,[]).
numElements(COUNT,[_|L]):- numElements(COUNT1, L), COUNT is COUNT1+1.