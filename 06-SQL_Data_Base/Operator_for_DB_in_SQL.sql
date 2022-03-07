-- -----------SECOND ACTIVE LEARNING -------------
-- SELECT Name, Students AS Population
-- FROM Colleges
-- WHERE City = 'Cambridge'

-- -----------SECOND ACTIVE LEARNING -------------
-- SELECT	FirstName,
-- 		LastName,
--        Birthdate,
--        timestampdiff(YEAR, Birthdate,now())
-- FROM Students

-- -----------THIRD ACTIVE LEARNING -------------
-- SELECT	FirstName,
-- 		LastName, Region
-- FROM Students
-- WHERE Region = 'Tx'

-- -----------FOURTH ACTIVE LEARNING -------------
-- SELECT	*
-- FROM Students
-- WHERE Phone IS NOT NULL

-- -----------INNER JOINS -- Seleciona elementos comunes entre dos tablas -------------
-- SELECT * -- Everithing
-- FROM Students
-- WHERE
-- 	Email LIKE '%gmail%'
--  OR
--  Phone LIKE '%451%' -- With are code 451

-- -----------INNER JOIN / Seleciona elementos comunes entre dos tablas -------------
-- SELECT S.Students, S.FirstName, S.LastName, C.CollegeID, C.Name
-- FROM Students S
-- INNER JOIN Colleges S
-- ON S.CollegeID = C.CollegeID

-- -----------SELF JOIN /  -------------
-- SELECT concat(S.FirstName, ' ', LastName)
-- FROM Students AS t1
-- INNER JOIN table AS t2
-- ON t1.column = t2.column

-- -----------JOIN MULTIPLE TABLES  -------------
SELECT *
FROM Books b
JOIN CollegeBooks cb
	ON b.BookID = cb.BookID
JOIN Colleges c
	ON c.CollegeID = cb.CollegeID

-- NOTE1: Study about Regular Expresions (https://regexr.com/) Pace to practice
