set @r :=0;
select count(*) from station into @tot;

select round(avg(a.lat_n),4)
from (select @r := @r + 1 as col ,lat_n from station order by lat_n) a
where 
    case 
        when mod(@tot,2)=0 then a.col in (@tot/2, @tot/2+1) 
        else a.col = (@tot+1)/2 
    end
    
