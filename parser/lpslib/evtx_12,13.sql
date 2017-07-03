SELECT 
 TimeGenerated AS ����,
 ComputerName AS �R���s���[�^��,
 SID,
 CASE EventID
  WHEN 12 THEN '�N��'
  WHEN 13 THEN '��~'
 END AS ���R,
 TO_UTCTIME(TimeGenerated) AS ����(UTC)
INTO
 %OUTPUT%
FROM
 %INPUT%
WHERE 
 SourceName='Microsoft-Windows-Kernel-General' AND (EventID='12' OR EventID='13')