/*MS SERVER*/
SELECT *
FROM Patients
WHERE conditions LIKE '%DIAB1%' AND conditions NOT LIKE '_DIAB1'

/*MT SQL*/
select patient_id,patient_name,conditions 
from patients 
where conditions like "% DIAB1%" 
or conditions like "DIAB1%"
