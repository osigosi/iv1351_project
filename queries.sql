
--QUERY 1  NOTHING CHANGED
SELECT 
    c.course_code,
    CONCAT(ci.study_year, '-', ci.instance_id) AS course_instance_id,
    cl.hp,
    ci.study_period,
    ci.num_students,

    -- Planned hours per activity
    SUM(CASE WHEN ta.activity_name = 'Lecture' THEN pa.planned_hours * ta.factor ELSE 0 END) AS lecture_hours,
    SUM(CASE WHEN ta.activity_name = 'Tutorial' THEN pa.planned_hours * ta.factor ELSE 0 END) AS tutorial_hours,
    SUM(CASE WHEN ta.activity_name = 'Lab' THEN pa.planned_hours * ta.factor ELSE 0 END) AS lab_hours,
    SUM(CASE WHEN ta.activity_name = 'Seminar' THEN pa.planned_hours * ta.factor ELSE 0 END) AS seminar_hours
 

    -- Calculated hours
    ROUND(2 * cl.hp + 28 + 0.2 * ci.num_students, 2) AS admin_hours,
    ROUND(32 + 0.725 * ci.num_students, 2) AS exam_hours,

    -- Total Hours
    ROUND(
        SUM(pa.planned_hours * ta.factor)
        + (2 * cl.hp + 28 + 0.2 * ci.num_students)
        + (32 + 0.725 * ci.num_students),
        2
    ) AS total_hours

FROM 
    course_instance ci
JOIN 
    course_layout cl ON ci.layout_id = cl.layout_id
JOIN 
    course c ON cl.course_id = c.course_id
LEFT JOIN 
    planned_activity pa ON pa.instance_id = ci.instance_id
LEFT JOIN 
    teaching_activity ta ON pa.activity_id = ta.activity_id

WHERE 
    ci.study_year = EXTRACT(YEAR FROM CURRENT_DATE)

GROUP BY 
    c.course_code, ci.instance_id, cl.hp, ci.study_period, ci.num_students
ORDER BY 


--QUERY 2 CHANGED HOW WE CALCULATE TEACHAR ADMIN AND EXAM HOURS
	SELECT 
    c.course_code,
    CONCAT(ci.study_year, '-', ci.instance_id) AS course_instance_id,
    cl.hp,
    ci.study_period,
    ci.study_year,
    ci.num_students,
    CONCAT(p.first_name, ' ', p.last_name) AS teacher_name,
    jt.job_title AS designation,

    -- Allocated Hours per teacher
    SUM(CASE WHEN ta.activity_name = 'Lecture' THEN a.allocated_hours * ta.factor ELSE 0 END) AS lecture_hours,
    SUM(CASE WHEN ta.activity_name = 'Tutorial' THEN a.allocated_hours * ta.factor ELSE 0 END) AS tutorial_hours,
    SUM(CASE WHEN ta.activity_name = 'Lab' THEN a.allocated_hours * ta.factor ELSE 0 END) AS lab_hours,
    SUM(CASE WHEN ta.activity_name = 'Seminar' THEN a.allocated_hours * ta.factor ELSE 0 END) AS seminar_hours

    -- Teacher Total
    SUM(a.allocated_hours * ta.factor) AS teacher_alloc_hours,

    -- THIS IS CHAMGED, previous we calculated the total admin hours for each teacher, we changed this to equally dividing the hours between the teachers.
    ROUND((2 * cl.hp + 28 + 0.2 * ci.num_students) / NULLIF(tc.teacher_count, 0), 2) AS admin_hours,
    ROUND((32 + 0.725 * ci.num_students) / NULLIF(tc.teacher_count, 0), 2) AS exam_hours,

    -- Total hours
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
	-- NEW, Counts the total allocations a teacher haves.
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

-- Query 3: CHANGED HOW WE CALCULATE TEACHAR ADMIN AND EXAM HOURS
SELECT 
    c.course_code,
    CONCAT(ci.study_year, '-', ci.instance_id) AS course_instance_id,
    cl.hp,
    ci.study_period,
    CONCAT(p.first_name, ' ', p.last_name) AS teacher_name,

    -- allocated hours per activity 
    SUM(CASE WHEN ta.activity_name = 'Lecture' THEN a.allocated_hours * ta.factor ELSE 0 END) AS lecture_hours,
    SUM(CASE WHEN ta.activity_name = 'Tutorial' THEN a.allocated_hours * ta.factor ELSE 0 END) AS tutorial_hours,
    SUM(CASE WHEN ta.activity_name = 'Lab' THEN a.allocated_hours * ta.factor ELSE 0 END) AS lab_hours,
    SUM(CASE WHEN ta.activity_name = 'Seminar' THEN a.allocated_hours * ta.factor ELSE 0 END) AS seminar_hours,
 

 -- THIS IS CHAMGED, previous we calculated the total admin hours for each teacher, we changed this to equally dividing the hours between the teachers.
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

-- NEW number of teachers per instance 
JOIN (
    SELECT instance_id, COUNT(DISTINCT worker_id) AS teacher_count
    FROM allocation
    GROUP BY instance_id
) tc
  ON tc.instance_id = a.instance_id

WHERE 
    ci.study_year = 2025
    AND p.first_name = 'Niharika'
    AND p.last_name  = 'Gauraha'

GROUP BY 
    c.course_code, ci.study_year, ci.instance_id, cl.hp, ci.study_period,
    teacher_name, ci.num_students, tc.teacher_count

ORDER BY 
    ci.study_period, c.course_code;

-- Query 4 NOTHING CHANGED
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


