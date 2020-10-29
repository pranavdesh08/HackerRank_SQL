select s.name
from students s, (select p.id fid, p.salary fsal, p1.id bid, p1.salary bfsal
from packages p, packages p1, (select f.id frnd, f.friend_id bfid
from friends f) a
where p.id = p.a.frnd and p1.id = p1.a.bfid) b
where b.fsal < b.bfsal and s.id = b.fid
order by b.bfsal
