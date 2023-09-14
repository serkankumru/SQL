SELECT s.Name+' '+s.Surname, c.Name
FROM Student s, ClassRoom c
WHERE s.ClsId = c.Id

SELECT Student.Name+' '+Student.Surname, ClassRoom.Name
FROM Student 
INNER JOIN ClassRoom
On Student.ClsId = ClassRoom.Id


SELECT alanlar
FROM tablo1 INNER JOIN tablo2
ON tablo1.alan1 karþýlaþtýrma tablo2.alan1 AND
ON tablo1.alan2 karþýlaþtýrma tablo2.alan2) OR
ON tablo1.alan3 karþýlaþtýrma tablo2.alan3)


SELECT Age, COUNT (*) AS 'Yaþ Sayýsý'
FROM Student
GROUP BY Age

SELECT Age, COUNT (*) AS 'Yaþ Sayýsý'
FROM Student
WHERE Age > 22
GROUP BY Age
HAVING COUNT (*) > 2