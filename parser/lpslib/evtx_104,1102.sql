SELECT 
 TimeGenerated AS ����,
 ComputerName AS �R���s���[�^��,
 CASE EventID
  WHEN 104 THEN SID 
  WHEN 1102 THEN EXTRACT_TOKEN(Strings,0,'|') 
 END AS SID,
 CASE EventID
  WHEN 104 THEN EXTRACT_TOKEN(Strings,0,'|') 
  WHEN 1102 THEN EXTRACT_TOKEN(Strings,1,'|') 
 END AS ���[�U,
 CASE EventID
  WHEN 104 THEN EXTRACT_TOKEN(Strings,2,'|') 
  WHEN 1102 THEN 'Security' 
 END AS �������O��,
 TO_UTCTIME(TimeGenerated) AS ����(UTC) 
INTO 
 %OUTPUT%
FROM 
 %INPUT%
WHERE
 SourceName='Microsoft-Windows-Eventlog' AND
 (
 EventID='104' OR
 EventID='1102'
 )
