CREATE DATABASE IF NOT EXISTS TeambeyDB;
USE TeambeyDB;
-- Create Users Table
CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    is_supervisor BOOLEAN NOT NULL
   );

-- Create Projects Table
CREATE TABLE Projects (
    project_id INT PRIMARY KEY AUTO_INCREMENT,
    project_name VARCHAR(255) NOT NULL,
    description TEXT,
    creator_id INT NOT NULL,
    status VARCHAR(20) DEFAULT 'Active',
    -- Add other project-related fields as needed
    FOREIGN KEY (creator_id) REFERENCES Users(user_id)
);

-- Create ProjectMembers Table
CREATE TABLE ProjectMembers (
    project_id INT,
    user_id INT,
    role VARCHAR(20) NOT NULL,
    PRIMARY KEY (project_id, user_id),
    FOREIGN KEY (project_id) REFERENCES Projects(project_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Create Messages Table
CREATE TABLE Messages (
    message_id INT PRIMARY KEY AUTO_INCREMENT,
    project_id INT NOT NULL,
    user_id INT NOT NULL,
    content TEXT NOT NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -- Add other message-related fields as needed
    FOREIGN KEY (project_id) REFERENCES Projects(project_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Create Courses Table
CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(255) NOT NULL,
    description TEXT
    -- Add other course-related fields as needed
);

-- Create CourseProjects Table
CREATE TABLE CourseProjects (
    course_id INT,
    project_id INT,
    PRIMARY KEY (course_id, project_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id),
    FOREIGN KEY (project_id) REFERENCES Projects(project_id)
);

-- Create Companies Table
CREATE TABLE Companies (
    company_id INT PRIMARY KEY AUTO_INCREMENT,
    company_name VARCHAR(255) NOT NULL
    
    -- Add other company-related fields as needed
);

-- Create Challenges Table
CREATE TABLE Challenges (
    challenge_id INT PRIMARY KEY AUTO_INCREMENT,
    company_id INT NOT NULL,
    project_id INT NOT NULL,
    -- Add other challenge-related fields as needed
    FOREIGN KEY (company_id) REFERENCES Companies(company_id),
    FOREIGN KEY (project_id) REFERENCES Projects(project_id)
);

-- Indexing for better querying
CREATE INDEX idx_project_status ON Projects(status);
CREATE INDEX idx_message_project ON Messages(project_id);
CREATE INDEX idx_course_project ON CourseProjects(project_id);
CREATE INDEX idx_challenge_company ON Challenges(company_id);

-- Use the InnoDB storage engine for transaction support
-- (This assumes MySQL; adjust accordingly for other databases)
ALTER TABLE Users ENGINE = InnoDB;
ALTER TABLE Projects ENGINE = InnoDB;
ALTER TABLE ProjectMembers ENGINE = InnoDB;
ALTER TABLE Messages ENGINE = InnoDB;
ALTER TABLE Courses ENGINE = InnoDB;
ALTER TABLE CourseProjects ENGINE = InnoDB;
ALTER TABLE Companies ENGINE = InnoDB;
ALTER TABLE Challenges ENGINE = InnoDB;
