SELECT 
 TimeGenerated AS ����,
 ComputerName AS �R���s���[�^��,
 SID,
 Message AS ���e,
 TO_UTCTIME(TimeGenerated) AS ����(UTC)
INTO 
 %OUTPUT%
FROM 
 %INPUT%
WHERE
 SourceName = 'EventLog' AND
 EventID = '6008'
