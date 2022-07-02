
-- PART 4
SELECT email_domain,
       city,
       learn_cpp,
       learn_sql,
       learn_html,
       learn_javascript,
       learn_java
FROM users
JOIN progress
  ON users.user_id = progress.user_id
GROUP BY 1, 2
  HAVING users.city = 'New York'
  OR users.city = 'Chicago'
  AND progress.learn_cpp IS NOT NULL
  AND progress.learn_sql IS NOT NULL
  AND progress.learn_html IS NOT NULL
  AND progress.learn_javascript IS NOT NULL
  AND progress.learn_java IS NOT NULL
ORDER BY users.city;

-- PART 3
SELECT sign_up_at, COUNT(sign_up_at)
FROM users
GROUP BY strftime('%H', sign_up_at)
ORDER BY strftime('%H', sign_up_at);

-- PART 2
SELECT DISTINCT email_domain FROM users LIMIT 25;

SELECT COUNT(*)
FROM users
WHERE city = 'New York';

SELECT mobile_app, COUNT(mobile_app)
FROM users
GROUP BY 1;

-- PART 1
-- SELECT * FROM users LIMIT 25;
-- SELECT * FROM progress LIMIT 25;
