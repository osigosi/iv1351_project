-- =========================================
-- INSERT TEST DATA FOR UNIVERSITY DATABASE
-- =========================================

--
-- PostgreSQL database dump
--

--
-- PostgreSQL database dump
--

\restrict hplA5dfDrdcy7afwSL5MNOaw7Y7PpYIvisYn1g1ry0Iu21b3bj8p2YXfWxGHLmI

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2026-01-06 14:09:07

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = on;

--
-- TOC entry 5128 (class 0 OID 17104)
-- Dependencies: 220
-- Data for Name: course; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.course (course_id, course_code) OVERRIDING SYSTEM VALUE VALUES (4, 'IX1500');
INSERT INTO public.course (course_id, course_code) OVERRIDING SYSTEM VALUE VALUES (5, 'IV1351');
INSERT INTO public.course (course_id, course_code) OVERRIDING SYSTEM VALUE VALUES (6, 'ID2214');
INSERT INTO public.course (course_id, course_code) OVERRIDING SYSTEM VALUE VALUES (7, 'IV1350');
INSERT INTO public.course (course_id, course_code) OVERRIDING SYSTEM VALUE VALUES (1, 'CS1010');
INSERT INTO public.course (course_id, course_code) OVERRIDING SYSTEM VALUE VALUES (2, 'CS2020');
INSERT INTO public.course (course_id, course_code) OVERRIDING SYSTEM VALUE VALUES (13, 'DA2000');
INSERT INTO public.course (course_id, course_code) OVERRIDING SYSTEM VALUE VALUES (14, 'DA3000');
INSERT INTO public.course (course_id, course_code) OVERRIDING SYSTEM VALUE VALUES (15, 'DD1320');
INSERT INTO public.course (course_id, course_code) OVERRIDING SYSTEM VALUE VALUES (16, 'ID1018');
INSERT INTO public.course (course_id, course_code) OVERRIDING SYSTEM VALUE VALUES (17, 'IV1360');
INSERT INTO public.course (course_id, course_code) OVERRIDING SYSTEM VALUE VALUES (18, 'SF1624');
INSERT INTO public.course (course_id, course_code) OVERRIDING SYSTEM VALUE VALUES (19, 'SF1688');
INSERT INTO public.course (course_id, course_code) OVERRIDING SYSTEM VALUE VALUES (20, 'IK1550');
INSERT INTO public.course (course_id, course_code) OVERRIDING SYSTEM VALUE VALUES (21, 'IS1200');


