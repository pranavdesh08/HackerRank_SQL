set @r :=0, @r1:=0;
select distinctrow a.x1,a.y1
from (select @r := @r+1 row1, x x1, y y1
from functions) a, (select @r1 := @r1 + 1 row2, x x2, y y2
from functions) b
where a.x1 = b.y2 and a.y1 = b.x2 and row1 <> row2 and a.x1 <= a.y1
order by a.x1
           
