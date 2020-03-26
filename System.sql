select userenv('language') from dual;
select * from v$version;
select * from v$session;
select * from v$javapool;
select * from v$java_pool_advice;
select * from v$logfile;
select * from v$java_library_cache_memory;
select * from dba_sys_privs;
select * from session_privs;
select * from dba_role_privs;

select * from dba_java_policy;
select * from dba_java_classes where owner='ADMIN';
select * from v$sgastat;
select sys_context('userenv','session_user') from dual;
select * from V$nls_Parameters;
select * from nls_database_parameters;
select status from v$instance;
select * from user_tab_privs;
select * from user_sys_privs;

SELECT comp_id, comp_name FROM dba_registry;

SHOW PARAMETER REMOTE_LOGIN_PASSWORD ;
call dbms_java.grant_permission( 'ADMIN', 'SYS:java.io.FilePermission', '/home/oracle/gxylog.txt', 'read,write' );
call dbms_java.grant_permission( 'ADMIN', 'SYS:java.net.SocketPermission', '*', 'connect,resolve' );