--
-- TOC entry 5130 (class 0 OID 17114)
-- Dependencies: 222
-- Data for Name: course_layout; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.course_layout (layout_id, max_students, version_number, course_id, min_students, hp, course_name) OVERRIDING SYSTEM VALUE VALUES (2, 150, 2, 1, 30, 7.50, 'Computer Science 1');
INSERT INTO public.course_layout (layout_id, max_students, version_number, course_id, min_students, hp, course_name) OVERRIDING SYSTEM VALUE VALUES (1, 200, 1, 1, 25, 7.50, 'Computer Science 1');
INSERT INTO public.course_layout (layout_id, max_students, version_number, course_id, min_students, hp, course_name) OVERRIDING SYSTEM VALUE VALUES (4, 150, 1, 2, 20, 7.50, 'Computer Science 2');
INSERT INTO public.course_layout (layout_id, max_students, version_number, course_id, min_students, hp, course_name) OVERRIDING SYSTEM VALUE VALUES (5, 200, 2, 2, 25, 7.50, 'Computer Science 2 ');
INSERT INTO public.course_layout (layout_id, max_students, version_number, course_id, min_students, hp, course_name) OVERRIDING SYSTEM VALUE VALUES (6, 150, 1, 6, 20, 7.50, 'Programming for Data Science');
INSERT INTO public.course_layout (layout_id, max_students, version_number, course_id, min_students, hp, course_name) OVERRIDING SYSTEM VALUE VALUES (7, 200, 2, 6, 30, 7.50, 'Programming for Data Science');
INSERT INTO public.course_layout (layout_id, max_students, version_number, course_id, min_students, hp, course_name) OVERRIDING SYSTEM VALUE VALUES (8, 200, 1, 4, 50, 7.50, 'Discrete Mathematics');
INSERT INTO public.course_layout (layout_id, max_students, version_number, course_id, min_students, hp, course_name) OVERRIDING SYSTEM VALUE VALUES (9, 150, 2, 4, 50, 7.50, 'Discrete Mathematics');
INSERT INTO public.course_layout (layout_id, max_students, version_number, course_id, min_students, hp, course_name) OVERRIDING SYSTEM VALUE VALUES (10, 300, 1, 5, 50, 7.50, 'Data Storage Paradigms');
INSERT INTO public.course_layout (layout_id, max_students, version_number, course_id, min_students, hp, course_name) OVERRIDING SYSTEM VALUE VALUES (11, 250, 2, 5, 50, 7.50, 'Data Storage Paradigms');
INSERT INTO public.course_layout (layout_id, max_students, version_number, course_id, min_students, hp, course_name) OVERRIDING SYSTEM VALUE VALUES (12, 250, 1, 7, 20, 7.50, 'Object Oriented Design');
INSERT INTO public.course_layout (layout_id, max_students, version_number, course_id, min_students, hp, course_name) OVERRIDING SYSTEM VALUE VALUES (13, 200, 1, 13, 20, 7.50, 'Course DA2000');
INSERT INTO public.course_layout (layout_id, max_students, version_number, course_id, min_students, hp, course_name) OVERRIDING SYSTEM VALUE VALUES (14, 200, 1, 14, 20, 7.50, 'Course DA3000');
INSERT INTO public.course_layout (layout_id, max_students, version_number, course_id, min_students, hp, course_name) OVERRIDING SYSTEM VALUE VALUES (15, 200, 1, 15, 20, 7.50, 'Course DD1320');
INSERT INTO public.course_layout (layout_id, max_students, version_number, course_id, min_students, hp, course_name) OVERRIDING SYSTEM VALUE VALUES (16, 200, 1, 16, 20, 7.50, 'Course ID1018');
INSERT INTO public.course_layout (layout_id, max_students, version_number, course_id, min_students, hp, course_name) OVERRIDING SYSTEM VALUE VALUES (17, 200, 1, 17, 20, 7.50, 'Course IV1360');
INSERT INTO public.course_layout (layout_id, max_students, version_number, course_id, min_students, hp, course_name) OVERRIDING SYSTEM VALUE VALUES (18, 200, 1, 18, 20, 7.50, 'Course SF1624');
INSERT INTO public.course_layout (layout_id, max_students, version_number, course_id, min_students, hp, course_name) OVERRIDING SYSTEM VALUE VALUES (19, 200, 1, 19, 20, 7.50, 'Course SF1688');
INSERT INTO public.course_layout (layout_id, max_students, version_number, course_id, min_students, hp, course_name) OVERRIDING SYSTEM VALUE VALUES (20, 200, 1, 20, 20, 7.50, 'Course IK1550');
INSERT INTO public.course_layout (layout_id, max_students, version_number, course_id, min_students, hp, course_name) OVERRIDING SYSTEM VALUE VALUES (21, 200, 1, 21, 20, 7.50, 'Course IS1200');


--
-- TOC entry 5142 (class 0 OID 17194)
-- Dependencies: 234
-- Data for Name: course_instance; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.course_instance (instance_id, num_students, study_period, study_year, layout_id) OVERRIDING SYSTEM VALUE VALUES (3, 150, 'P1', 2025, 9);
INSERT INTO public.course_instance (instance_id, num_students, study_period, study_year, layout_id) OVERRIDING SYSTEM VALUE VALUES (4, 200, 'P2', 2025, 11);
INSERT INTO public.course_instance (instance_id, num_students, study_period, study_year, layout_id) OVERRIDING SYSTEM VALUE VALUES (5, 180, 'P2', 2025, 7);
INSERT INTO public.course_instance (instance_id, num_students, study_period, study_year, layout_id) OVERRIDING SYSTEM VALUE VALUES (6, 160, 'P3', 2025, 12);


