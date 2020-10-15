select 
case 
    when (A+B)>C and (A+C)>B and (B+C)>A then 
    case
        when A = B and B = C and A = C then 'Equilateral'
        when (A = B and (A+B)>C) or (B=C and (B+C)>A) or (A=C and (A+C)>B) then 'Isosceles'
        else 'Scalene'
    end
else 'Not A Triangle'
end
from TRIANGLES
