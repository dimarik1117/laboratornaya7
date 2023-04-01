CREATE TABLE subject
(
	name varchar PRIMARY KEY
);

CREATE TABLE teacher
(
	id int PRIMARY KEY,
	full_name varchar NOT NULL,
	subject varchar REFERENCES subject(name) NOT NULL
);

CREATE TABLE timetable_upper
(
    id int PRIMARY KEY,
    day varchar NOT NULL,
    subject varchar REFERENCES subject(name),
    room_numb varchar,
    start_time varchar NOT NULL
);

CREATE TABLE timetable_lower
(
    id int PRIMARY KEY,
    day varchar NOT NULL,
    subject varchar REFERENCES subject(name),
    room_numb varchar,
    start_time varchar NOT NULL
)