--
-- TOC entry 5132 (class 0 OID 17136)
-- Dependencies: 224
-- Data for Name: department; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.department (department_id, department_name, manager_id) OVERRIDING SYSTEM VALUE VALUES (1, 'Computer Science', NULL);
INSERT INTO public.department (department_id, department_name, manager_id) OVERRIDING SYSTEM VALUE VALUES (2, 'Mathematics', NULL);
INSERT INTO public.department (department_id, department_name, manager_id) OVERRIDING SYSTEM VALUE VALUES (3, 'Electrical Engineering', NULL);
INSERT INTO public.department (department_id, department_name, manager_id) OVERRIDING SYSTEM VALUE VALUES (4, 'Human Centered Technology', NULL);
INSERT INTO public.department (department_id, department_name, manager_id) OVERRIDING SYSTEM VALUE VALUES (5, 'Intelligent Systems', NULL);


--
-- TOC entry 5134 (class 0 OID 17144)
-- Dependencies: 226
-- Data for Name: job_title; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.job_title (job_id, job_title) OVERRIDING SYSTEM VALUE VALUES (1, 'Professor');
INSERT INTO public.job_title (job_id, job_title) OVERRIDING SYSTEM VALUE VALUES (2, 'Lecturer');
INSERT INTO public.job_title (job_id, job_title) OVERRIDING SYSTEM VALUE VALUES (3, 'TA');
INSERT INTO public.job_title (job_id, job_title) OVERRIDING SYSTEM VALUE VALUES (4, 'Assistant Professor');
INSERT INTO public.job_title (job_id, job_title) OVERRIDING SYSTEM VALUE VALUES (5, 'PhD Student');


