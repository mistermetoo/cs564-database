SELECT 
	D.DIVISION_DESC, GROUP_CONCAT(DISTINCT P.STNAME)
FROM 
	DIVISION D, 
	POP_ESTIMATE_STATE_COUNTY P
WHERE 
	D.DIVISION_CD = P.DIVISION
GROUP BY 
	P.DIVISION
;
