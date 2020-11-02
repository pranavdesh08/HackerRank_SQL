select contests.contest_id, contests.hacker_id, contests.name, sum(b.n) , sum(b.o) , sum(a.l) , sum(a.m) 
from contests join colleges on contests.contest_id = colleges.contest_id 
join challenges on colleges.college_id = challenges.college_id 
left join (select view_stats.challenge_id id, sum(view_stats.total_views) l,                                      sum(view_stats.total_unique_views) m from view_stats group by                                       view_stats.challenge_id) a   on challenges.challenge_id = a.id 
left join (select submission_stats.challenge_id,                                                                sum(submission_stats.total_submissions) n,                                                          sum(submission_stats.total_accepted_submissions) o from                                             submission_stats group by submission_stats.challenge_id) b on b.challenge_id = challenges.challenge_id
group by contests.contest_id, contests.hacker_id, contests.name
having sum(b.n)<>0 or sum(b.o)<>0 or sum(a.l)<>0 or sum(a.m)<>0
order by contests.contest_id