--
-- TOC entry 5136 (class 0 OID 17152)
-- Dependencies: 228
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.person (person_id, personal_number, first_name, last_name, phone_no, adress_name, zip, city, country) OVERRIDING SYSTEM VALUE VALUES (1, '195201010000', 'Leif                                              ', 'Linback', '0787904425', 'Kthgatan 23', '11855', 'Stockholm', 'Sweden');
INSERT INTO public.person (person_id, personal_number, first_name, last_name, phone_no, adress_name, zip, city, country) OVERRIDING SYSTEM VALUE VALUES (2, '198201010000', 'Paris                                             ', 'Carbone', '0731234567', 'Kthgatan 1', '11655', 'Stockholm', 'Sweden');
INSERT INTO public.person (person_id, personal_number, first_name, last_name, phone_no, adress_name, zip, city, country) OVERRIDING SYSTEM VALUE VALUES (3, '198201010400', 'Niharika                                          ', 'Gauraha', '0731236567', 'Kthgatan 2', '11255', 'Stockholm', 'Sweden');
INSERT INTO public.person (person_id, personal_number, first_name, last_name, phone_no, adress_name, zip, city, country) OVERRIDING SYSTEM VALUE VALUES (4, '199201010400', 'Adam                                              ', 'Doe', '0735236567', 'Kthgatan 3', '11255', 'Stockholm', 'Sweden');
INSERT INTO public.person (person_id, personal_number, first_name, last_name, phone_no, adress_name, zip, city, country) OVERRIDING SYSTEM VALUE VALUES (5, '199201010450', 'Brian                                             ', 'Doe', '0735246567', 'Kthgatan 4', '11255', 'Stockholm', 'Sweden');
INSERT INTO public.person (person_id, personal_number, first_name, last_name, phone_no, adress_name, zip, city, country) OVERRIDING SYSTEM VALUE VALUES (6, '200701056848', 'Jacqueline                                        ', 'Spence', '0781578685', 'Ap #234-9600 Lacinia St.', '68364', 'Alingsas', 'Sweden');
INSERT INTO public.person (person_id, personal_number, first_name, last_name, phone_no, adress_name, zip, city, country) OVERRIDING SYSTEM VALUE VALUES (7, '191407075387', 'Sylvia                                            ', 'Workman', '0706687786', 'Ap #811-7516 Ornare, Ave', '43815', 'Boras', 'Sweden');
INSERT INTO public.person (person_id, personal_number, first_name, last_name, phone_no, adress_name, zip, city, country) OVERRIDING SYSTEM VALUE VALUES (8, '194412253568', 'Florian                                           ', 'Hoffman', '0716821464', '8974 Iaculis Ave', '59320', 'Vetlanda', 'Sweden');
INSERT INTO public.person (person_id, personal_number, first_name, last_name, phone_no, adress_name, zip, city, country) OVERRIDING SYSTEM VALUE VALUES (9, '198606083485', 'Karen                                             ', 'Dillard', '0751516823', '8252 Lectus Road', '62567', 'Mora', 'Sweden');
INSERT INTO public.person (person_id, personal_number, first_name, last_name, phone_no, adress_name, zip, city, country) OVERRIDING SYSTEM VALUE VALUES (10, '198512294246', 'Frieda                                            ', 'Wolfe', '0741404263', '8145 Mauris St.', '44571', 'Tranas', 'Sweden');
INSERT INTO public.person (person_id, personal_number, first_name, last_name, phone_no, adress_name, zip, city, country) OVERRIDING SYSTEM VALUE VALUES (11, '196212238771', 'Benedikt                                          ', 'Bryan', '0744153680', 'P.O. Box 666, 874 Aliquam Av.', '47057', 'Upplands Vasby', 'Sweden');
INSERT INTO public.person (person_id, personal_number, first_name, last_name, phone_no, adress_name, zip, city, country) OVERRIDING SYSTEM VALUE VALUES (12, '200906061773', 'Diana                                             ', 'Hodges', '0792004636', '335-2776 Sit Road', '88434', 'Soderhamn', 'Sweden');
INSERT INTO public.person (person_id, personal_number, first_name, last_name, phone_no, adress_name, zip, city, country) OVERRIDING SYSTEM VALUE VALUES (13, '194606005527', 'Horst                                             ', 'Fox', '0718638812', 'Ap #638-9786 Eros St.', '46943', 'Nassjo', 'Sweden');
INSERT INTO public.person (person_id, personal_number, first_name, last_name, phone_no, adress_name, zip, city, country) OVERRIDING SYSTEM VALUE VALUES (14, '200904078530', 'Rainer                                            ', 'Mejia', '0784065322', 'Ap #176-3224 Nullam Av.', '22208', 'Vetlanda', 'Sweden');
INSERT INTO public.person (person_id, personal_number, first_name, last_name, phone_no, adress_name, zip, city, country) OVERRIDING SYSTEM VALUE VALUES (15, '198501089231', 'Uta                                               ', 'Wilkerson', '0781301232', '120-1422 Imperdiet Rd.', '82637', 'Akersberga', 'Sweden');
INSERT INTO public.person (person_id, personal_number, first_name, last_name, phone_no, adress_name, zip, city, country) OVERRIDING SYSTEM VALUE VALUES (16, '195504061453', 'Nils                                              ', 'Rose', '0744396824', 'Ap #979-8491 Fusce Road', '55421', 'Mora', 'Sweden');
INSERT INTO public.person (person_id, personal_number, first_name, last_name, phone_no, adress_name, zip, city, country) OVERRIDING SYSTEM VALUE VALUES (17, '200108042043', 'Dietrich                                          ', 'Lane', '0748226866', 'Ap #101-6151 Vivamus St.', '48628', 'Mjolby', 'Sweden');
INSERT INTO public.person (person_id, personal_number, first_name, last_name, phone_no, adress_name, zip, city, country) OVERRIDING SYSTEM VALUE VALUES (18, '200802080642', 'Wilhelm                                           ', 'Alvarez', '0756559818', 'P.O. Box 468, 6789 Quisque Road', '98541', 'Norrkoping', 'Sweden');
INSERT INTO public.person (person_id, personal_number, first_name, last_name, phone_no, adress_name, zip, city, country) OVERRIDING SYSTEM VALUE VALUES (19, '196812227816', 'Boris                                             ', 'Hebert', '0767114574', '118-3664 Faucibus Av.', '67861', 'Varnamo', 'Sweden');
INSERT INTO public.person (person_id, personal_number, first_name, last_name, phone_no, adress_name, zip, city, country) OVERRIDING SYSTEM VALUE VALUES (20, '197112251880', 'Susanne                                           ', 'Jordan', '0753296953', 'Ap #426-7126 Egestas. Road', '47364', 'Mora', 'Sweden');
INSERT INTO public.person (person_id, personal_number, first_name, last_name, phone_no, adress_name, zip, city, country) OVERRIDING SYSTEM VALUE VALUES (21, '194612234532', 'Carolin                                           ', 'Foster', '0723253452', '167-7904 Nulla. Avenue', '74684', 'Ludvika', 'Sweden');


