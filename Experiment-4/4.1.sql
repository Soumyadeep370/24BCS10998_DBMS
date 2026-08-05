SELECT
    s1.St_id,
    s1.St_Name,
    s1.Department,
    s2.St_id,
    s2.St_Name,
    s2.Department
FROM Student AS s1
INNER JOIN Student AS s2
ON s1.Department = s2.Department
AND s1.St_id <> s2.St_id;
