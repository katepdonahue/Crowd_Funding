CREATE TABLE projects
(id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT, title TEXT, category TEXT, CHECK (category IN ("Music", "Books", "Charity")), funding_goal INTEGER, start_date DATE, end_date DATE);
CREATE TABLE users
(id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT, name TEXT, age INTEGER);
CREATE TABLE pledge
(id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT, amount INTEGER, user_id INTEGER, project_id INTEGER);