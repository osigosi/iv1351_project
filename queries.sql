query 2 
	SELECT 
    c.course_code,
    CONCAT(ci.study_year, '-', ci.instance_id) AS course_instance_id,
    cl.hp,
    ci.study_period,
    ci.study_year,
    ci.num_students,
    CONCAT(p.first_name, ' ', p.last_name) AS teacher_name,
    jt.job_title AS designation,

    -- Allokerade timmar per aktivitet (weighted)
    SUM(CASE WHEN ta.activity_name = 'Lecture' THEN a.allocated_hours * ta.factor ELSE 0 END) AS lecture_hours,
    SUM(CASE WHEN ta.activity_name = 'Tutorial' THEN a.allocated_hours * ta.factor ELSE 0 END) AS tutorial_hours,
    SUM(CASE WHEN ta.activity_name = 'Lab' THEN a.allocated_hours * ta.factor ELSE 0 END) AS lab_hours,
    SUM(CASE WHEN ta.activity_name = 'Seminar' THEN a.allocated_hours * ta.factor ELSE 0 END) AS seminar_hours,
    SUM(CASE WHEN ta.activity_name = 'Other Overhead' THEN a.allocated_hours * ta.factor ELSE 0 END) AS other_overhead_hours,

    -- Lärarens total
    SUM(a.allocated_hours * ta.factor) AS teacher_alloc_hours,

    -- Admin/exam lika fördelat per lärare i instansen
    ROUND((2 * cl.hp + 28 + 0.2 * ci.num_students) / NULLIF(tc.teacher_count, 0), 2) AS admin_hours,
    ROUND((32 + 0.725 * ci.num_students) / NULLIF(tc.teacher_count, 0), 2) AS exam_hours,

    -- Total per lärare
    ROUND(
        SUM(a.allocated_hours * ta.factor)
        + (2 * cl.hp + 28 + 0.2 * ci.num_students) / NULLIF(tc.teacher_count, 0)
        + (32 + 0.725 * ci.num_students) / NULLIF(tc.teacher_count, 0),
        2
    ) AS total_hours

FROM allocation a
JOIN teaching_activity ta
  ON ta.activity_id = a.activity_id
JOIN course_instance ci
  ON ci.instance_id = a.instance_id
JOIN course_layout cl
  ON cl.layout_id = ci.layout_id
JOIN course c
  ON c.course_id = cl.course_id
JOIN employee e
  ON e.worker_id = a.worker_id
JOIN person p
  ON p.person_id = e.person_id
JOIN job_title jt
  ON jt.job_id = e.job_id

JOIN (
    SELECT instance_id, COUNT(DISTINCT worker_id) AS teacher_count
    FROM allocation
    GROUP BY instance_id
) tc
  ON tc.instance_id = a.instance_id

WHERE 
    ci.study_year =2025
    AND c.course_code = 'IV1351'

GROUP BY 
    c.course_code, ci.instance_id, cl.hp, ci.study_period, ci.study_year, ci.num_students,
    teacher_name, jt.job_title, tc.teacher_count

-- Query 3: total allocated hours (with factor) for ONE teacher, current year
SELECT 
    c.course_code,
    CONCAT(ci.study_year, '-', ci.instance_id) AS course_instance_id,
    cl.hp,
    ci.study_period,
    CONCAT(p.first_name, ' ', p.last_name) AS teacher_name,

    -- allocated hours per activity (weighted)
    SUM(CASE WHEN ta.activity_name = 'Lecture' THEN a.allocated_hours * ta.factor ELSE 0 END) AS lecture_hours,
    SUM(CASE WHEN ta.activity_name = 'Tutorial' THEN a.allocated_hours * ta.factor ELSE 0 END) AS tutorial_hours,
    SUM(CASE WHEN ta.activity_name = 'Lab' THEN a.allocated_hours * ta.factor ELSE 0 END) AS lab_hours,
    SUM(CASE WHEN ta.activity_name = 'Seminar' THEN a.allocated_hours * ta.factor ELSE 0 END) AS seminar_hours,
    SUM(CASE WHEN ta.activity_name = 'Other Overhead' THEN a.allocated_hours * ta.factor ELSE 0 END) AS other_overhead_hours,

    -- overhead (equal split across teachers in the instance)
    ROUND((2 * cl.hp + 28 + 0.2 * ci.num_students) / NULLIF(tc.teacher_count, 0), 2) AS admin_hours,
    ROUND((32 + 0.725 * ci.num_students) / NULLIF(tc.teacher_count, 0), 2) AS exam_hours,

    -- total per teacher
    ROUND(
        SUM(a.allocated_hours * ta.factor)
        + (2 * cl.hp + 28 + 0.2 * ci.num_students) / NULLIF(tc.teacher_count, 0)
        + (32 + 0.725 * ci.num_students) / NULLIF(tc.teacher_count, 0),
        2
    ) AS total_hours

