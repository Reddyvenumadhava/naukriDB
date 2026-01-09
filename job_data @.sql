CREATE SCHEMA IF NOT EXISTS job_data;
USE job_data;
CREATE TABLE IF NOT EXISTS education (
    row_id INT AUTO_INCREMENT PRIMARY KEY,

    user_id INT NOT NULL,
    college_id INT NOT NULL,
    course_id INT NOT NULL,

    start_year INT,
    end_year INT,
    grade VARCHAR(20),

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS work_experience (
    row_id INT AUTO_INCREMENT PRIMARY KEY,

    user_id INT NOT NULL,

    company_name VARCHAR(150),
    designation VARCHAR(100),

    start_date DATE,
    end_date DATE,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS job_preferences (
    row_id INT AUTO_INCREMENT PRIMARY KEY,

    user_id INT NOT NULL,

    preferred_city_id INT,
    work_mode ENUM('REMOTE','HYBRID','ONSITE'),
    expected_salary INT,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS user_skills (
    row_id INT AUTO_INCREMENT PRIMARY KEY,

    user_id INT NOT NULL,
    skill_id INT NOT NULL,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    UNIQUE (user_id, skill_id)
);

CREATE TABLE IF NOT EXISTS user_languages (
    row_id INT AUTO_INCREMENT PRIMARY KEY,

    user_id INT NOT NULL,
    language_id INT NOT NULL,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    UNIQUE (user_id, language_id)
);
CREATE TABLE IF NOT EXISTS user_interests (
    row_id INT AUTO_INCREMENT PRIMARY KEY,

    user_id INT NOT NULL,
    interest_id INT NOT NULL,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    UNIQUE (user_id, interest_id)
);
