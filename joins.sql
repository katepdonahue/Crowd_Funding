-- Select the titles of all projects and their pledge amounts.
SELECT projects.title, SUM(pledges.amount) AS total_pledge
FROM projects
JOIN pledges
ON projects.id = pledges.project_id
GROUP BY projects.id;

-- Select the user name, age, and pledge amount for all pledges.
SELECT pledges.amount, users.name, users.age 
FROM pledges
LEFT JOIN users
ON pledges.user_id = users.id
GROUP BY pledges.amount;

-- Select the titles of all projects that have met their funding goal.
SELECT projects.title, projects.funding_goal, SUM(pledges.amount) AS money_raised
FROM pledges
JOIN projects
ON pledges.project_id = projects.id
GROUP BY projects.id
HAVING SUM(pledges.amount) >= projects.funding_goal;

-- Select user names and amounts of all pledges. Order them by the amount.
SELECT users.name, SUM(pledges.amount) as total_pledges
FROM users
JOIN pledges
ON users.id = pledges.user_id
GROUP BY users.name
ORDER BY total_pledges;

-- Select the category names, and pledge amounts of all pledges in the music category.
SELECT pledges.amount, projects.category, projects.title
FROM projects
JOIN pledges
ON projects.id = pledges.project_id
WHERE projects.category = "Music"
ORDER BY pledges.amount;

-- Select the category names and the sum total of the pledge amounts of all the pledges in the book category.
SELECT projects.category, SUM(pledges.amount)
FROM projects
JOIN pledges
ON projects.id = pledges.project_id
WHERE projects.category = "Books";