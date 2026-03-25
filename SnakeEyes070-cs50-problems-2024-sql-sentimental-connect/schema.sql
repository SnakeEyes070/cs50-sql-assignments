CREATE TABLE users (
    id          INT AUTO_INCREMENT PRIMARY KEY,
    first_name  VARCHAR(32) NOT NULL,
    last_name   VARCHAR(32) NOT NULL,
    username    VARCHAR(32) NOT NULL UNIQUE,
    password    VARCHAR(128) NOT NULL
);

INSERT INTO users (first_name, last_name, username, password)
VALUES
('Claudine', 'Gay', 'claudine', 'password'),
('Reid', 'Hoffman', 'reid', 'password');


CREATE TABLE schools (
    id           INT AUTO_INCREMENT PRIMARY KEY,
    name         VARCHAR(100) NOT NULL,
    type         ENUM('Primary','Secondary','Higher Education') NOT NULL,
    location     VARCHAR(100),
    founded_year YEAR
);

INSERT INTO schools (name, type, location, founded_year)
VALUES ('Harvard University', 'Higher Education', 'Cambridge, Massachusetts', 1636);


CREATE TABLE companies (
    id         INT AUTO_INCREMENT PRIMARY KEY,
    name       VARCHAR(100) NOT NULL,
    industry   ENUM('Technology', 'Education', 'Business') NOT NULL,
    location   VARCHAR(100)
);

INSERT INTO companies (name, industry, location)
VALUES ('LinkedIn', 'Technology', 'Sunnyvale, California');

CREATE TABLE connections (
    user_id           INT,
    connected_user_id INT,
    PRIMARY KEY (user_id, connected_user_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (connected_user_id) REFERENCES users(id)
);


CREATE TABLE user_schools (
    user_id        INT,
    school_id      INT,
    start_date     DATE,
    end_date       DATE,
    degree         VARCHAR(50),
    PRIMARY KEY (user_id, school_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (school_id) REFERENCES schools(id)
);

INSERT INTO user_schools (user_id, school_id, start_date, end_date, degree)
VALUES (1, 1, '1993-01-01', '1998-12-31', 'PhD');


CREATE TABLE user_companies (
    user_id      INT,
    company_id   INT,
    start_date   DATE,
    end_date     DATE,
    role         VARCHAR(100),
    PRIMARY KEY (user_id, company_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (company_id) REFERENCES companies(id)
);

INSERT INTO user_companies (user_id, company_id, start_date, end_date, role)
VALUES (2, 1, '2003-01-01', '2007-02-01', 'CEO and Chairman');
