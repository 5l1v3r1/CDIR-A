SELECT 
 TimeGenerated AS ����,
 ComputerName AS �R���s���[�^��,
 SID, 
 EXTRACT_TOKEN(Strings,0,'|') AS �T�[�r�X��,
 EXTRACT_TOKEN(Strings,1,'|') AS �T�[�r�X�t�@�C����,
 EXTRACT_TOKEN(Strings,2,'|') AS ���,
 EXTRACT_TOKEN(Strings,3,'|') AS �J�n�̎��,
 EXTRACT_TOKEN(Strings,4,'|') AS �A�J�E���g,
 TO_UTCTIME(TimeGenerated) AS ����(UTC) 
INTO 
 %OUTPUT%
FROM 
 %INPUT%
WHERE
 EventID = '7045'
