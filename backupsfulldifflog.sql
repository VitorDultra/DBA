Backup FULL: 

BACKUP DATABASE SeuBanco
TO DISK = 'D:\Backups\SeuBanco_FULL.bak'
WITH 
    INIT,                       -- sobrescreve o arquivo
    COMPRESSION,                -- comprime o backup
    STATS = 5;                  -- progresso

Backup DIFF:

BACKUP DATABASE SeuBanco
TO DISK = 'D:\Backups\SeuBanco_DIFF.bak'
WITH 
    DIFFERENTIAL,
    INIT,
    COMPRESSION,
    STATS = 5;

BAckup LOG: 

BACKUP LOG SeuBanco
TO DISK = 'D:\Backups\SeuBanco_LOG.trn'
WITH 
    INIT,
    COMPRESSION,
    STATS = 5;
