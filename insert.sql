-- =========================================
-- INSERT TEST DATA FOR UNIVERSITY DATABASE
-- =========================================

-- teaching_activity
INSERT INTO teaching_activity (activity_id, activity_name, factor) VALUES
(1, 'Lecture', 3.60),
(2, 'Lab', 2.40),
(3, 'Tutorial', 2.40),
(4, 'Seminar', 1.80);

-- allocation_limit
INSERT INTO allocation_limit (max_allocation) VALUES (4);

-- course
INSERT INTO course (course_id, course_code) VALUES
(1, 'CS1010'),
(2, 'CS2020'),
(4, 'IX1500'),
(5, 'IV1351'),
(6, 'ID2214'),
(7, 'IV1350'),
(13, 'DA2000'),
(14, 'DA3000'),
(15, 'DD1320'),
(16, 'ID1018'),
(17, 'IV1360'),
(18, 'SF1624'),
(19, 'SF1688'),
(20, 'IK1550'),
(21, 'IS1200');

-- course_layout
INSERT INTO course_layout (layout_id, max_students, version_number, course_id, min_students, hp, course_name) VALUES
(1, 200, 1, 1, 25, 7.50, 'Computer Science 1'),
(2, 150, 2, 1, 30, 7.50, 'Computer Science 1'),
(4, 150, 1, 2, 20, 7.50, 'Computer Science 2'),
(5, 200, 2, 2, 25, 7.50, 'Computer Science 2 '),
(6, 150, 1, 6, 20, 7.50, 'Programming for Data Science'),
(7, 200, 2, 6, 30, 7.50, 'Programming for Data Science'),
(8, 200, 1, 4, 50, 7.50, 'Discrete Mathematics'),
(9, 150, 2, 4, 50, 7.50, 'Discrete Mathematics'),
(10, 300, 1, 5, 50, 7.50, 'Data Storage Paradigms'),
(11, 250, 2, 5, 50, 7.50, 'Data Storage Paradigms'),
(12, 250, 1, 7, 20, 7.50, 'Object Oriented Design'),
(13, 200, 1, 13, 20, 7.50, 'Course DA2000'),
(14, 200, 1, 14, 20, 7.50, 'Course DA3000'),
(15, 200, 1, 15, 20, 7.50, 'Course DD1320'),
(16, 200, 1, 16, 20, 7.50, 'Course ID1018'),
(17, 200, 1, 17, 20, 7.50, 'Course IV1360'),
(18, 200, 1, 18, 20, 7.50, 'Course SF1624'),
(19, 200, 1, 19, 20, 7.50, 'Course SF1688'),
(20, 200, 1, 20, 20, 7.50, 'Course IK1550'),
(21, 200, 1, 21, 20, 7.50, 'Course IS1200');

-- course_instance
INSERT INTO course_instance (instance_id, num_students, study_period, study_year, layout_id) VALUES
(3, 150, 'P1', 2025, 9),
(4, 200, 'P2', 2025, 11),
(5, 180, 'P2', 2025, 7),
(6, 160, 'P3', 2025, 12);

-- department
INSERT INTO department (department_id, department_name, manager_id) VALUES
(1, 'Computer Science', NULL),
(2, 'Mathematics', NULL),
(3, 'Electrical Engineering', NULL),
(4, 'Human Centered Technology', NULL),
(5, 'Intelligent Systems', NULL);

-- job_title
INSERT INTO job_title (job_id, job_title) VALUES
(1, 'Professor'),
(2, 'Lecturer'),
(3, 'TA'),
(4, 'Assistant Professor'),
(5, 'PhD Student');

