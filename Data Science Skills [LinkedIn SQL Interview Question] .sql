SELECT candidate_id
FROM 
(SELECT candidate_id
FROM candidates
WHERE skill IN ('Python','Tableau', 'PostgreSQL')
) AS cand
GROUP BY candidate_id
HAVING COUNT(candidate_id) =3
;