FROM allocation a
JOIN teaching_activity ta
  ON ta.activity_id = a.activity_id
JOIN course_instance ci
  ON ci.instance_id = a.instance_id
JOIN course_layout cl
  ON cl.layout_id = ci.layout_id
JOIN course c
  ON c.course_id = cl.course_id
JOIN employee e
  ON e.worker_id = a.worker_id
JOIN person p
  ON p.person_id = e.person_id

-- number of teachers per instance (for equal overhead split)
JOIN (
    SELECT instance_id, COUNT(DISTINCT worker_id) AS teacher_count
    FROM allocation
    GROUP BY instance_id
) tc
  ON tc.instance_id = a.instance_id

WHERE 
    ci.study_year = EXTRACT(YEAR FROM CURRENT_DATE)
    AND p.first_name = 'Alice'
    AND p.last_name  = 'Smith'

GROUP BY 
    c.course_code, ci.study_year, ci.instance_id, cl.hp, ci.study_period,
    teacher_name, ci.num_students, tc.teacher_count

ORDER BY 
    ci.study_period, c.course_code;



SELECT 
    e.employment_id,
    CONCAT(p.first_name, ' ', p.last_name) AS teacher_name,
    ci.study_period,
    COUNT(DISTINCT a.instance_id) AS no_of_courses
FROM 
    allocation a
JOIN 
    course_instance ci ON a.instance_id = ci.instance_id
JOIN 
    employee e ON a.worker_id = e.worker_id
JOIN 
    person p ON e.person_id = p.person_id
WHERE 
    ci.study_year = 2025
    AND ci.study_period = 'P2'  -- byt till önskad period
GROUP BY 
    e.employment_id, teacher_name, ci.study_period
HAVING 
    COUNT(DISTINCT a.instance_id) > 1
ORDER BY 
    no_of_courses DESC;


