
INSERT INTO department (department_name)
VALUES
('Computer Science'),
('Mathematics'),
('Electrical Engineering'),
('Human Centered Technology'),
('Intelligent Systems');
--Insert
INSERT INTO teaching_activity (activity_name, factor)
VALUES
('LECTURE', 3.6),
('LAB', 2.4),
('TUTORIAL', 2.4),
('SEMINAR', 1.8);

INSERT INTO person (last_name, phone_no, adress_name, zip, city, country, personal_number, first_name)
VALUES
  ('Linbäck','0787904425','Kthgatan 23','11855','Stockholm','Sweden','195201010000','Leif'),
  ('Carbone','0731234567','Kthgatan 1','11655','Stockholm','Sweden','198201010000','Paris'),
  ('Gauraha','0731236567','Kthgatan 2','11255','Stockholm','Sweden','198201010400','Niharika'),
  ('Doe','0735236567','Kthgatan 3','11255','Stockholm','Sweden','199201010400','Adam'),
  ('Doe','0735246567','Kthgatan 4','11255','Stockholm','Sweden','199201010450','Brian'),
  ('Spence','0781578685','Ap #234-9600 Lacinia St.','68364','Alingsås','Sweden','200701056848','Jacqueline'),
  ('Workman','0706687786','Ap #811-7516 Ornare, Ave','43815','Borås','Sweden','191407075387','Sylvia'),
  ('Hoffman','0716821464','8974 Iaculis Ave','59320','Vetlanda','Sweden','19441225356','Florian'),
  ('Dillard','0751516823','8252 Lectus Road','62567','Mora','Sweden','198606083485','Karen'),
  ('Wolfe','0741404263','8145 Mauris St.','44571','Tranås','Sweden','19851229424','Frieda'),
  ('Bryan','0744153680','P.O. Box 666, 874 Aliquam Av.','47057','Upplands Väsby','Sweden','19621223877','Benedikt'),
  ('Hodges','0792004636','335-2776 Sit Road','88434','Söderhamn','Sweden','200906061773','Diana'),
  ('Fox','0718638812','Ap #638-9786 Eros St.','46943','Nässjö','Sweden','194606005527','Horst'),
  ('Mejia','0784065322','Ap #176-3224 Nullam Av.','22208','Vetlanda','Sweden','200904078530','Rainer'),
  ('Wilkerson','0781301232','120-1422 Imperdiet Rd.','82637','Åkersberga','Sweden','198501089231','Uta'),
  ('Rose','0744396824','Ap #979-8491 Fusce Road','55421','Mora','Sweden','195504061453','Nils'),
  ('Lane','0748226866','Ap #101-6151 Vivamus St.','48628','Mjölby','Sweden','200108042043','Dietrich'),
  ('Alvarez','0756559818','P.O. Box 468, 6789 Quisque Road','98541','Norrköping','Sweden','200802080642','Wilhelm'),
  ('Hebert','0767114574','118-3664 Faucibus Av.','67861','Värnamo','Sweden','19681222781','Boris'),
  ('Jordan','0753296953','Ap #426-7126 Egestas. Road','47364','Mora','Sweden','19711225188','Susanne'),
  ('Foster','0723253452','167-7904 Nulla. Avenue','74684','Ludvika','Sweden','19461223453','Carolin');
INSERT INTO course (course_code)
VALUES
("CS1010"),
("CS2020"),
("IX1500"),
("IV1351"),
("ID2214"),
("IV1350"),
('DA2000'),
('DA3000'),
('DD1320'),
('ID1018'),
('IV1360'),
('SF1624'),
('SF1688'),
('IK1550'),
('IS1200');
INSERT INTO course_layout (course_name,course_id,hp,version_number,min_students,max_students)
VALUES
  ('Computer Science 2',2,7.50,1,20,150),
  ('Computer Science 2 ',2,7.50,2,25,200),
  ('Programming for Data Science',6,7.50,1,20,150),
  ('Programming for Data Science',6,7.50,2,30,200),
  ('Discrete Mathematics',4,7.50,1,50,200),  
  ('Discrete Mathematics',4,7.50,2,50,150),
  ('Data Storage Paradigms',5,7.50,1,50,300),
  ('Data Storage Paradigms',5,7.50,2,50,250),
  ('Object Oriented Design',7,7.50,1,20,250),
  ('Computer Science 1 ',1,7.50,1,25,200),
  ('Computer Science 1',1,7.50,2,30,150),
  ('Course DA2000',  (SELECT course_id FROM course WHERE course_code = 'DA2000'), 7.5, 1, 20, 200),
  ('Course DA3000',  (SELECT course_id FROM course WHERE course_code = 'DA3000'), 7.5, 1, 20, 200),
  ('Course DD1320',  (SELECT course_id FROM course WHERE course_code = 'DD1320'), 7.5, 1, 20, 200),
  ('Course ID1018',  (SELECT course_id FROM course WHERE course_code = 'ID1018'), 7.5, 1, 20, 200),
  ('Course IV1350',  (SELECT course_id FROM course WHERE course_code = 'IV1350'), 7.5, 1, 20, 200),
  ('Course IV1360',  (SELECT course_id FROM course WHERE course_code = 'IV1360'), 7.5, 1, 20, 200),
  ('Course SF1624',  (SELECT course_id FROM course WHERE course_code = 'SF1624'), 7.5, 1, 20, 200),
  ('Course SF1688',  (SELECT course_id FROM course WHERE course_code = 'SF1688'), 7.5, 1, 20, 200),
  ('Course IK1550',  (SELECT course_id FROM course WHERE course_code = 'IK1550'), 7.5, 1, 20, 200),
  ('Course IS1200',  (SELECT course_id FROM course WHERE course_code = 'IS1200'), 7.5, 1, 20, 200);
INSERT INTO employee (employment_id, email, job_id, department_id, person_id)
VALUES
('EMID500001', 'leilin@uni.com', 2, 1, 1),   
('EMID500002', 'parcar@uni.com', 4, 1, 2),   
('EMID500003', 'nihgau@uni.com', 2, 1, 3),   
('EMID500004', 'adadoe@uni.com', 3, 1, 4),   
('EMID500005', 'bridoe@uni.com', 5, 1, 5),   

('EMID500006', 'jacspe@uni.com', 1, 2, 6),
('EMID500007', 'sylwor@uni.com', 3, 3, 7),
('EMID500008', 'flohff@uni.com', 5, 4, 8),
('EMID500009', 'kardil@uni.com', 2, 5, 9),
('EMID500010', 'friwol@uni.com', 1, 2, 10),

('EMID500011', 'benbry@uni.com', 3, 3, 11),
('EMID500012', 'dianho@uni.com', 4, 4, 12),
('EMID500013', 'horsfo@uni.com', 5, 5, 13),
('EMID500014', 'raimej@uni.com', 2, 2, 14),
('EMID500015', 'utawil@uni.com', 3, 3, 15),

('EMID500016', 'nilros@uni.com', 1, 4, 16),
('EMID500017', 'dielan@uni.com', 5, 5, 17),
('EMID500018', 'wilalv@uni.com', 2, 2, 18),
('EMID500019', 'borheb@uni.com', 4, 3, 19),
('EMID500020', 'susjor@uni.com', 3, 4, 20),
('EMID500021', 'carfos@uni.com', 1, 5, 21);
