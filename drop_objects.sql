SET SERVEROUTPUT ON;

DECLARE 
    flag number :=0;
BEGIN
    SELECT count(1) into flag FROM USER_PROCEDURES WHERE OBJECT_TYPE = 'PROCEDURE' AND OBJECT_NAME = 'SP_INT_ECOSYS_PO_PROGRESS_NEW';
    if flag>0 then
        --DBMS_OUTPUT.put_line('DROP PROCEDURE SP_INT_ECOSYS_PO_PROGRESS_NEW;');
        execute immediate 'DROP PROCEDURE SP_INT_ECOSYS_PO_PROGRESS_NEW'; 
    end if;
    
    flag := 0;
    SELECT count(1) into flag FROM user_objects WHERE object_type = 'DATABASE LINK' AND object_name = 'PPCSTOSQL';       
    if flag>0 then
        --DBMS_OUTPUT.put_line('drop DATABASE LINK PPCSTOSQL;');
        execute immediate 'DROP DATABASE LINK PPCSTOSQL'; 
    end if;
    
    flag := 0;
    select count(1) into flag from user_scheduler_jobs where job_name = 'JOB_ECOSYS_INT_PO_PROG_NEW';       
    if flag>0 then
        --DBMS_OUTPUT.put_line(' dbms_scheduler.drop_job(job_name => ''JOB_ECOSYS_INT_PO_PROG_NEW'');');
        dbms_scheduler.drop_job(job_name => 'JOB_ECOSYS_INT_PO_PROG_NEW');
    end if;
 END;