-- person
INSERT INTO person (person_id, personal_number, first_name, last_name, phone_no, adress_name, zip, city, country) VALUES
(1, '195201010000', 'Leif                                              ', 'Linbäck', '0787904425', 'Kthgatan 23', '11855', 'Stockholm', 'Sweden'),
(2, '198201010000', 'Paris                                             ', 'Carbone', '0731234567', 'Kthgatan 1', '11655', 'Stockholm', 'Sweden'),
(3, '198201010400', 'Niharika                                          ', 'Gauraha', '0731236567', 'Kthgatan 2', '11255', 'Stockholm', 'Sweden'),
(4, '199201010400', 'Adam                                              ', 'Doe', '0735236567', 'Kthgatan 3', '11255', 'Stockholm', 'Sweden'),
(5, '199201010450', 'Brian                                             ', 'Doe', '0735246567', 'Kthgatan 4', '11255', 'Stockholm', 'Sweden'),
(6, '200701056848', 'Jacqueline                                        ', 'Spence', '0781578685', 'Ap #234-9600 Lacinia St.', '68364', 'Alingsås', 'Sweden'),
(7, '191407075387', 'Sylvia                                            ', 'Workman', '0706687786', 'Ap #811-7516 Ornare, Ave', '43815', 'Borås', 'Sweden'),
(8, '19441225356',  'Florian                                           ', 'Hoffman', '0716821464', '8974 Iaculis Ave', '59320', 'Vetlanda', 'Sweden'),
(9, '198606083485', 'Karen                                             ', 'Dillard', '0751516823', '8252 Lectus Road', '62567', 'Mora', 'Sweden'),
(10,'19851229424',  'Frieda                                            ', 'Wolfe', '0741404263', '8145 Mauris St.', '44571', 'Tranås', 'Sweden'),
(11,'19621223877',  'Benedikt                                          ', 'Bryan', '0744153680', 'P.O. Box 666, 874 Aliquam Av.', '47057', 'Upplands Väsby', 'Sweden'),
(12,'200906061773', 'Diana                                             ', 'Hodges', '0792004636', '335-2776 Sit Road', '88434', 'Söderhamn', 'Sweden'),
(13,'194606005527', 'Horst                                             ', 'Fox', '0718638812', 'Ap #638-9786 Eros St.', '46943', 'Nässjö', 'Sweden'),
(14,'200904078530', 'Rainer                                            ', 'Mejia', '0784065322', 'Ap #176-3224 Nullam Av.', '22208', 'Vetlanda', 'Sweden'),
(15,'198501089231', 'Uta                                               ', 'Wilkerson', '0781301232', '120-1422 Imperdiet Rd.', '82637', 'Åkersberga', 'Sweden'),
(16,'195504061453', 'Nils                                              ', 'Rose', '0744396824', 'Ap #979-8491 Fusce Road', '55421', 'Mora', 'Sweden'),
(17,'200108042043', 'Dietrich                                          ', 'Lane', '0748226866', 'Ap #101-6151 Vivamus St.', '48628', 'Mjölby', 'Sweden'),
(18,'200802080642', 'Wilhelm                                           ', 'Alvarez', '0756559818', 'P.O. Box 468, 6789 Quisque Road', '98541', 'Norrköping', 'Sweden'),
(19,'19681222781',  'Boris                                             ', 'Hebert', '0767114574', '118-3664 Faucibus Av.', '67861', 'Värnamo', 'Sweden'),
(20,'19711225188',  'Susanne                                           ', 'Jordan', '0753296953', 'Ap #426-7126 Egestas. Road', '47364', 'Mora', 'Sweden'),
(21,'19461223453',  'Carolin                                           ', 'Foster', '0723253452', '167-7904 Nulla. Avenue', '74684', 'Ludvika', 'Sweden');

-- employee
INSERT INTO employee (worker_id, employment_id, email, job_id, department_id, person_id, supervisor_id) VALUES
(2, 'EMID500001', 'leilin@uni.com', 2, 1, 1, NULL),
(3, 'EMID500002', 'parcar@uni.com', 4, 1, 2, NULL),
(4, 'EMID500003', 'nihgau@uni.com', 2, 1, 3, NULL),
(5, 'EMID500004', 'adadoe@uni.com', 3, 1, 4, NULL),
(6, 'EMID500005', 'bridoe@uni.com', 5, 1, 5, NULL),
(7, 'EMID500006', 'jacspe@uni.com', 1, 2, 6, NULL),
(8, 'EMID500007', 'sylwor@uni.com', 3, 3, 7, NULL),
(9, 'EMID500008', 'flohff@uni.com', 5, 4, 8, NULL),
(10,'EMID500009', 'kardil@uni.com', 2, 5, 9, NULL),
(11,'EMID500010', 'friwol@uni.com', 1, 2, 10, NULL),
(12,'EMID500011', 'benbry@uni.com', 3, 3, 11, NULL),
(13,'EMID500012', 'dianho@uni.com', 4, 4, 12, NULL),
(14,'EMID500013', 'horsfo@uni.com', 5, 5, 13, NULL),
(15,'EMID500014', 'raimej@uni.com', 2, 2, 14, NULL),
(16,'EMID500015', 'utawil@uni.com', 3, 3, 15, NULL),
(17,'EMID500016', 'nilros@uni.com', 1, 4, 16, NULL),
(18,'EMID500017', 'dielan@uni.com', 5, 5, 17, NULL),
(19,'EMID500018', 'wilalv@uni.com', 2, 2, 18, NULL),
(20,'EMID500019', 'borheb@uni.com', 4, 3, 19, NULL),
(21,'EMID500020', 'susjor@uni.com', 3, 4, 20, NULL),
(22,'EMID500021', 'carfos@uni.com', 1, 5, 21, NULL);

