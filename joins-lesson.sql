SELECT ps.PatientId,
       ps.Ward,
       h.Hospital,
       H.HospitalType
FROM   PatientStay AS ps
       INNER JOIN
       DimHospital AS h
       ON ps.Hospital = h.Hospital
WHERE  h.HospitalType = 'Teaching';

SELECT  
ps.patientid,
ps.ward,
h.hospital,
ps.Tariff
         COUNT(*) AS NumberOfPatients
         SUM (ps.Tariff) AS TotalTariff
         AVG(ps.Tariff) AS AverageTariff
FROM     PatientStay AS ps

         DimHospital AS h
         ON ps.Hospital = h.Hospital
WHERE h.hospital = 'Kingston'
ORDER BY ps.patientID
