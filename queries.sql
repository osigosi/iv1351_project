CREATE VIEW course_view AS
SELECT
  ci.instance_id,
  ci.study_year,
  ci.study_period AS period,
  ci.num_students,
  cl.layout_id,
  cl.hp,
  cl.course_name,
  c.course_id,
  c.course_code
FROM course_instance ci
JOIN course_layout   cl ON ci.layout_id = cl.layout_id
JOIN course          c  ON cl.course_id = c.course_id;


SELECT
  v.course_code,
  v.instance_id AS course_instance_id,
  v.hp,
  v.period,
  v.num_students,
  SUM(CASE WHEN ta.activity_name='Lecture'  THEN pa.planned_hours * ta.factor ELSE 0 END) AS lecture_hours,
  SUM(CASE WHEN ta.activity_name='Tutorial' THEN pa.planned_hours * ta.factor ELSE 0 END) AS tutorial_hours,
  SUM(CASE WHEN ta.activity_name='Lab'      THEN pa.planned_hours * ta.factor ELSE 0 END) AS lab_hours,
  SUM(CASE WHEN ta.activity_name='Seminar'  THEN pa.planned_hours * ta.factor ELSE 0 END) AS seminar_hours,
  CAST(28 + 2 * v.hp + 0.2 * v.num_students AS INTEGER) AS admin,
  CAST(32 + 0.725 * v.num_students          AS INTEGER) AS exam,
  CAST(
    SUM(pa.planned_hours * ta.factor)
    + (28 + 2 * v.hp + 0.2 * v.num_students)
    + (32 + 0.725 * v.num_students)
  AS INTEGER) AS total_hours
FROM course_view v
JOIN planned_activity pa ON pa.instance_id = v.instance_id
JOIN teaching_activity ta ON ta.activity_id = pa.activity_id
WHERE v.study_year = 2025
GROUP BY v.course_code, course_instance_id, v.hp, v.period, v.num_students
ORDER BY v.course_code;