--
-- TOC entry 5144 (class 0 OID 17212)
-- Dependencies: 236
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.employee (worker_id, employment_id, email, job_id, department_id, person_id, supervisor_id) OVERRIDING SYSTEM VALUE VALUES (2, 'EMID500001', 'leilin@uni.com', 2, 1, 1, NULL);
INSERT INTO public.employee (worker_id, employment_id, email, job_id, department_id, person_id, supervisor_id) OVERRIDING SYSTEM VALUE VALUES (3, 'EMID500002', 'parcar@uni.com', 4, 1, 2, NULL);
INSERT INTO public.employee (worker_id, employment_id, email, job_id, department_id, person_id, supervisor_id) OVERRIDING SYSTEM VALUE VALUES (4, 'EMID500003', 'nihgau@uni.com', 2, 1, 3, NULL);
INSERT INTO public.employee (worker_id, employment_id, email, job_id, department_id, person_id, supervisor_id) OVERRIDING SYSTEM VALUE VALUES (5, 'EMID500004', 'adadoe@uni.com', 3, 1, 4, NULL);
INSERT INTO public.employee (worker_id, employment_id, email, job_id, department_id, person_id, supervisor_id) OVERRIDING SYSTEM VALUE VALUES (6, 'EMID500005', 'bridoe@uni.com', 5, 1, 5, NULL);
INSERT INTO public.employee (worker_id, employment_id, email, job_id, department_id, person_id, supervisor_id) OVERRIDING SYSTEM VALUE VALUES (7, 'EMID500006', 'jacspe@uni.com', 1, 2, 6, NULL);
INSERT INTO public.employee (worker_id, employment_id, email, job_id, department_id, person_id, supervisor_id) OVERRIDING SYSTEM VALUE VALUES (8, 'EMID500007', 'sylwor@uni.com', 3, 3, 7, NULL);
INSERT INTO public.employee (worker_id, employment_id, email, job_id, department_id, person_id, supervisor_id) OVERRIDING SYSTEM VALUE VALUES (9, 'EMID500008', 'flohff@uni.com', 5, 4, 8, NULL);
INSERT INTO public.employee (worker_id, employment_id, email, job_id, department_id, person_id, supervisor_id) OVERRIDING SYSTEM VALUE VALUES (10, 'EMID500009', 'kardil@uni.com', 2, 5, 9, NULL);
INSERT INTO public.employee (worker_id, employment_id, email, job_id, department_id, person_id, supervisor_id) OVERRIDING SYSTEM VALUE VALUES (11, 'EMID500010', 'friwol@uni.com', 1, 2, 10, NULL);
INSERT INTO public.employee (worker_id, employment_id, email, job_id, department_id, person_id, supervisor_id) OVERRIDING SYSTEM VALUE VALUES (12, 'EMID500011', 'benbry@uni.com', 3, 3, 11, NULL);
INSERT INTO public.employee (worker_id, employment_id, email, job_id, department_id, person_id, supervisor_id) OVERRIDING SYSTEM VALUE VALUES (13, 'EMID500012', 'dianho@uni.com', 4, 4, 12, NULL);
INSERT INTO public.employee (worker_id, employment_id, email, job_id, department_id, person_id, supervisor_id) OVERRIDING SYSTEM VALUE VALUES (14, 'EMID500013', 'horsfo@uni.com', 5, 5, 13, NULL);
INSERT INTO public.employee (worker_id, employment_id, email, job_id, department_id, person_id, supervisor_id) OVERRIDING SYSTEM VALUE VALUES (15, 'EMID500014', 'raimej@uni.com', 2, 2, 14, NULL);
INSERT INTO public.employee (worker_id, employment_id, email, job_id, department_id, person_id, supervisor_id) OVERRIDING SYSTEM VALUE VALUES (16, 'EMID500015', 'utawil@uni.com', 3, 3, 15, NULL);
INSERT INTO public.employee (worker_id, employment_id, email, job_id, department_id, person_id, supervisor_id) OVERRIDING SYSTEM VALUE VALUES (17, 'EMID500016', 'nilros@uni.com', 1, 4, 16, NULL);
INSERT INTO public.employee (worker_id, employment_id, email, job_id, department_id, person_id, supervisor_id) OVERRIDING SYSTEM VALUE VALUES (18, 'EMID500017', 'dielan@uni.com', 5, 5, 17, NULL);
INSERT INTO public.employee (worker_id, employment_id, email, job_id, department_id, person_id, supervisor_id) OVERRIDING SYSTEM VALUE VALUES (19, 'EMID500018', 'wilalv@uni.com', 2, 2, 18, NULL);
INSERT INTO public.employee (worker_id, employment_id, email, job_id, department_id, person_id, supervisor_id) OVERRIDING SYSTEM VALUE VALUES (20, 'EMID500019', 'borheb@uni.com', 4, 3, 19, NULL);
INSERT INTO public.employee (worker_id, employment_id, email, job_id, department_id, person_id, supervisor_id) OVERRIDING SYSTEM VALUE VALUES (21, 'EMID500020', 'susjor@uni.com', 3, 4, 20, NULL);
INSERT INTO public.employee (worker_id, employment_id, email, job_id, department_id, person_id, supervisor_id) OVERRIDING SYSTEM VALUE VALUES (22, 'EMID500021', 'carfos@uni.com', 1, 5, 21, NULL);


