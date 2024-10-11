SELECT firstname + lastname AS [name] , group_name
FROM Students, Groups
WHERE Students.group_id = Groups.group_id


SELECT Students.firstname, литература AS Оценки_по_литературе, Grades.date
FROM Students, Grades
WHERE Students.id = Grades.students_id and литература IS NOT NULL


SELECT group_name, химия AS Оценки_по_химии
FROM Groups, Grades, Students
WHERE Students.id = Grades.students_id and Students.group_id = Groups.group_id and химия IS NOT NULL
ORDER BY Groups.group_name


SELECT group_name AS 'Имя группы', COUNT(*) AS 'Количество студентов'
FROM Students, Groups
WHERE Students.group_id = Groups.group_id
GROUP BY group_name


SELECT firstname + ' ' + lastname, химия
FROM Students, Grades
WHERE Students.id = Grades.students_id AND
    химия > ALL (SELECT AVG (Grades.химия)
    FROM Grades);