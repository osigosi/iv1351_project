
SELECT
    c.course_code,
    ci.instance_id,
    cl.hp,
    ci.study_period,
    ci.num_students,

    SUM(
	CASE WHEN ta.activity_name = 'Lecture'
	THEN pa.planned_hours * ta.factor
	ELSE 0
	END) AS lecture_hours,
    SUM(
    CASE WHEN ta.activity_name = 'Tutorial'
    THEN pa.planned_hours * ta.factor
    ELSE 0
    END) AS tutorial_hours,
    
    SUM(
	CASE WHEN ta.activity_name = 'Lab'
 	THEN pa.planned_hours * ta.factor
	ELSE 0
    END) AS lab_hours,
    
    SUM(
	CASE WHEN ta.activity_name = 'Seminar'
 	THEN pa.planned_hours * ta.factor
 	ELSE 0
	END) AS seminar_hours,
   
    CAST(32 + 0.725 * ci.num_students AS INTEGER)  AS exam_hours,
	CAST(28 + 2 * cl.hp + 0.2 * ci.num_students AS INTEGER)  AS Admin_hours,
  
    CAST(SUM(pa.planned_hours * ta.factor)
        + CAST(32 + 0.725 * ci.num_students AS INTEGER)  
		+ CAST(28 + 2 * cl.hp + 0.2 * ci.num_students AS INTEGER) AS INTEGER)
		
		AS total_hours
FROM planned_activity pa
JOIN teaching_activity ta ON pa.activity_id = ta.activity_id
JOIN course_instance ci ON pa.instance_id = ci.instance_id
JOIN course_layout cl ON ci.layout_id = cl.layout_id
JOIN course c ON cl.course_id = c.course_id
WHERE ci.study_year = 2025
GROUP BY
    c.course_code,
    ci.instance_id,
    cl.hp,
    ci.study_period,
    ci.num_students
ORDER BY c.course_code;

