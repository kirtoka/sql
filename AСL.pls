-------------------------ACL
select * from DBA_NETWORK_ACLS
select * from DBA_NETWORK_ACL_PRIVILEGES where ACL = '/sys/acls/network_services.xml'


BEGIN
DBMS_NETWORK_ACL_ADMIN.CREATE_ACL (
acl => '/sys/acls/network_services.xml',
description => 'Allow mail',
principal => 'PUBLIC',
is_grant => TRUE,
privilege => 'connect',
start_date => SYSTIMESTAMP,
end_date => NULL);
COMMIT;
END;



BEGIN
DBMS_NETWORK_ACL_ADMIN.ADD_PRIVILEGE(
acl => '/sys/acls/network_services.xml',
principal => 'PUBLIC',
is_grant => true,
privilege => 'connect');
COMMIT;
END;

BEGIN
DBMS_NETWORK_ACL_ADMIN.ADD_PRIVILEGE(
acl => '/sys/acls/network_services.xml',
principal => 'PUBLIC',
is_grant => true,
privilege => 'resolve');
COMMIT;
END;



Check user/ principal grant on ACL
SELECT DECODE(DBMS_NETWORK_ACL_ADMIN.CHECK_PRIVILEGE('/sys/acls/network_services.xml', 'PCEPTPCS_2044', 'connect'),1, 'GRANTED', 0, 'DENIED', NULL) privilege FROM dual

Assign ACL HOST
BEGIN DBMS_NETWORK_ACL_ADMIN.ASSIGN_ACL (acl => '/sys/acls/network_services.xml', host => 'abz-erp-smtp.ds.petrofac.local', lower_port => 25, upper_port => 25); commit; END;

Assign ACL HOST
BEGIN DBMS_NETWORK_ACL_ADMIN.ASSIGN_ACL (acl => '/sys/acls/network_services.xml', host => 'abz-erp-smtp.ds.petrofac.local', lower_port => 25, upper_port => 25); commit; END;

select
'BEGIN DBMS_NETWORK_ACL_ADMIN.CREATE_ACL
(acl => '''||acl||''','||'principal => '''||PRINCIPAL||''','||'is_grant => ' ||
IS_GRANT||','||'privilege => '''||PRIVILEGE||'''); commit; END;'
from dba_NETWORK_ACL_PRIVILEGES
where privilege='connect'
union all
select
'BEGIN DBMS_NETWORK_ACL_ADMIN.ADD_PRIVILEGE
(acl => '''||acl||''','||'principal => '''||PRINCIPAL||''','||'is_grant => ' ||
IS_GRANT||','||'privilege => '''||PRIVILEGE||'''); commit; END;'
from dba_NETWORK_ACL_PRIVILEGES
where privilege<>'connect'
union all
select
'BEGIN DBMS_NETWORK_ACL_ADMIN.ASSIGN_ACL (acl => '''||acl||''', '||
'host => '''||host||''', '||
'lower_port => '||lower_port||', '||
'upper_port => '||upper_port||'); commit; END;'
from dba_NETWORK_ACLS


-----------------------------------------------
