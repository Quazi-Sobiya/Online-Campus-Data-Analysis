-- Q.1 Write a query to display all of the information inside courses table

use onlinecampus;

select * from courses;

-- Q.2 Write a query to display for each course - the course_id, price_usd, num_students, and content_duration_minutes

select course_id, price_usd , num_students, content_duration_minutes from courses;

-- Q.3 Write a query to display the :
-- a. course_title
-- b. num_students
-- c. positive_reviews + negative_reviews (name this calculation: `total_reviews` for example)
-- d. A new column representing the ratio between the total_reviews & num_students: (positive_reviews + negative_reviews) / num_students

select negative_reviews from courses;

select course_title, num_students, (positive_reviews+negative_reviews) as total_reviews ,((positive_reviews+negative_reviews)/num_students)
as ratio from courses;

-- Q.4. Write a query to display the course_id, course_title, num_lessons, content_duration_minutes, and a new column representing the average duration for each lecture (content_duration_minutes / num_lessons)

select course_id, course_title, num_lessons, content_duration_minutes, (content_duration_minutes/num_lessons) as avg_duration from courses;

-- Q.5 Write a query to display the
-- a. course_id
-- b. course_title
-- c. num_students
-- d. price_usd (the column represents price in USD)
-- e. Total course revenues in USD (num_students * price_usd)

select course_id, course_title, num_students, price_usd, (num_students*price_usd) as course_revenue from courses;

-- Q.6. Write a query to display the course_id, and course_subject concatenated with course_title

select course_id, concat(course_subject, " " , course_title) as course from courses;

-- Q.7. Write a query to display the course_id, price_usd, content_duration_minutes,
-- and a new column representing the content duration in hours (content_duration_minutes / 60)

select course_id, price_usd, content_duration_minutes, (content_duration_minutes/60) as content_duration_hours from courses;

-- Q.7. Write a query to display the distinct values in course_subject column

select distinct course_subject from courses;

-- Q.8. Write a query to display the unique values in course_level column

select distinct course_level from courses;

-- Q.9 Write a query to display the distinct combination of values in course_subject and course_level columns

select distinct course_subject , course_level from courses;

