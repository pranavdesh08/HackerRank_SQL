set @r = 0;

select repeat('* ', @r := @r + 1) from information_schema.tables
limit 20

