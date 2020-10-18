select N, if(P is Null, 'Root',if((select count(*) from BST where P= a.N)>0,'Inner','Leaf'))
from BST a
order by N
