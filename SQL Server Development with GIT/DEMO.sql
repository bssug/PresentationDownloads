/*


	DEMO for USER_GROUP database

*/

-- add member
INSERT dbo.MEMBER (
 	[FIRST_NAME]
,	[LAST_NAME]
)
VALUES (
	'Raymond'
,	'Barley'
)

SELECT * FROM dbo.MEMBER;

-- add member email
INSERT dbo.MEMBER_EMAIL (
 	[MEMBER_ID]
,	[EMAIL_TYPE]
,	[EMAIL_ADDRESS]
)
VALUES (
	1
,	'BUSINESS'
,	'raymondbarley@bssug.org'
)

INSERT dbo.MEMBER_EMAIL (
 	[MEMBER_ID]
,	[EMAIL_TYPE]
,	[EMAIL_ADDRESS]
)
VALUES (
	1
,	'PERSONAL'
,	'raymondbarley@gmail.com'
)

SELECT
	CONCAT(m.FIRST_NAME, ' ', m.LAST_NAME) AS MEMBER_NAME
,	e.[EMAIL_TYPE]
,	e.[EMAIL_ADDRESS]
FROM dbo.MEMBER_EMAIL e
JOIN dbo.MEMBER m
	ON m.MEMBER_ID = e.MEMBER_ID
