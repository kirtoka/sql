SET SERVEROUTPUT ON;
DECLARE 
     v_sql_tx     VARCHAR2(300);
     l_error_msg  VARCHAR2(200);     
     l_col_name   VARCHAR2(50);
     l_seq        NUMBER := 0;
     l_cur_id     NUMBER := 0;
     l_table_name VARCHAR2(50);

    CURSOR cur_seq is 
    select SEQ_TABLE_ID,SEQ_CURRENT_SEQ from ptr_m_seq_no;
BEGIN
    FOR cur IN cur_seq
        LOOP
        BEGIN
            l_table_name := cur.SEQ_TABLE_ID;
            v_sql_tx := 'select cc.column_name
            from user_cons_columns cc
            join user_constraints c on c.constraint_name = cc.constraint_name
            where c.table_name = ''' || upper(cur.SEQ_TABLE_ID) || ''' and c.constraint_type = ''P'' order by cc.position';
            execute immediate v_sql_tx INTO l_col_name;
            --DBMS_OUTPUT.put_line('l_col_name is ' || l_col_name);
            
            v_sql_tx := 'SELECT seq_current_seq FROM ptr_m_seq_no WHERE seq_table_id = ''' || cur.SEQ_TABLE_ID || '''';
            execute immediate v_sql_tx INTO l_seq;
            --DBMS_OUTPUT.put_line('l_seq is ' || l_seq);
            
            v_sql_tx := 'SELECT MAX(' || l_col_name || ')  FROM  ' || cur.SEQ_TABLE_ID;            
            execute immediate v_sql_tx INTO l_cur_id;
            --DBMS_OUTPUT.put_line('l_cur_id is ' || l_cur_id);
            
            IF l_cur_id > l_seq THEN
                --DBMS_OUTPUT.put_line('=========================='); 
                --DBMS_OUTPUT.put_line('ATTENTION!');

                v_sql_tx := 'UPDATE ptr_m_seq_no set seq_current_seq = (SELECT MAX(' || l_col_name || ')+1 FROM ' || cur.SEQ_TABLE_ID || ')' ||
                    ' WHERE seq_table_id = ''' || cur.SEQ_TABLE_ID || '''; commit;';
                dbp_ptr_error_log('PATCH-ptr_m_seq_no',
                              0,
                              v_sql_tx || '--cur id was ' || l_cur_id || 'cur seq was ' || l_seq || ', ' || sysdate ,
                              $$PLSQL_UNIT,
                              NULL);
                --DBMS_OUTPUT.put_line('v_sql_tx is ' || v_sql_tx);
                --DBMS_OUTPUT.put_line('==========================');
                --commit;
                execute immediate v_sql_tx;
                --commit;
            END IF;
            
            EXCEPTION
            WHEN NO_DATA_FOUND THEN
                DBMS_OUTPUT.put_line('ERROR!! table is ' || l_table_name || ', error is ' ||'Un-handled exception: ' || SQLERRM || chr(10) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
            WHEN OTHERS THEN
                dbp_ptr_error_log('PATCH-ptr_m_seq_no',
                              SQLCODE,
                              'Un-handled exception: ' || SQLERRM || chr(10) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE,
                              $$PLSQL_UNIT,
                              NULL);                
            END;
        END LOOP;   
END;
