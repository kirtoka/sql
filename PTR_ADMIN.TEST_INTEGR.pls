create or replace PACKAGE BODY test_integr
IS
    PROCEDURE POPULATE_C_PEXT_PPCS_EXP(nr_retries in NUMBER default 2,
                                       email varchar2) AS
        CURSOR SCHEMA_CUR IS
            SELECT JOB_SCHEMA_NAME
            from M_JOB
            where SYNC_AVEVA = 1;
        -- failed attempt. Used for retrying
        CURSOR FAILED_ATT_RES_CUR IS
            SELECT distinct PO_NO
            from PCEPTERM_STAGING.C_DEXT_PET_EXP_ERR c
            where c.RESULT = 0
            GROUP BY PO_NO, ID, RESULT
            HAVING COUNT(*) > nr_retries;
        -- failed multiple times. Used to notify failure
        CURSOR FAILED_RES_CUR is
            select distinct cr.PO_NO
            from PCEPTERM_STAGING.C_PET_PPCS_IF8_EXP c
                     join PCEPTERM_STAGING.C_DEXT_PET_EXP_ERR cr on c.ID = cr.ID
            where c.PO_NO not in (SELECT PO_NO
                                  from SUCCESSFUL_POs)
            GROUP BY cr.PO_NO, cr.ID, cr.RESULT
            HAVING not COUNT(*) > nr_retries;
        -- SUCCESS PO`s are later deleted from C_PEXT_PPCS_EXP
        CURSOR SUCCESS_RES_CUR IS
            SELECT distinct PO_NO
            from PCEPTERM_STAGING.C_PET_PPCS_IF8_EXP c
            where PO_NO in (SELECT PO_NO
                            from SUCCESSFUL_POs);
        v_sql_tx     varchar2(300);
        MSG_body     varchar2(1000);
        MSG_subject  varchar2(1000);
        l_Batch_id   number;
        l_end_time   date;
        l_start_time date;
        notify_POs   varchar2(4000);
        err_msg      varchar2(1000);
    BEGIN
        GET_SUCCESSFUL_POs;
        l_end_time := sysdate;

        insert into C_PEXT_PPCS_EXP_TEST2 values ('1', 'suc',sysdate);
        commit;
        -- set start time as end time of previous successful synchronisation
        BEGIN

            insert into C_PEXT_PPCS_EXP_TEST2 values ('1', to_char(sysdate),sysdate);
            commit;
            select END_TIME  + interval '1' second
            into l_start_time
            from PCEPTERM_STAGING.C_PEXT_PPCS_EXP_TIME_LOG
            where BATCH_ID = (select max(BATCH_ID)
                              from PCEPTERM_STAGING.C_PEXT_PPCS_EXP_TIME_LOG
                              where IS_SYNCED = 1)
              and IS_SYNCED = 1;
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                l_start_time := sysdate - 1;
                l_end_time := sysdate;
        END;

        FOR SUC IN SUCCESS_RES_CUR
            LOOP
                --log POs that were synced successfully
                insert into C_PEXT_PPCS_EXP_LOG (ID, TRANSACTION_ID, JOB_CODE, PO_NO, PO_ITEM_NO, SPLIT_ID,
                                                 ERM_SPLIT_ID,
                                                 SPLIT_TAG_NO, QUANTITY, MMT_QTY, SPLIT_DEL_DT_F,
                                                 SPLIT_TRANSPORT_PERIOD, SPLIT_TRAN_MODE, SRN_NO, SPLIT_INSP_DT_A,
                                                 SRN_DELIVERY_POINT, DEL_EX_WORKS_F, IRN_ISSUE_DT, PACKING_LIST_ITEM_NO,
                                                 PACKING_LIST_ITEM_TAGNO, PACKING_LIST_ITEM_DESC, PACKING_LIST_QTY,
                                                 PACKING_LIST_UOM, SHIP_NO, SHIP_DISP_DT_A, TRANSPORT_TYPE,
                                                 LOADING_PORT, DESTINATION_PORT, PICKED_SPLIT_QTY,
                                                 SHIP_SITE_ARR_DT_F, VENDOR_PART_NUMBER,
                                                 CONTAINER_NUMBER, HYPERLINK_ID, URL_LINK, RELEASE_CERTIFICATE,
                                                 TRANS_PCKG_NO, TRANS_PCKG_DESCR, PACKAGE_TYPE, LENGTH, LENGTH_UOM,
                                                 WIDTH, WIDTH_UOM, HEIGHT, HEIGHT_UOM, WEIGHT, WEIGHT_UOM,
                                                 description2, SHIP_ITEMS_SHIPPED,
                                                 SHIP_CR_DT,
                                                 CRE_USER_INIT, freight_forwarder, SHIP_DEL_TYPE,
                                                 SHIP_SITE_REMARKS,
                                                 SHIP_ITEMS_QTY, SHIP_PKG_QTY, SHIP_GROSS_WT, SHIP_WT_UNITS,
                                                 sn_link_to_ppcs, SRN_LINK_TO_PPCS, HEAT_NO,
                                                 CERTIFICATE_NO, SYNC_RESULT, COMMENTS, UPDATED)
                select c.ID,
                       TRANSACTION_ID,
                       JOB_CODE,
                       c.PO_NO,
                       PO_ITEM_NO,
                       SPLIT_ID,
                       ERM_SPLIT_ID,
                       SPLIT_TAG_NO,
                       QUANTITY,
                       MMT_QTY,
                       SPLIT_DEL_DT_F,
                       SPLIT_TRANSPORT_PERIOD,
                       SPLIT_TRAN_MODE,
                       SRN_NO,
                       SPLIT_INSP_DT_A,
                       SRN_DELIVERY_POINT,
                       DEL_EX_WORKS_F,
                       IRN_ISSUE_DT,
                       PACKING_LIST_ITEM_NO,
                       PACKING_LIST_ITEM_TAGNO,
                       to_char(PACKING_LIST_ITEM_DESC),
                       PACKING_LIST_QTY,
                       PACKING_LIST_UOM,
                       SHIP_NO,
                       SHIP_DISP_DT_A,
                       TRANSPORT_TYPE,
                       LOADING_PORT,
                       DESTINATION_PORT,
                       PICKED_SPLIT_QTY,
                       SHIP_SITE_ARR_DT_F,
                       VENDOR_PART_NUMBER,
                       CONTAINER_NUMBER,
                       HYPERLINK_ID,
                       URL_LINK,
                       RELEASE_CERTIFICATE,
                       TRANS_PCKG_NO,
                       TRANS_PCKG_DESCR,
                       PACKAGE_TYPE,
                       LENGTH,
                       LENGTH_UOM,
                       WIDTH,
                       WIDTH_UOM,
                       HEIGHT,
                       HEIGHT_UOM,
                       WEIGHT,
                       WEIGHT_UOM,
                       description2,
                       SHIP_ITEMS_SHIPPED,
                       SHIP_CR_DT,
                       CRE_USER_INIT,
                       freight_forwarder,
                       SHIP_DEL_TYPE,
                       SHIP_SITE_REMARKS,
                       SHIP_ITEMS_QTY,
                       SHIP_PKG_QTY,
                       SHIP_GROSS_WT,
                       SHIP_WT_UNITS,
                       sn_link_to_ppcs,
                       srn_link_to_ppcs,
                       '',
                       '',--heat_no, certificate_no
                       1,
                       'PO`s have been synchronised successfully',
                       SYSDATE
                from PCEPTERM_STAGING.C_PET_PPCS_IF8_EXP c
                where PO_NO = SUC.PO_NO;
                --delete POs that were synced successfully
                delete
                from PCEPTERM_STAGING.C_PET_PPCS_IF8_EXP
                where PO_NO = SUC.PO_NO;
                                
                delete
                from PCEPTERM_STAGING.C_DEXT_PET_EXP_ERR
                where PO_NO = SUC.PO_NO;
                commit;
            end loop;

        FOR res IN FAILED_RES_CUR
            LOOP
                -- insert into C_PEXT_PPCS_EXP_NOTIFY PO`s that failed after x attempts
                notify_POs := notify_POs || ', ' || res.PO_NO;
                insert into C_PEXT_PPCS_EXP_NOTIFY (ID, TRANSACTION_ID, JOB_CODE, PO_NO, PO_ITEM_NO, SPLIT_ID,
                                                    ERM_SPLIT_ID,
                                                    SPLIT_TAG_NO, QUANTITY, MMT_QTY, SPLIT_DEL_DT_F,
                                                    SPLIT_TRANSPORT_PERIOD, SPLIT_TRAN_MODE, SRN_NO, SPLIT_INSP_DT_A,
                                                    SRN_DELIVERY_POINT, DEL_EX_WORKS_F, IRN_ISSUE_DT,
                                                    PACKING_LIST_ITEM_NO, PACKING_LIST_ITEM_TAGNO,
                                                    PACKING_LIST_ITEM_DESC, PACKING_LIST_QTY, PACKING_LIST_UOM, SHIP_NO,
                                                    SHIP_DISP_DT_A, TRANSPORT_TYPE, LOADING_PORT, DESTINATION_PORT,
                                                    PICKED_SPLIT_QTY, SHIP_SITE_ARR_DT_F, VENDOR_PART_NUMBER,
                                                    CONTAINER_NUMBER,
                                                    HYPERLINK_ID, URL_LINK, RELEASE_CERTIFICATE, TRANS_PCKG_NO,
                                                    TRANS_PCKG_DESCR, PACKAGE_TYPE, LENGTH, LENGTH_UOM, WIDTH,
                                                    WIDTH_UOM, HEIGHT, HEIGHT_UOM, WEIGHT, WEIGHT_UOM,
                                                    description2, SHIP_ITEMS_SHIPPED,
                                                    SHIP_CR_DT,
                                                    CRE_USER_INIT, freight_forwarder, SHIP_DEL_TYPE,
                                                    SHIP_SITE_REMARKS,
                                                    SHIP_ITEMS_QTY, SHIP_PKG_QTY, SHIP_GROSS_WT, SHIP_WT_UNITS,
                                                    sn_link_to_ppcs, SRN_LINK_TO_PPCS, HEAT_NO, CERTIFICATE_NO,
                                                    COMMENTS, UPDATED)
                SELECT ID,
                       TRANSACTION_ID,
                       JOB_CODE,
                       PO_NO,
                       PO_ITEM_NO,
                       SPLIT_ID,
                       ERM_SPLIT_ID,
                       SPLIT_TAG_NO,
                       QUANTITY,
                       MMT_QTY,
                       SPLIT_DEL_DT_F,
                       SPLIT_TRANSPORT_PERIOD,
                       SPLIT_TRAN_MODE,
                       SRN_NO,
                       SPLIT_INSP_DT_A,
                       SRN_DELIVERY_POINT,
                       DEL_EX_WORKS_F,
                       IRN_ISSUE_DT,
                       PACKING_LIST_ITEM_NO,
                       PACKING_LIST_ITEM_TAGNO,
                       to_char(PACKING_LIST_ITEM_DESC),
                       PACKING_LIST_QTY,
                       PACKING_LIST_UOM,
                       SHIP_NO,
                       SHIP_DISP_DT_A,
                       TRANSPORT_TYPE,
                       LOADING_PORT,
                       DESTINATION_PORT,
                       PICKED_SPLIT_QTY,
                       SHIP_SITE_ARR_DT_F,
                       VENDOR_PART_NUMBER,
                       CONTAINER_NUMBER,
                       HYPERLINK_ID,
                       URL_LINK,
                       RELEASE_CERTIFICATE,
                       TRANS_PCKG_NO,
                       TRANS_PCKG_DESCR,
                       PACKAGE_TYPE,
                       LENGTH,
                       LENGTH_UOM,
                       WIDTH,
                       WIDTH_UOM,
                       HEIGHT,
                       HEIGHT_UOM,
                       WEIGHT,
                       WEIGHT_UOM,
                       description2,
                       SHIP_ITEMS_SHIPPED,
                       SHIP_CR_DT,
                       CRE_USER_INIT,
                       freight_forwarder,
                       SHIP_DEL_TYPE,
                       SHIP_SITE_REMARKS,
                       SHIP_ITEMS_QTY,
                       SHIP_PKG_QTY,
                       SHIP_GROSS_WT,
                       SHIP_WT_UNITS,
                       sn_link_to_ppcs,
                       srn_link_to_ppcs,
                       '',
                       '', --heat_no, certificate_no
                       'failed after multiple attempts',
                       sysdate
                FROM PCEPTERM_STAGING.C_PET_PPCS_IF8_EXP
                WHERE PO_NO = res.PO_NO;

                -- log PO`s that failed after multiple attempts
                insert into C_PEXT_PPCS_EXP_LOG (ID, TRANSACTION_ID, JOB_CODE, PO_NO, PO_ITEM_NO, SPLIT_ID,
                                                 ERM_SPLIT_ID,
                                                 SPLIT_TAG_NO, QUANTITY, MMT_QTY, SPLIT_DEL_DT_F,
                                                 SPLIT_TRANSPORT_PERIOD, SPLIT_TRAN_MODE, SRN_NO, SPLIT_INSP_DT_A,
                                                 SRN_DELIVERY_POINT, DEL_EX_WORKS_F, IRN_ISSUE_DT, PACKING_LIST_ITEM_NO,
                                                 PACKING_LIST_ITEM_TAGNO, PACKING_LIST_ITEM_DESC, PACKING_LIST_QTY,
                                                 PACKING_LIST_UOM, SHIP_NO, SHIP_DISP_DT_A, TRANSPORT_TYPE,
                                                 LOADING_PORT, DESTINATION_PORT, PICKED_SPLIT_QTY,
                                                 SHIP_SITE_ARR_DT_F, VENDOR_PART_NUMBER,
                                                 CONTAINER_NUMBER, HYPERLINK_ID, URL_LINK, RELEASE_CERTIFICATE,
                                                 TRANS_PCKG_NO, TRANS_PCKG_DESCR, PACKAGE_TYPE, LENGTH, LENGTH_UOM,
                                                 WIDTH, WIDTH_UOM, HEIGHT, HEIGHT_UOM, WEIGHT, WEIGHT_UOM,
                                                 description2, SHIP_ITEMS_SHIPPED,
                                                 SHIP_CR_DT,
                                                 CRE_USER_INIT, freight_forwarder, SHIP_DEL_TYPE,
                                                 SHIP_SITE_REMARKS,
                                                 SHIP_ITEMS_QTY, SHIP_PKG_QTY, SHIP_GROSS_WT, SHIP_WT_UNITS,
                                                 sn_link_to_ppcs, SRN_LINK_TO_PPCS, HEAT_NO,
                                                 CERTIFICATE_NO, SYNC_RESULT, COMMENTS, UPDATED)
                select c.ID,
                       TRANSACTION_ID,
                       JOB_CODE,
                       c.PO_NO,
                       PO_ITEM_NO,
                       SPLIT_ID,
                       ERM_SPLIT_ID,
                       SPLIT_TAG_NO,
                       QUANTITY,
                       MMT_QTY,
                       SPLIT_DEL_DT_F,
                       SPLIT_TRANSPORT_PERIOD,
                       SPLIT_TRAN_MODE,
                       SRN_NO,
                       SPLIT_INSP_DT_A,
                       SRN_DELIVERY_POINT,
                       DEL_EX_WORKS_F,
                       IRN_ISSUE_DT,
                       PACKING_LIST_ITEM_NO,
                       PACKING_LIST_ITEM_TAGNO,
                       to_char(PACKING_LIST_ITEM_DESC),
                       PACKING_LIST_QTY,
                       PACKING_LIST_UOM,
                       SHIP_NO,
                       SHIP_DISP_DT_A,
                       TRANSPORT_TYPE,
                       LOADING_PORT,
                       DESTINATION_PORT,
                       PICKED_SPLIT_QTY,
                       SHIP_SITE_ARR_DT_F,
                       VENDOR_PART_NUMBER,
                       CONTAINER_NUMBER,
                       HYPERLINK_ID,
                       URL_LINK,
                       RELEASE_CERTIFICATE,
                       TRANS_PCKG_NO,
                       TRANS_PCKG_DESCR,
                       PACKAGE_TYPE,
                       LENGTH,
                       LENGTH_UOM,
                       WIDTH,
                       WIDTH_UOM,
                       HEIGHT,
                       HEIGHT_UOM,
                       WEIGHT,
                       WEIGHT_UOM,
                       description2,
                       SHIP_ITEMS_SHIPPED,
                       SHIP_CR_DT,
                       CRE_USER_INIT,
                       freight_forwarder,
                       SHIP_DEL_TYPE,
                       SHIP_SITE_REMARKS,
                       SHIP_ITEMS_QTY,
                       SHIP_PKG_QTY,
                       SHIP_GROSS_WT,
                       SHIP_WT_UNITS,
                       sn_link_to_ppcs,
                       srn_link_to_ppcs,
                       '',
                       '',--heat_no, certificate_no
                       CR.RESULT,
                       'Failed after multiple attempts to synchronise PO',
                       sysdate
                FROM PCEPTERM_STAGING.C_PET_PPCS_IF8_EXP c
                         join PCEPTERM_STAGING.C_DEXT_PET_EXP_ERR cr on c.ID = cr.ID
                WHERE c.PO_NO = res.PO_NO;

                -- delete PO`s that failed after multiple attempts
                -- delete to stop retrying
                delete
                from PCEPTERM_STAGING.C_DEXT_PET_EXP_ERR
                WHERE PO_NO = res.PO_NO;

                delete
                from PCEPTERM_STAGING.C_PET_PPCS_IF8_EXP
                WHERE PO_NO = res.PO_NO;
                commit;
            end loop;

        FOR FAILED IN FAILED_ATT_RES_CUR
            LOOP
                --log POs that failed at sync
                insert into C_PEXT_PPCS_EXP_LOG (ID, TRANSACTION_ID, JOB_CODE, PO_NO, PO_ITEM_NO, SPLIT_ID,
                                                 ERM_SPLIT_ID,
                                                 SPLIT_TAG_NO, QUANTITY, MMT_QTY, SPLIT_DEL_DT_F,
                                                 SPLIT_TRANSPORT_PERIOD, SPLIT_TRAN_MODE, SRN_NO, SPLIT_INSP_DT_A,
                                                 SRN_DELIVERY_POINT, DEL_EX_WORKS_F, IRN_ISSUE_DT, PACKING_LIST_ITEM_NO,
                                                 PACKING_LIST_ITEM_TAGNO, PACKING_LIST_ITEM_DESC, PACKING_LIST_QTY,
                                                 PACKING_LIST_UOM, SHIP_NO, SHIP_DISP_DT_A, TRANSPORT_TYPE,
                                                 LOADING_PORT, DESTINATION_PORT, PICKED_SPLIT_QTY,
                                                 SHIP_SITE_ARR_DT_F, VENDOR_PART_NUMBER,
                                                 CONTAINER_NUMBER, HYPERLINK_ID, URL_LINK, RELEASE_CERTIFICATE,
                                                 TRANS_PCKG_NO, TRANS_PCKG_DESCR, PACKAGE_TYPE, LENGTH, LENGTH_UOM,
                                                 WIDTH, WIDTH_UOM, HEIGHT, HEIGHT_UOM, WEIGHT, WEIGHT_UOM,
                                                 description2, SHIP_ITEMS_SHIPPED,
                                                 SHIP_CR_DT,
                                                 CRE_USER_INIT, freight_forwarder, SHIP_DEL_TYPE,
                                                 SHIP_SITE_REMARKS,
                                                 SHIP_ITEMS_QTY, SHIP_PKG_QTY, SHIP_GROSS_WT, SHIP_WT_UNITS,
                                                 sn_link_to_ppcs, SRN_LINK_TO_PPCS, HEAT_NO,
                                                 CERTIFICATE_NO, SYNC_RESULT, COMMENTS, UPDATED)
                select c.ID,
                       TRANSACTION_ID,
                       JOB_CODE,
                       c.PO_NO,
                       PO_ITEM_NO,
                       SPLIT_ID,
                       ERM_SPLIT_ID,
                       SPLIT_TAG_NO,
                       QUANTITY,
                       MMT_QTY,
                       SPLIT_DEL_DT_F,
                       SPLIT_TRANSPORT_PERIOD,
                       SPLIT_TRAN_MODE,
                       SRN_NO,
                       SPLIT_INSP_DT_A,
                       SRN_DELIVERY_POINT,
                       DEL_EX_WORKS_F,
                       IRN_ISSUE_DT,
                       PACKING_LIST_ITEM_NO,
                       PACKING_LIST_ITEM_TAGNO,
                       to_char(PACKING_LIST_ITEM_DESC),
                       PACKING_LIST_QTY,
                       PACKING_LIST_UOM,
                       SHIP_NO,
                       SHIP_DISP_DT_A,
                       TRANSPORT_TYPE,
                       LOADING_PORT,
                       DESTINATION_PORT,
                       PICKED_SPLIT_QTY,
                       SHIP_SITE_ARR_DT_F,
                       VENDOR_PART_NUMBER,
                       CONTAINER_NUMBER,
                       HYPERLINK_ID,
                       URL_LINK,
                       RELEASE_CERTIFICATE,
                       TRANS_PCKG_NO,
                       TRANS_PCKG_DESCR,
                       PACKAGE_TYPE,
                       LENGTH,
                       LENGTH_UOM,
                       WIDTH,
                       WIDTH_UOM,
                       HEIGHT,
                       HEIGHT_UOM,
                       WEIGHT,
                       WEIGHT_UOM,
                       description2,
                       SHIP_ITEMS_SHIPPED,
                       SHIP_CR_DT,
                       CRE_USER_INIT,
                       freight_forwarder,
                       SHIP_DEL_TYPE,
                       SHIP_SITE_REMARKS,
                       SHIP_ITEMS_QTY,
                       SHIP_PKG_QTY,
                       SHIP_GROSS_WT,
                       SHIP_WT_UNITS,
                       sn_link_to_ppcs,
                       srn_link_to_ppcs,
                       '',
                       '',--heat_no, certificate_no
                       0,
                       'PO`s have failed synchronisation',
                       sysdate
                FROM PCEPTERM_STAGING.C_PET_PPCS_IF8_EXP c
                where PO_NO = FAILED.PO_NO;
                commit;
            end loop;

        -- send email with PO`s that failed after multiple attempts
        if length(notify_POs) > 0 Then
            select MAIL_BODY,
                   MAIL_SUBJECT
            into MSG_body, MSG_subject
            from mail_template
            where id = 2;

            MSG_body := REPLACE(MSG_body, '__pos__', notify_POs);
            MSG_body := REPLACE(MSG_body, '__retries__', nr_retries);

            SP_SEND_EMAIL(email,
                          '', '',
                          MSG_subject,
                          MSG_body, '');
        end if;

        --set start-end time interval for data to be picked
        --get transaction id
        INSERT INTO PCEPTERM_STAGING.C_PEXT_PPCS_EXP_TIME_LOG (START_TIME, END_TIME)
        VALUES (l_start_time, l_end_time)
        returning BATCH_ID into l_Batch_id;

        insert into C_PEXT_PPCS_EXP_TEST2 values ('2', 'before',sysdate);
        commit;
        -- get new or updated POs
        FOR SCHEMA IN SCHEMA_CUR
            LOOP
                v_sql_tx := 'begin ' || SCHEMA.JOB_SCHEMA_NAME || '.test_integr_schema.GET_C_PEXT_PPCS_EXP(' ||
                            l_Batch_id || ', to_date(''' || to_char(l_start_time,'yyyy-mm-dd hh24:mi:ss') || ''',''yyyy-mm-dd hh24:mi:ss''), to_date(''' || to_char(l_end_time,'yyyy-mm-dd hh24:mi:ss')|| ''',''yyyy-mm-dd hh24:mi:ss'')); end;';

                insert into C_PEXT_PPCS_EXP_TEST2 values ('3', v_sql_tx, sysdate);
                commit;
                execute immediate v_sql_tx;
                commit;
            END LOOP;

        insert into C_PEXT_PPCS_EXP_TEST2 values ('4', 'after', sysdate);
        commit;
        --DELETE REPEATING PO`s
        delete
        from PCEPTERM_STAGING.C_PET_PPCS_IF8_EXP a
        where exists(select ID
                     from PCEPTERM_STAGING.C_PET_PPCS_IF8_EXP b
                     where a.PO_NO = b.PO_NO
                       and a.TRANSACTION_ID < b.TRANSACTION_ID
                     group by a.ID);
        commit;
        --set time interval as successfully synced
        UPDATE PCEPTERM_STAGING.C_PEXT_PPCS_EXP_TIME_LOG
        SET IS_SYNCED = 1
        WHERE BATCH_ID = l_Batch_id;
        commit;
    EXCEPTION
        WHEN OTHERS THEN
            insert into C_PEXT_PPCS_EXP_TEST2 values ('1', err_msg, sysdate);
            err_msg := 'Un-handled exception: ' || SQLERRM || chr(10) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;
            insert into C_PEXT_PPCS_EXP_TEST2 values ('ex', err_msg, sysdate);
            dbp_ptr_error_log('Database',
                              SQLCODE,
                              err_msg,
                              $$PLSQL_UNIT,
                              NULL);
    END;

    PROCEDURE GET_SUCCESSFUL_POs
    AS
    BEGIN
        delete from SUCCESSFUL_POs where 1 = 1;

        insert into SUCCESSFUL_POs
        SELECT distinct PO_NO
        from PCEPTERM_STAGING.C_PET_PPCS_IF8_EXP c
        where PO_NO in (select a.PO_NO
                        from (select PO_NO, count(*) aTotal
                              from PCEPTERM_STAGING.C_PET_PPCS_IF8_EXP
                              group by PO_NO) a
                                 join (select PO_NO, count(*) bTotal
                                       from PCEPTERM_STAGING.C_DEXT_PET_EXP_ERR cr1
                                       where cr1.RESULT = 1
                                       group by PO_NO, cr1.BATCH_ID) b
                                      on a.PO_NO = b.PO_NO
                        where coalesce(a.atotal, 0) = coalesce(b.btotal, 0));

    END GET_SUCCESSFUL_POs;
    PROCEDURE SYNC_IF9 AS
        CURSOR SCHEMA_CUR IS
            SELECT JOB_SCHEMA_NAME
            from M_JOB m
            where SYNC_AVEVA = 1;
        v_sql_tx varchar2(3000);
        err_msg  varchar2(3000);
    BEGIN
        INSERT INTO PCEPTERM_STAGING.C_PET_PPCS_IF9_RECP_LOG (RECORD_ID,
                                                              JOB_CODE,
                                                              PO_NO,
                                                              PO_LINE_ITEM,
                                                              SPLIT_ID,
                                                              MRR_NO,
                                                              PART_TAG_NO,
                                                              QTY_DESP,
                                                              QTY_DELVD,
                                                              COUNT_QTY,
                                                              QA_QTY,
                                                              STORE_NAME,
                                                              EMP_NAME,
                                                              HEAT_NO,
                                                              CERT_NO,
                                                              REMARKS,
                                                              DEL_POINT,
                                                              OSND_NO,
                                                              OSD_TYPE,
                                                              OSD_QTY,
                                                              OSD_CLOSURE_STATUS,
                                                              SRN_NO,
                                                              SN_NO,
                                                              TRANSPORT_PACKAGE_NO,
                                                              ARRIVAL_DATE,
                                                              CREATED_BY,
                                                              RECEIPT_HEADER,
                                                              SYNC_SUCCESS)
        SELECT RECORD_ID,
               JOB_CODE,
               PO_NO,
               PO_LINE_ITEM,
               SPLIT_ID,
               MRR_NO,
               PART_TAG_NO,
               QTY_DESP,
               QTY_DELVD,
               COUNT_QTY,
               QA_QTY,
               STORE_NAME,
               EMP_NAME,
               HEAT_NO,
               CERT_NO,
               REMARKS,
               DEL_POINT,
               OSND_NO,
               OSD_TYPE,
               OSD_QTY,
               OSD_CLOSURE_STATUS,
               SRN_NO,
               SN_NO,
               TRANSPORT_PACKAGE_NO,
               ARRIVAL_DATE,
               CREATED_BY,
               RECEIPT_HEADER,
               SYNC_SUCCESS
        FROM PCEPTERM_STAGING.C_PET_PPCS_IF9_RECP;

        FOR SCHEMA IN SCHEMA_CUR
            LOOP
                v_sql_tx := 'begin ' || SCHEMA.JOB_SCHEMA_NAME || '.test_integr_schema.sync_if9_project_schema; end;';
                execute immediate v_sql_tx;
            END LOOP;
    EXCEPTION
        WHEN OTHERS THEN
            err_msg := 'Un-handled exception: ' || SQLERRM || chr(10) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE ||
                       SQLCODE || $$PLSQL_UNIT;
            dbp_ptr_error_log('Database',
                              SQLCODE,
                              err_msg,
                              $$PLSQL_UNIT,
                              NULL);
    END;
END test_integr;