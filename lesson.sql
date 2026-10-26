SELECT		ps.PatientID,
			ps.Hospital,
			ps.Ward,
			DATEADD(Week, -2, ps.admitteddate) AS ReminderDate,
			ps.AdmittedDate,
			ps.DischargeDate,
			DATEDIFF(DAY, ps.admitteddate, ps.DischargeDate) AS LengthOfStay,
			DATEADD(MONTH, 3, ps.dischargeDate) AS ApptDate
FROM		PatientStay AS ps
WHERE		ps.Hospital IN ('Kingston', 'PRUH')
			AND ps.Ward LIKE '%Surgery'
			AND ps.AdmittedDate BETWEEN '2024-02-27' AND '2024-02-29'
ORDER BY	ps.AdmittedDate, ps.DischargeDate;


--SELECT DATEADD(Week, -2 '2026-10-26') AS Testvalue