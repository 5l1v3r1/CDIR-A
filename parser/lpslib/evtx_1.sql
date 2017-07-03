SELECT 
 TimeGenerated AS ����,
 ComputerName AS �R���s���[�^��,
 SID,
 TO_LOCALTIME(TO_TIMESTAMP(SUBSTR(EXTRACT_TOKEN(Strings,0,'|'), 0, 19), 'yyyy-MM-dd?hh:mm:ss')) AS �ύX�O(���[�J��),
 TO_INT(SUB(TO_TIMESTAMP(SUBSTR(EXTRACT_TOKEN(Strings,0,'|'), 0, 19), 'yyyy-MM-dd?hh:mm:ss'), TO_TIMESTAMP(SUBSTR(EXTRACT_TOKEN(Strings,1,'|'), 0, 19), 'yyyy-MM-dd?hh:mm:ss'))) AS �����b,
 EXTRACT_TOKEN(Strings,1,'|') AS �ύX�O,
 EXTRACT_TOKEN(Strings,0,'|') AS �ύX��,
 CASE SourceName
  WHEN 'Microsoft-Windows-Kernel-General' THEN '�����ύX'
  WHEN 'Microsoft-Windows-Power-Troubleshooter' THEN '�X���[�v�ĊJ'
 END AS ���R,
 TO_UTCTIME(TimeGenerated) AS ����(UTC)
INTO 
 %OUTPUT%
FROM 
 %INPUT%
WHERE
 EventID='1'
 AND (SourceName='Microsoft-Windows-Kernel-General' OR SourceName='Microsoft-Windows-Power-Troubleshooter')
 AND �����b <>0
 AND �����b <>-1
 AND �����b <>1