-- skill
INSERT INTO skill (skill_id, skill_name, description) VALUES
(1, 'Python', 'Programming in Python for applications and data analysis'),
(2, 'Database Design', 'Understanding relational schema design and SQL queries'),
(3, 'Machine Learning', 'Basic ML algorithms and model training'),
(4, 'Teaching', 'Experience teaching students at university level');

-- employee_skill (empty)
-- No data inserted

-- salary
INSERT INTO salary (start_date, worker_id, salary) VALUES
('2025-01-01', 2, 55000),
('2025-01-01', 3, 72000),
('2025-01-01', 4, 52000),
('2025-01-01', 5, 30000),
('2025-01-01', 6, 28000);

-- planned_activity
INSERT INTO planned_activity (activity_id, instance_id, planned_hours) VALUES
(1, 3, 150), (2, 3, 100), (3, 3, 0),   (4, 3, 50),
(1, 4, 150), (2, 4, 0),   (3, 4, 200), (4, 4, 0),
(1, 5, 200), (2, 5, 100), (3, 5, 150), (4, 5, 0),
(1, 6, 100), (2, 6, 50),  (3, 6, 100), (4, 6, 50);

-- allocation
INSERT INTO allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES
-- Instance 5
(1, 2, 5, 80), (1, 3, 5, 40), (1, 4, 5, 60), (1, 5, 5, 20), (1, 6, 5, 0),
(2, 2, 5, 0),  (2, 3, 5, 30), (2, 4, 5, 20), (2, 5, 5, 50), (2, 6, 5, 0),
(3, 2, 5, 0),  (3, 3, 5, 40), (3, 4, 5, 70), (3, 5, 5, 40), (3, 6, 5, 0),
(4, 2, 5, 0),  (4, 3, 5, 0),  (4, 4, 5, 0),  (4, 5, 5, 0),  (4, 6, 5, 0),

-- Instance 6
(1, 2, 6, 50), (1, 3, 6, 30), (1, 4, 6, 0),  (1, 5, 6, 20), (1, 6, 6, 0),
(2, 2, 6, 0),  (2, 3, 6, 20), (2, 4, 6, 40), (2, 5, 6, 0),  (2, 6, 6, 40),
(3, 2, 6, 10), (3, 3, 6, 0),  (3, 4, 6, 20), (3, 5, 6, 20), (3, 6, 6, 0),
(4, 2, 6, 0),  (4, 3, 6, 0),  (4, 4, 6, 0),  (4, 5, 6, 0),  (4, 6, 6, 0),

-- Instance 4
(1, 2, 4, 100), (1, 3, 4, 50), (1, 4, 4, 0),  (1, 5, 4, 0),  (1, 6, 4, 50),
(2, 2, 4, 0),   (2, 3, 4, 40), (2, 4, 4, 40), (2, 5, 4, 0),  (2, 6, 4, 20),
(3, 2, 4, 30),  (3, 3, 4, 0),  (3, 4, 4, 40), (3, 5, 4, 80), (3, 6, 4, 0),
(4, 2, 4, 0),   (4, 3, 4, 0),  (4, 4, 4, 0),  (4, 5, 4, 0),  (4, 6, 4, 0),

-- Instance 3
(1, 2, 3, 0),   (1, 3, 3, 100), (1, 4, 3, 50), (1, 5, 3, 0),  (1, 6, 3, 0),
(2, 2, 3, 50),  (2, 3, 3, 0),   (2, 4, 3, 0),  (2, 5, 3, 50), (2, 6, 3, 0),
(3, 2, 3, 70),  (3, 3, 3, 0),   (3, 4, 3, 0),  (3, 5, 3, 0),  (3, 6, 3, 80),
(4, 2, 3, 0),   (4, 3, 3, 0),   (4, 4, 3, 0),  (4, 5, 3, 0),  (4, 6, 3, 0);
