SELECT 
 TimeGenerated AS ����,
 ComputerName AS �R���s���[�^��,
 EXTRACT_TOKEN(Strings,0,'|') AS ��SID,
 EXTRACT_TOKEN(Strings,1,'|') AS ���A�J�E���g,
 EXTRACT_TOKEN(Strings,2,'|') AS ���h���C��,
 EXTRACT_TOKEN(Strings,3,'|') AS �����O�I��ID,
 EXTRACT_TOKEN(Strings,5,'|') AS �w��A�J�E���g,
 EXTRACT_TOKEN(Strings,6,'|') AS �w��h���C��,
 EXTRACT_TOKEN(Strings,7,'|') AS �w�胍�O�I��GUID,
 EXTRACT_TOKEN(Strings,8,'|') AS �^�[�Q�b�g,
 EXTRACT_TOKEN(Strings,10,'|') AS �v���Z�XID,
 EXTRACT_TOKEN(Strings,11,'|') AS �v���Z�X,
 EXTRACT_TOKEN(Strings,12,'|') AS IP�A�h���X,
 TO_UTCTIME(TimeGenerated) AS ����(UTC)
INTO 
 %OUTPUT%
FROM 
 %INPUT%
WHERE
 SourceName = 'Microsoft-Windows-Security-Auditing' AND
 EventID = 4648 AND
 �v���Z�X <> 'C:\Windows\System32\taskhost.exe' AND 
 �v���Z�X <> 'C:\Windows\System32\taskeng.exe' AND NOT
 (�^�[�Q�b�g = 'localhost' AND IP�A�h���X = '-') AND NOT 
 (�^�[�Q�b�g = 'localhost' AND IP�A�h���X = '127.0.0.1') AND NOT
 (�^�[�Q�b�g = 'localhost' AND IP�A�h���X = '::1')
