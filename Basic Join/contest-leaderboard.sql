select h.hacker_id, h.name, sum(a.scr)
from hackers h, (select s.hacker_id hid, s.challenge_id cid, max(s.score) scr
from submissions s
group by s.hacker_id, s.challenge_id) a
where h.hacker_id = a.hid
group by h.hacker_id, h.name
having sum(a.scr) > 0
order by sum(a.scr) desc, h.hacker_id
