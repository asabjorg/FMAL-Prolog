binaryTree(nil).
binaryTree(t(_,nil,nil)).
binaryTree(t(_,L,R)) :- binaryTree(L), binaryTree(R).
