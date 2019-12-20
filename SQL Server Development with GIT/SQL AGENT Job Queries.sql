SELECT *
FROM msdb.dbo.sysjobs;


SELECT
	j.[name]
,	a.*
FROM msdb.dbo.sysjobactivity a
JOIN msdb.dbo.sysjobs j
ON j.job_id = a.job_id;


DECLARE @JOB_NAME SYSNAME = N'SAMPLE JOB RUNS IN SECONDS';
SELECT
	h.*
FROM msdb.dbo.sysjobhistory h
JOIN msdb.dbo.sysjobs j
ON j.job_id = h.job_id
WHERE j.[name] = @JOB_NAME;
