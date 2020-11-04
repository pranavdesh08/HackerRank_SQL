delimiter $$
create procedure prime_no(in n int)
begin

declare i, j, flag int;
declare result varchar(5000);

set result:= '2&';
set i:= 2;

loop1:while (i < n) do
set j:=2;
set flag:=0;

loop2:while (j < i) do

if (i%j=0)then
set flag:=0;
leave loop2;

else 
set flag:= 1;
end if;

set j:= j+1;
end while loop2;

if (flag=1) then
set result:= concat(result, i,'&');
end if;

set i:=i+1;
end while loop1;

select substr(result, 1, length(result)-1);

end
$$

call prime_no(1000);
