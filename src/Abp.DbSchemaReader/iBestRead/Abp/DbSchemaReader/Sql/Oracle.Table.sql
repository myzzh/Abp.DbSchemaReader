SELECT
	T.TABLE_NAME AS "Name",
	'T' AS "TypeName",
	NVL ( C.COMMENTS, T.TABLE_NAME ) AS "Description" 
FROM
	USER_TABLES T
	LEFT JOIN USER_TAB_COMMENTS C ON T.TABLE_NAME = C.TABLE_NAME UNION ALL
SELECT
	T.VIEW_NAME AS "Name",
	'V' AS "TypeName",
	NVL ( C.COMMENTS, T.VIEW_NAME ) AS "Description" 
FROM
	USER_VIEWS T
	LEFT JOIN USER_TAB_COMMENTS C ON T.VIEW_NAME = C.TABLE_NAME