--
-- TOC entry 5140 (class 0 OID 17175)
-- Dependencies: 232
-- Data for Name: teaching_activity; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.teaching_activity (activity_id, activity_name, factor) OVERRIDING SYSTEM VALUE VALUES (1, 'Lecture', 3.60);
INSERT INTO public.teaching_activity (activity_id, activity_name, factor) OVERRIDING SYSTEM VALUE VALUES (2, 'Lab', 2.40);
INSERT INTO public.teaching_activity (activity_id, activity_name, factor) OVERRIDING SYSTEM VALUE VALUES (3, 'Tutorial', 2.40);
INSERT INTO public.teaching_activity (activity_id, activity_name, factor) OVERRIDING SYSTEM VALUE VALUES (4, 'Seminar', 1.80);


--
-- TOC entry 5146 (class 0 OID 17264)
-- Dependencies: 238
-- Data for Name: planned_activity; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.planned_activity (activity_id, instance_id, planned_hours) VALUES (1, 3, 150);
INSERT INTO public.planned_activity (activity_id, instance_id, planned_hours) VALUES (2, 3, 100);
INSERT INTO public.planned_activity (activity_id, instance_id, planned_hours) VALUES (3, 3, 0);
INSERT INTO public.planned_activity (activity_id, instance_id, planned_hours) VALUES (4, 3, 50);
INSERT INTO public.planned_activity (activity_id, instance_id, planned_hours) VALUES (1, 4, 150);
INSERT INTO public.planned_activity (activity_id, instance_id, planned_hours) VALUES (2, 4, 0);
INSERT INTO public.planned_activity (activity_id, instance_id, planned_hours) VALUES (3, 4, 200);
INSERT INTO public.planned_activity (activity_id, instance_id, planned_hours) VALUES (4, 4, 0);
INSERT INTO public.planned_activity (activity_id, instance_id, planned_hours) VALUES (1, 5, 200);
INSERT INTO public.planned_activity (activity_id, instance_id, planned_hours) VALUES (2, 5, 100);
INSERT INTO public.planned_activity (activity_id, instance_id, planned_hours) VALUES (3, 5, 150);
INSERT INTO public.planned_activity (activity_id, instance_id, planned_hours) VALUES (4, 5, 0);
INSERT INTO public.planned_activity (activity_id, instance_id, planned_hours) VALUES (1, 6, 100);
INSERT INTO public.planned_activity (activity_id, instance_id, planned_hours) VALUES (2, 6, 50);
INSERT INTO public.planned_activity (activity_id, instance_id, planned_hours) VALUES (3, 6, 100);
INSERT INTO public.planned_activity (activity_id, instance_id, planned_hours) VALUES (4, 6, 50);


