select challenges.hacker_id, hackers.name, count(challenges.hacker_id) cnt
from challenges, hackers where hackers.hacker_id = challenges.hacker_id
group by challenges.hacker_id, hackers.name
having cnt = (select count(c.challenge_id) max_cnt
                from challenges c
                group by c.hacker_id
                order by max_cnt desc
                limit 1) 
                or 
       cnt in (select b.a c from(select count(*) a
                                    from challenges ch
                                    group by ch.hacker_id) b
                                   group by b.a
                                   having count(b.a)=1)
order by cnt desc, challenges.hacker_id 
                                   
