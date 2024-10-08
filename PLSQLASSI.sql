Connected to:
Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 - Production
Version 19.3.0.0.0

SQL> col name for a20;
SQL>  select name, open_mode from v$containers;

NAME                 OPEN_MODE
-------------------- ----------
ora19                READ WRITE

--- showing the container database

SQL> show con_name;

CON_NAME
------------------------------
ora19
SQL> show pdbs;
SQL> exit
Disconnected from Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 - Production
Version 19.3.0.0.0

C:\Users\Noella>sqlplus sys as sysdba

SQL*Plus: Release 19.0.0.0.0 - Production on Thu Oct 3 20:33:28 2024
Version 19.3.0.0.0

Copyright (c) 1982, 2019, Oracle.  All rights reserved.

Enter password:

Connected to:
Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 - Production
Version 19.3.0.0.0

SQL> show con_name;

CON_NAME
------------------------------
CDB$ROOT

--- showing the pluggable database 

SQL> show pdbs;

    CON_ID CON_NAME                       OPEN MODE  RESTRICTED
---------- ------------------------------ ---------- ----------
         2 PDB$SEED                       READ ONLY  NO
         3 ORA19                          READ WRITE NO
SQL> select name, open_mode from v$containers
  2  ;

NAME
--------------------------------------------------------------------------------
OPEN_MODE
----------
CDB$ROOT
READ WRITE

PDB$SEED
READ ONLY

ORA19
READ WRITE

--- Finding the path to create our own pluggable database

SQL>  SELECT CON_ID, TABLESPACE_NAME, FILE_NAME FROM
  2  CDB_DATA_FILES WHERE CON_ID = 3;

    CON_ID TABLESPACE_NAME
---------- ------------------------------
FILE_NAME
--------------------------------------------------------------------------------
         3 SYSTEM
C:\USERS\NOELLA\DOCUMENTS\CD\ORCL\1281C227AB024395A49BDD7902D97413\DATAFILE\O1_M
F_SYSTEM_MHVDNN4H_.DBF

         3 SYSAUX
C:\USERS\NOELLA\DOCUMENTS\CD\ORCL\1281C227AB024395A49BDD7902D97413\DATAFILE\O1_M
F_SYSAUX_MHVDNN4Z_.DBF

         3 UNDOTBS1

    CON_ID TABLESPACE_NAME
---------- ------------------------------
FILE_NAME
--------------------------------------------------------------------------------
C:\USERS\NOELLA\DOCUMENTS\CD\ORCL\1281C227AB024395A49BDD7902D97413\DATAFILE\O1_M
F_UNDOTBS1_MHVDNN4Z_.DBF

         3 USERS
C:\USERS\NOELLA\DOCUMENTS\CD\ORCL\1281C227AB024395A49BDD7902D97413\DATAFILE\O1_M
F_USERS_MHVDNWVR_.DBF

--- The command to create the pluggable database 

SQL>  CREATE PLUGGABLE DATABASE plsql2024
  2  FROM ORA19
  3  FILE_NAME_CONVERT =('C:\USERS\NOELLA\DOCUMENTS\CD\ORCL\1281C227AB024395A49BDD7902D97413\DATAFILE\','C:\USERS\NOELLA\DOCUMENTS\CD\ORCL\1281C227AB024395A49BDD7902D97413\DATAFILE\plsql2024');

Pluggable database created.


--- Pluggable database is shown after creation
SQL>  show pdbs;

    CON_ID CON_NAME                       OPEN MODE  RESTRICTED
---------- ------------------------------ ---------- ----------
         2 PDB$SEED                       READ ONLY  NO
         3 ORA19                          READ WRITE NO
         6 PLSQL2024                      MOUNTED
SQL>  ALTER PLUGGABLE DATABASE plsql2024 OPEN;

Pluggable database altered.

SQL> ALTER PLUGGABLE DATABASE plsql2024 SAVE STATE;

Pluggable database altered.

SQL> ALTER PLUGGABLE DATABASE plsql2024 SAVE STATE;

Pluggable database altered.

SQL> GRANT ALL PRIVILEGES TO c##no_plsqlauca;

Grant succeeded.

--- pluggable database to be deleted is shown

SQL> CREATE PLUGGABLE DATABASE no_to_delete
  2  FROM ORA19
  3  FILE_NAME_CONVERT = ('C:\USERS\NOELLA\DOCUMENTS\CD\ORCL\1281C227AB024395A49BDD7902D97413\DATAFILE\', 'C:\USERS\NOELLA\DOCUMENTS\CD\ORCL\1281C227AB024395A49BDD7902D97413\DATAFILE\plsql2025');

Pluggable database created.

SQL>
SQL>
SQL>
--- pluggable database is deleted
SQL> drop pluggable database no_to_delete including datafiles;

Pluggable database dropped.
SQL> show con_name;

CON_NAME
------------------------------
CDB$ROOT
SQL> ALTER SESSION SET CONTAINER = CDB$ROOT;

Session altered.

--- Configuration of Oracle Enterprise 

SQL> SELECT SYS_CONTEXT('USERENV', 'CON_NAME') AS
  2  current_container FROM dual;

CURRENT_CONTAINER
--------------------------------------------------------------------------------
CDB$ROOT

SQL> SELECT DBMS_XDB_CONFIG.GETHTTPPORT() AS HTTP_PORT,
  2  DBMS_XDB_CONFIG.GETHTTPSPORT() AS HTTPS_PORT FROM dual;

 HTTP_PORT HTTPS_PORT
---------- ----------
         0          0
SQL> BEGIN DBMS_XDB_CONFIG.SETHTTPPORT(8080);
  2  DBMS_XDB_CONFIG.SETHTTPSPORT(8443);
  3  END;
  4  /

PL/SQL procedure successfully completed.

SQL>SQL> SELECT DBMS_XDB_CONFIG.GETHTTPPORT() AS HTTP_PORT,
  2   DBMS_XDB_CONFIG.GETHTTPSPORT() AS HTTPS_PORT
  3  FROM dual;

 HTTP_PORT HTTPS_PORT
---------- ----------
      8080       8443

SQL>SHUTDOWN IMMEDIATE;
Database closed.
Database dismounted.

SQL> STARTUP;
ORACLE instance started.

Total System Global Area 5100269976 bytes
Fixed Size                  9277848 bytes
Variable Size             956301312 bytes
Database Buffers         4127195136 bytes
Redo Buffers                7495680 bytes
Database mounted.
Database opened.
SQL> select dbms_xdb_config.gethttpsport() from dual;

DBMS_XDB_CONFIG.GETHTTPSPORT()
------------------------------
                          8443

SQL>