--
-- TOC entry 5148 (class 0 OID 17295)
-- Dependencies: 240
-- Data for Name: allocation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (1, 2, 5, 80);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (1, 3, 5, 40);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (1, 4, 5, 60);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (1, 5, 5, 20);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (1, 6, 5, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (2, 2, 5, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (2, 3, 5, 30);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (2, 4, 5, 20);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (2, 5, 5, 50);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (2, 6, 5, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (3, 2, 5, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (3, 3, 5, 40);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (3, 4, 5, 70);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (3, 5, 5, 40);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (3, 6, 5, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (4, 2, 5, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (4, 3, 5, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (4, 4, 5, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (4, 5, 5, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (4, 6, 5, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (1, 2, 6, 50);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (1, 3, 6, 30);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (1, 4, 6, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (1, 5, 6, 20);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (1, 6, 6, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (2, 2, 6, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (2, 3, 6, 20);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (2, 4, 6, 40);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (2, 5, 6, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (2, 6, 6, 40);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (3, 2, 6, 10);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (3, 3, 6, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (3, 4, 6, 20);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (3, 5, 6, 20);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (3, 6, 6, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (4, 2, 6, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (4, 3, 6, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (4, 4, 6, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (4, 5, 6, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (4, 6, 6, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (1, 2, 4, 100);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (1, 3, 4, 50);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (1, 4, 4, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (1, 5, 4, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (1, 6, 4, 50);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (2, 2, 4, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (2, 3, 4, 40);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (2, 4, 4, 40);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (2, 5, 4, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (2, 6, 4, 20);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (3, 2, 4, 30);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (3, 3, 4, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (3, 4, 4, 40);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (3, 5, 4, 80);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (3, 6, 4, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (4, 2, 4, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (4, 3, 4, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (4, 4, 4, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (4, 5, 4, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (4, 6, 4, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (1, 2, 3, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (1, 3, 3, 100);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (1, 4, 3, 50);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (1, 5, 3, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (1, 6, 3, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (2, 2, 3, 50);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (2, 3, 3, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (2, 4, 3, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (2, 5, 3, 50);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (2, 6, 3, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (3, 2, 3, 70);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (3, 3, 3, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (3, 4, 3, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (3, 5, 3, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (3, 6, 3, 80);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (4, 2, 3, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (4, 3, 3, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (4, 4, 3, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (4, 5, 3, 0);
INSERT INTO public.allocation (activity_id, worker_id, instance_id, allocated_hours) VALUES (4, 6, 3, 0);


--
-- TOC entry 5149 (class 0 OID 17313)
-- Dependencies: 241
-- Data for Name: allocation_limit; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.allocation_limit (max_allocation) VALUES (4);


--
-- TOC entry 5138 (class 0 OID 17166)
-- Dependencies: 230
-- Data for Name: skill; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.skill (skill_id, skill_name, description) OVERRIDING SYSTEM VALUE VALUES (1, 'Python', 'Programming in Python for applications and data analysis');
INSERT INTO public.skill (skill_id, skill_name, description) OVERRIDING SYSTEM VALUE VALUES (2, 'Database Design', 'Understanding relational schema design and SQL queries');
INSERT INTO public.skill (skill_id, skill_name, description) OVERRIDING SYSTEM VALUE VALUES (3, 'Machine Learning', 'Basic ML algorithms and model training');
INSERT INTO public.skill (skill_id, skill_name, description) OVERRIDING SYSTEM VALUE VALUES (4, 'Teaching', 'Experience teaching students at university level');


--
-- TOC entry 5145 (class 0 OID 17247)
-- Dependencies: 237
-- Data for Name: employee_skill; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5147 (class 0 OID 17282)
-- Dependencies: 239
-- Data for Name: salary; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.salary (start_date, worker_id, salary) VALUES ('2025-01-01', 2, 55000);
INSERT INTO public.salary (start_date, worker_id, salary) VALUES ('2025-01-01', 3, 72000);
INSERT INTO public.salary (start_date, worker_id, salary) VALUES ('2025-01-01', 4, 52000);
INSERT INTO public.salary (start_date, worker_id, salary) VALUES ('2025-01-01', 5, 30000);
INSERT INTO public.salary (start_date, worker_id, salary) VALUES ('2025-01-01', 6, 28000);



--
-- TOC entry 5155 (class 0 OID 0)
-- Dependencies: 219
-- Name: course_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--


SELECT pg_catalog.setval('public.course_course_id_seq', 21, true);


--
-- TOC entry 5156 (class 0 OID 0)
-- Dependencies: 233
-- Name: course_instance_instance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.course_instance_instance_id_seq', 17, true);


--
-- TOC entry 5157 (class 0 OID 0)
-- Dependencies: 221
-- Name: course_layout_layout_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.course_layout_layout_id_seq', 21, true);


--
-- TOC entry 5158 (class 0 OID 0)
-- Dependencies: 223
-- Name: department_department_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.department_department_id_seq', 5, true);


--
-- TOC entry 5159 (class 0 OID 0)
-- Dependencies: 235
-- Name: employee_worker_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employee_worker_id_seq', 22, true);


--
-- TOC entry 5160 (class 0 OID 0)
-- Dependencies: 225
-- Name: job_title_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.job_title_job_id_seq', 5, true);


--
-- TOC entry 5161 (class 0 OID 0)
-- Dependencies: 227
-- Name: person_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.person_person_id_seq', 21, true);


--
-- TOC entry 5162 (class 0 OID 0)
-- Dependencies: 229
-- Name: skill_skill_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.skill_skill_id_seq', 4, true);


--
-- TOC entry 5163 (class 0 OID 0)
-- Dependencies: 231
-- Name: teaching_activity_activity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teaching_activity_activity_id_seq', 4, true);


-- Completed on 2026-01-06 14:09:07

--
-- PostgreSQL database dump complete
--

\unrestrict hplA5dfDrdcy7afwSL5MNOaw7Y7PpYIvisYn1g1ry0Iu21b3bj8p2YXfWxGHLmI

\unrestrict hplA5dfDrdcy7afwSL5MNOaw7Y7PpYIvisYn1g1ry0Iu21b3bj8p2YXfWxGHLmI

