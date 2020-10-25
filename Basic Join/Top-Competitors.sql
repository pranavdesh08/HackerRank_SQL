select h.hacker_id, h.name
from hackers h, difficulty d, challenges c, submissions s
where h.hacker_id = s.hacker_id and s.challenge_id = c.challenge_id and c.difficulty_level = d.difficulty_level and s.score = d.score
group by h.hacker_id, h.name
having count(h.hacker_id)>1
order by count(c.challenge_id) desc, h.hacker_id
