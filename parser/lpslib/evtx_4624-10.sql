SELECT 
 TimeGenerated AS ����,
 ComputerName AS �R���s���[�^��,
 EXTRACT_TOKEN(Strings,4,'|') AS SID,
 EXTRACT_TOKEN(Strings,5,'|') AS ���[�U,
 EXTRACT_TOKEN(Strings,6,'|') AS �h���C��,
 EXTRACT_TOKEN(Strings,7,'|') AS ���O�I��ID,
 EXTRACT_TOKEN(Strings,9,'|') AS ���O�I���v���Z�X,
 EXTRACT_TOKEN(Strings,10,'|') AS �F�؃p�b�P�[�W,
 EXTRACT_TOKEN(Strings,11,'|') AS ���[�N�X�e�[�V������,
 EXTRACT_TOKEN(Strings,12,'|') AS ���O�I��GUID,
 EXTRACT_TOKEN(Strings,16,'|') AS �v���Z�XID,
 EXTRACT_TOKEN(Strings,17,'|') AS �v���Z�X��, 
 EXTRACT_TOKEN(Strings,18,'|') AS IP�A�h���X,
 TO_UTCTIME(TimeGenerated) AS ����(UTC) 
INTO 
 %OUTPUT%
FROM 
 %INPUT%
WHERE
 SourceName = 'Microsoft-Windows-Security-Auditing' AND
 EventID = 4624 AND
 EXTRACT_TOKEN(Strings,8,'|') = '10'