BEFORE TESRING
"Sort  (cost=9.12..9.15 rows=13 width=55) (actual time=0.440..0.443 rows=5.00 loops=1)"
"  Sort Key: (count(DISTINCT a.instance_id)) DESC"
"  Sort Method: quicksort  Memory: 25kB"
"  Buffers: shared hit=4"
"  ->  GroupAggregate  (cost=7.88..8.88 rows=13 width=55) (actual time=0.418..0.434 rows=5.00 loops=1)"
"        Group Key: e.employment_id, (concat(TRIM(BOTH FROM p.first_name), ' ', p.last_name))"
"        Filter: (count(DISTINCT a.instance_id) > 1)"
"        Buffers: shared hit=4"
"        ->  Sort  (cost=7.88..7.98 rows=40 width=51) (actual time=0.407..0.412 rows=40.00 loops=1)"
"              Sort Key: e.employment_id, (concat(TRIM(BOTH FROM p.first_name), ' ', p.last_name)), a.instance_id"
"              Sort Method: quicksort  Memory: 27kB"
"              Buffers: shared hit=4"
"              ->  Hash Join  (cost=4.03..6.82 rows=40 width=51) (actual time=0.176..0.306 rows=40.00 loops=1)"
"                    Hash Cond: (e.person_id = p.person_id)"
"                    Buffers: shared hit=4"
"                    ->  Hash Join  (cost=2.56..4.92 rows=40 width=23) (actual time=0.107..0.161 rows=40.00 loops=1)"
"                          Hash Cond: (a.worker_id = e.worker_id)"
"                          Buffers: shared hit=3"
"                          ->  Hash Join  (cost=1.08..3.32 rows=40 width=12) (actual time=0.068..0.103 rows=40.00 loops=1)"
"                                Hash Cond: (a.instance_id = ci.instance_id)"
"                                Buffers: shared hit=2"
"                                ->  Seq Scan on allocation a  (cost=0.00..1.80 rows=80 width=8) (actual time=0.023..0.031 rows=80.00 loops=1)"
"                                      Buffers: shared hit=1"
"                                ->  Hash  (cost=1.06..1.06 rows=2 width=8) (actual time=0.033..0.033 rows=2.00 loops=1)"
"                                      Buckets: 1024  Batches: 1  Memory Usage: 9kB"
"                                      Buffers: shared hit=1"
"                                      ->  Seq Scan on course_instance ci  (cost=0.00..1.06 rows=2 width=8) (actual time=0.029..0.031 rows=2.00 loops=1)"
"                                            Filter: ((study_year = 2025) AND (study_period = 'P2'::study_period_enum))"
"                                            Rows Removed by Filter: 2"
"                                            Buffers: shared hit=1"
"                          ->  Hash  (cost=1.21..1.21 rows=21 width=19) (actual time=0.028..0.029 rows=21.00 loops=1)"
"                                Buckets: 1024  Batches: 1  Memory Usage: 10kB"
"                                Buffers: shared hit=1"
"                                ->  Seq Scan on employee e  (cost=0.00..1.21 rows=21 width=19) (actual time=0.012..0.017 rows=21.00 loops=1)"
"                                      Buffers: shared hit=1"
"                    ->  Hash  (cost=1.21..1.21 rows=21 width=61) (actual time=0.043..0.044 rows=21.00 loops=1)"
"                          Buckets: 1024  Batches: 1  Memory Usage: 10kB"
"                          Buffers: shared hit=1"
"                          ->  Seq Scan on person p  (cost=0.00..1.21 rows=21 width=61) (actual time=0.027..0.032 rows=21.00 loops=1)"
"                                Buffers: shared hit=1"
"Planning:"
"  Buffers: shared hit=30"
"Planning Time: 3.936 ms"
"Execution Time: 0.648 ms"
After INDEX
"Sort  (cost=7.59..7.61 rows=7 width=55) (actual time=0.158..0.164 rows=0.00 loops=1)"
"  Sort Key: (count(DISTINCT a.instance_id)) DESC"
"  Sort Method: quicksort  Memory: 25kB"
"  Buffers: shared hit=3"
"  ->  GroupAggregate  (cost=6.99..7.49 rows=7 width=55) (actual time=0.152..0.158 rows=0.00 loops=1)"
"        Group Key: e.employment_id, (concat(TRIM(BOTH FROM p.first_name), ' ', p.last_name))"
"        Filter: (count(DISTINCT a.instance_id) > 1)"
"        Buffers: shared hit=3"
"        ->  Sort  (cost=6.99..7.04 rows=20 width=51) (actual time=0.151..0.157 rows=0.00 loops=1)"
"              Sort Key: e.employment_id, (concat(TRIM(BOTH FROM p.first_name), ' ', p.last_name)), a.instance_id"
"              Sort Method: quicksort  Memory: 25kB"
"              Buffers: shared hit=3"
"              ->  Hash Join  (cost=4.05..6.56 rows=20 width=51) (actual time=0.131..0.137 rows=0.00 loops=1)"
"                    Hash Cond: (e.person_id = p.person_id)"
"                    Buffers: shared hit=3"
"                    ->  Hash Join  (cost=2.58..4.87 rows=20 width=23) (actual time=0.068..0.070 rows=0.00 loops=1)"
"                          Hash Cond: (a.worker_id = e.worker_id)"
"                          Buffers: shared hit=2"
"                          ->  Hash Join  (cost=1.10..3.33 rows=20 width=12) (actual time=0.067..0.069 rows=0.00 loops=1)"
"                                Hash Cond: (a.instance_id = ci.instance_id)"
"                                Buffers: shared hit=2"
"                                ->  Seq Scan on allocation a  (cost=0.00..1.80 rows=80 width=8) (actual time=0.028..0.029 rows=1.00 loops=1)"
"                                      Buffers: shared hit=1"
"                                ->  Hash  (cost=1.09..1.09 rows=1 width=8) (actual time=0.027..0.027 rows=0.00 loops=1)"
"                                      Buckets: 1024  Batches: 1  Memory Usage: 8kB"
"                                      Buffers: shared hit=1"
"                                      ->  Seq Scan on course_instance ci  (cost=0.00..1.09 rows=1 width=8) (actual time=0.026..0.026 rows=0.00 loops=1)"
"                                            Filter: ((study_period = 'P2'::study_period_enum) AND ((study_year)::numeric = EXTRACT(year FROM CURRENT_DATE)))"
"                                            Rows Removed by Filter: 4"
"                                            Buffers: shared hit=1"
"                          ->  Hash  (cost=1.21..1.21 rows=21 width=19) (never executed)"
"                                ->  Seq Scan on employee e  (cost=0.00..1.21 rows=21 width=19) (never executed)"
"                    ->  Hash  (cost=1.21..1.21 rows=21 width=61) (actual time=0.049..0.052 rows=21.00 loops=1)"
"                          Buckets: 1024  Batches: 1  Memory Usage: 10kB"
"                          Buffers: shared hit=1"
"                          ->  Seq Scan on person p  (cost=0.00..1.21 rows=21 width=61) (actual time=0.026..0.033 rows=21.00 loops=1)"
"                                Buffers: shared hit=1"
"Planning:"
"  Buffers: shared hit=61 read=2"
"Planning Time: 6.831 ms"
"Execution Time: 0.278 ms"
