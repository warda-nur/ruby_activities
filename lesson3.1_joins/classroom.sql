CREATE TABLE classrooms (	
	id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	student_id integer,
	section character varying(60)
	);
	
	
	INSERT INTO classrooms (student_id, section)
	VALUES (1, 'A');
	
	INSERT INTO classrooms (student_id, section)
	VALUES (2, 'A');
	
	INSERT INTO classrooms (student_id, section)
	VALUES (3, 'B');
	
	INSERT INTO classrooms (student_id, section)
	VALUES (4, 'C');
	
	INSERT INTO classrooms (student_id, section)
	VALUES (5, 'B');
	
	INSERT INTO classrooms (student_id, section)
	VALUES (6, 'A');
	
	INSERT INTO classrooms (student_id, section)
	VALUES (7, 'C');
	
	INSERT INTO classrooms (student_id, section)
	VALUES (8, 'B');
	
	INSERT INTO classrooms (student_id, section)
	VALUES (9, 'B');
	
	INSERT INTO classrooms (student_id, section)
	VALUES (10, 'C');
	
	
	
	SELECT s.id, s.first_name, s.last_name, c.student_id, c.section FROM students AS s INNER JOIN classrooms AS c ON c.student_id = s.id;
	SELECT s.id, s.first_name, s.last_name, c.student_id, c.section FROM students AS s LEFT JOIN classrooms AS c ON c.student_id = s.id;
	SELECT s.id, s.first_name, s.last_name, c.student_id, c.section FROM students AS s RIGHT JOIN classrooms AS c ON c.student_id = s.id;
	SELECT s.id, s.first_name, s.last_name, c.student_id, c.section FROM students AS s FULL JOIN classrooms AS c ON c.student_id = s.id;
