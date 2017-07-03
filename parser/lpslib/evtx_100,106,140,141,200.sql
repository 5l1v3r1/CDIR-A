SELECT 
 TimeGenerated AS ����,
 ComputerName AS �R���s���[�^��,
 SID,
 EXTRACT_TOKEN(Strings,0,'|') AS �W���u��,
 EXTRACT_TOKEN(Strings,1,'|') AS ���[�U/�v���O����,
 CASE EventID
  WHEN 100 THEN '�J�n(���[�U)'
  WHEN 106 THEN '�o�^'
  WHEN 140 THEN '�X�V'
  WHEN 141 THEN '�폜'
  WHEN 200 THEN '�J�n(�v���O����)'
 END AS ���R,
 TO_UTCTIME(TimeGenerated) AS ����(UTC) 
INTO
 %OUTPUT%
FROM 
 %INPUT%
WHERE
 SourceName='Microsoft-Windows-TaskScheduler' AND 
 (
 EventID='100' OR
 EventID='106' OR
 EventID='140' OR
 EventID='141' OR
 EventID='200' 
 )
