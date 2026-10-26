SELECT   ps.Hospital,
         ps.WArd,
         COUNT(*) AS NumberOfPatients,
         sum(ps.tariff) AS tarrif
FROM     PatientStay AS PS
GROUP BY ps.Hospital, ps.Ward;