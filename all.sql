-- table students

CREATE TABLE hostel.students (
	id INT auto_increment NOT NULL,
	name varchar(100) NOT NULL,
    dept varchar(100) NOT NULL,
    year_joined DATE NOT NULL,
    address varchar(155) NOT NULL,
    mobile VARCHAR(20) NOT NULL,
    guardian_name varchar(100) NOT NULL,
    guardian_contact VARCHAR(20) NOT NULL,
    adm_no INT NOT NULL,
	CONSTRAINT students_PK PRIMARY KEY (id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;


-- table attendance

CREATE TABLE hostel.attendance (
	id INT auto_increment NOT NULL,
	name varchar(100) NOT NULL,
    dept varchar(100) NOT NULL,
    user_id INT NOT NULL,
    datetime TIMESTAMP NOT NULL,
    date DATE NOT NULL DEFAULT (CURRENT_DATE),
	CONSTRAINT attendance_PK PRIMARY KEY (id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;