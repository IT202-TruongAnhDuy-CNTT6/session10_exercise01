CREATE DATABASE ss10;
USE ss10;

CREATE VIEW Reception_Patient_View AS
SELECT 
    Patient_ID,
    Full_Name,
    Age,
    Room_Number
FROM Patients
WHERE Age >= 0
WITH CHECK OPTION;
SELECT * FROM Reception_Patient_View;
UPDATE Reception_Patient_View
SET Age = 31
WHERE Patient_ID = 1;
UPDATE Reception_Patient_View
SET Age = -5
WHERE Patient_ID = 1;

/*
WITH CHECK OPTION sẽ chặn câu lệnh UPDATE làm dữ liệu không còn thỏa điều kiện Age >= 0.
View chỉ hiển thị các cột an toàn, ẩn HIV_Status và Mental_Health_History.
*/