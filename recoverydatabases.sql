-- Primeiro o FULL
RESTORE DATABASE MeuBanco
FROM DISK = 'D:\Backups\MeuBanco_FULL.bak'
WITH NORECOVERY;

-- Depois o DIFERENCIAL
RESTORE DATABASE MeuBanco
FROM DISK = 'D:\Backups\MeuBanco_DIFF.bak'
WITH NORECOVERY;

-- Depois os logs
RESTORE LOG MeuBanco
FROM DISK = 'D:\Backups\MeuBanco_LOG1.trn'
WITH NORECOVERY;

RESTORE LOG MeuBanco
FROM DISK = 'D:\Backups\MeuBanco_LOG2.trn'
WITH RECOVERY;  -- agora SIM finaliza
