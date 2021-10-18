create or replace PACKAGE BODY test_integr_schema
IS
    PROCEDURE GET_C_PEXT_PPCS_EXP(l_BATCH_ID in NUMBER,
                                  l_start_time in DATE,
                                  l_end_time in DATE) IS
        err_msg varchar2(3000);
        l_end_time2 date;
    BEGIN
        --l_end_time2 := TRUNC(l_end_time) + INTERVAL '1' DAY - INTERVAL '1' SECOND;
        l_end_time2 := l_end_time;
        
        INSERT INTO PCEPTERM_STAGING.C_PET_PPCS_IF8_EXP (transaction_id, job_code, po_no, po_item_no, split_id, ERM_SPLIT_ID,
                                                      split_tag_no, quantity, mmt_qty,
                                                      split_del_dt_f, split_transport_period, split_tran_mode, srn_no,
                                                      split_insp_dt_a,
                                                      srn_delivery_point, del_ex_works_f, irn_issue_dt,
                                                      packing_list_item_no,
                                                      packing_list_item_tagno, packing_list_item_desc, packing_list_qty,
                                                      packing_list_uom,
                                                      ship_no, ship_disp_dt_a, transport_type, loading_port,
                                                      destination_port, picked_split_qty, ship_site_arr_dt_f,
                                                      vendor_part_number,
                                                      container_number, hyperlink_id, url_link, release_certificate,
                                                      trans_pckg_no,
                                                      trans_pckg_descr, package_type, length, length_uom, width,
                                                      width_uom, height, height_uom,
                                                      weight, weight_uom, description2, SHIP_ITEMS_SHIPPED,
                                                      SHIP_CR_DT,
                                                      CRE_USER_INIT, freight_forwarder, SHIP_DEL_TYPE,
                                                      SHIP_SITE_REMARKS,
                                                      SHIP_ITEMS_QTY, SHIP_PKG_QTY, SHIP_GROSS_WT, SHIP_WT_UNITS,
                                                      sn_link_to_ppcs, srn_link_to_ppcs,
                                                      heat_no, certificate_no)
                                                      
           with sel0 as(
            select 
                   l_BATCH_ID                                                                 AS TRANSACTION_ID,
                   SPLIT.EXP_SPLIT_DETAILS_ID,
                   SPLIT.JOB_CODE,
                   SPLIT.PO_NO,
                   SPLIT.POD_ITEM_NO                                                          as PO_ITEM_NO,
                   SPLIT.SPLIT_ID                                                             as SPLIT_ID,
                   SPLIT.SPLIT_ID                                                             as ERM_SPLIT_ID, --update after pom2 release
                   SPLIT.SPLIT_TAG_NO,
                   SPLIT.SPLIT_QTY + SPLIT.SPLIT_EXTRA_QTY                                    as Quantity,
                   SPLIT.SPLIT_QTY + SPLIT.SPLIT_EXTRA_QTY                                    as MMT_QTY,
                   SPLIT.SPLIT_DEL_DT_F,
                   SPLIT.SPLIT_TRANSPORT_PERIOD,
                   SPLIT.SPLIT_TRAN_MODE,
                   SPLIT.SRN_NO,
                   SPLIT.SPLIT_INSP_DT_A,
                   upper(srn.SRN_DELIVERY_POINT)                                              as SRN_DELIVERY_POINT,
                   srn.DEL_EX_WORKS                                                           as del_ex_works_f,
                   scnm.SCN_ID,
                   ''                                                                         as IRN_ISSUE_DT,       --irn.IRN_ISSUE_DT,
                   /*SUBSTR(to_Char(epl.PACKING_LIST_ITEM_No),
                          INSTR(epl.PACKING_LIST_ITEM_No, '.') + 1)                           as PACKING_LIST_ITEM_No,
                   epl.PACKING_LIST_ITEM_TAGNO,
                   epl.PACKING_LIST_ITEM_DESC,
                   epl.PACKING_LIST_QTY,
                   epl.PACKING_LIST_UOM,*/
                   shipment.SHIP_NO,
                   shipment.SHIP_DISP_DT_A,
                   shipment.TRANSPORT_TYPE,
                   (select port_name from exp_m_port where port_id = shipment.SHIP_FROM_PORT) as LOADING_PORT,
                   (select port_name from exp_m_port where port_id = shipment.SHIP_TO_PORT)   as DESTINATION_PORT,
                   scn.PICKED_SPLIT_QTY,
                   shipment.SHIP_SITE_ARR_DT_F,
                   --epl.VENDOR_PART_NUMBER                                                     as VENDOR_PART_NUMBER,
                   --epl.PKL_CONTAINER_NO                                                       as Container_Number,
                   split.SPLIT_DESC2                                                          as DESCRIPTION2,
                   shipment.SHIP_CONSIGNOR_NAME,
                   shipment.SHIP_ITEMS_SHIPPED,
                   shipment.SHIP_CR_DT,
                   shipment.CRE_USER_INIT,
                   --prov.PROVIDER_NAME                                                         as freight_forwarder,
                   shipment.SHIP_DEL_TYPE,
                   shipment.SHIP_SITE_REMARKS,
                   shipment.SHIP_ITEMS_QTY,
                   shipment.SHIP_PKG_QTY,
                   shipment.SHIP_GROSS_WT,
                   shipment.SHIP_WT_UNITS,
                   ''                                                                         as sn_link_to_ppcs,    --TBD
                   ''                                                                         as srn_link_to_ppcs,   --TBD
                   ''                                                                         as heat_no,--irnd.IRD_HEAT_NO ,
                   ''                                                                         as certificate_no,--irnd.IRD_CERTIFICATE_NO,
                   SPLit.UPD_DT                                                               as UPD_DT_SPLit,
                   SPLit.CRE_DT                                                               as CRE_DT_SPLit,
                   SCN.UPD_DT                                                                 as UPD_DT_SCN,
                   SCN.CRE_DT                                                                 as CRE_DT_SCN,
                   scnm.UPD_DT                                                                as UPD_DT_scnm,
                   scnm.CRE_DT                                                                as CRE_DT_scnm,
                   srn.UPD_DT                                                                 as UPD_DT_srn,
                   srn.CRE_DT                                                                 as CRE_DT_srn,
                   --epl.UPD_DT                                                                 as UPD_DT_epl,
                   --epl.CRE_DT                                                                 as CRE_DT_epl,
                   shipment.UPD_DT                                                            as UPD_DT_shipment,
                   shipment.CRE_DT                                                            as CRE_DT_shipment
            from exp_split_details SPLIT 
                LEFT JOIN EXP_SCN_SRN_SPLITQTY SCN
                   ON SPLIT.SRN_NO = SCN.SRN_NO
                       AND SPLIT.POD_ITEM_NO = SCN.ITEM_NO
                       AND SPLIT.JOB_CODE = SCN.JOB_CODE
                left JOIN exp_scn_master scnm on scnm.SCN_NO = SCN.SCN_NO
                Left join exp_srn_master srn on SPLIT.PO_NO = srn.PO_NO and srn.SRN_NO = SPLIT.SRN_NO
                Left join 
                    (select distinct PO_NO, JOB_CODE, SRN_NO, SCN_ID, MAX(UPD_DT) as UPD_DT, MAX(CRE_DT) as CRE_DT  from exp_packing_list 
                        where UPD_DT BETWEEN l_start_time AND l_end_time2
                        or CRE_DT   BETWEEN l_start_time AND l_end_time2
                        group by PO_NO, JOB_CODE, SRN_NO, SCN_ID) epl
                    on epl.PO_NO = SPLIT.PO_NO
                        and epl.JOB_CODE = SPLIT.JOB_CODE
                        and epl.SRN_NO = SPLIT.SRN_NO
                        and epl.SCN_ID = scnm.SCN_ID
                /*left join exp_packing_list epl on epl.PO_NO = SPLIT.PO_NO
                            and epl.JOB_CODE = SPLIT.JOB_CODE
                            and epl.SRN_NO = SPLIT.SRN_NO
                            and epl.SCN_ID = scnm.SCN_ID*/
               left join exp_shipment_master shipment
                       on shipment.JOB_CODE = SPLIT.JOB_CODE and shipment.SHIP_NO = scnm.SHIP_NO
            where --SPLIT.PO_NO = 'JI2045-0-PFP008' --2560
            --and 
            (SPLIT.UPD_DT BETWEEN l_start_time AND l_end_time2
                    or SPLIT.CRE_DT     BETWEEN l_start_time AND l_end_time2
                    or SCN.UPD_DT       BETWEEN l_start_time AND l_end_time2
                    or SCN.CRE_DT       BETWEEN l_start_time AND l_end_time2
                    or scnm.UPD_DT      BETWEEN l_start_time AND l_end_time2
                    or scnm.CRE_DT      BETWEEN l_start_time AND l_end_time2
                    or srn.UPD_DT       BETWEEN l_start_time AND l_end_time2
                    or srn.CRE_DT       BETWEEN l_start_time AND l_end_time2
                    or epl.UPD_DT       BETWEEN l_start_time AND l_end_time2
                    or epl.CRE_DT       BETWEEN l_start_time AND l_end_time2
                    or shipment.UPD_DT  BETWEEN l_start_time AND l_end_time2
                    or shipment.CRE_DT  BETWEEN l_start_time AND l_end_time2
                    )
            ),
            sel_pack as(
                select distinct
                    sel0.JOB_CODE,
                    sel0.PO_NO,
                    sel0.SRN_NO,
                    sel0.PO_ITEM_NO,
                    package.PACKAGE_NO,
                    package.PACKAGE_TYPE_ID,
                    pckl.PKL_PKG_TYPE,
                    SUBSTR(to_Char(pckl.PACKING_LIST_ITEM_No),
                          INSTR(pckl.PACKING_LIST_ITEM_No, '.') + 1) as PACKING_LIST_ITEM_No,
                    pckl.PACKING_LIST_ITEM_TAGNO,
                    pckl.PACKING_LIST_ITEM_DESC,
                    pckl.PACKING_LIST_QTY,
                    pckl.PACKING_LIST_UOM,
                    pckl.VENDOR_PART_NUMBER,
                    pckl.PKL_CONTAINER_NO as Container_Number,
                    pckl.UPD_DT as UPD_DT_epl,
                    pckl.CRE_DT as CRE_DT_epl,
                    coalesce(package.LENGTH,pckl.PKL_LENGTH) as LENGTH,
                    coalesce(package.WIDTH, pckl.PKL_WIDTH) as WIDTH,
                    coalesce(package.HEIGHT, pckl.PKL_HEIGHT) as HEIGHT,
                    coalesce(package.NET_WEIGHT, pckl.PKL_NET_WEIGHT) as NET_WEIGHT
                from sel0 
                inner join exp_packing_list pckl on sel0.JOB_CODE = pckl.JOB_CODE 
                    AND sel0.PO_NO          = pckl.PO_NO
                    AND sel0.SRN_NO         = pckl.SRN_NO
                    AND sel0.PO_ITEM_NO     = pckl.POD_ITEM_NO
                left join ptr_admin.EXP_PACKAGE package on  package.JOB_CODE = sel0.JOB_CODE
                            and package.PO_NO   = sel0.PO_NO
                            --and package.SRN_NO  = sel0.SRN_NO
                            and package.ID      = pckl.package_id
                
            ),
            sel_irn as(
                select distinct 
                    sel0.EXP_SPLIT_DETAILS_ID,
                    irnd.IRN_MASTER_ID,
                    irn.IRN_NO
                    from sel0
                    inner join TB_IRN_DETAIL irnd on sel0.EXP_SPLIT_DETAILS_ID = irnd.EXP_SPLIT_DETAILS_ID
                    inner join tb_irn_master irn on irn.IRN_MASTER_ID = irnd.IRN_MASTER_ID
                    where irnd.UPD_DT BETWEEN l_start_time AND l_end_time2
                    or irnd.CRE_DT BETWEEN l_start_time AND l_end_time2
                ),
            sel1 as(
            select
                    sel0.TRANSACTION_ID,
                   sel0.JOB_CODE,
                   sel0.PO_NO,
                   sel0.PO_ITEM_NO,
                   sel0.SPLIT_ID,
                   sel0.ERM_SPLIT_ID, --update after pom2 release
                   sel0.SPLIT_TAG_NO,
                   sel0.Quantity,
                   sel0.MMT_QTY,
                   sel0.SPLIT_DEL_DT_F,
                   sel0.SPLIT_TRANSPORT_PERIOD,
                   sel0.SPLIT_TRAN_MODE,
                   sel0.SRN_NO,
                   sel0.SPLIT_INSP_DT_A,
                   sel0.SRN_DELIVERY_POINT,
                   sel0.del_ex_works_f,
                   sel0.IRN_ISSUE_DT,       --irn.IRN_ISSUE_DT,
                   (SELECT distinct sel_irn.IRN_NO from sel_irn where sel_irn.EXP_SPLIT_DETAILS_ID = sel0.EXP_SPLIT_DETAILS_ID) as IRN_NO,
                   sel_pack.PACKING_LIST_ITEM_No,
                   sel_pack.PACKING_LIST_ITEM_TAGNO,
                   sel_pack.PACKING_LIST_ITEM_DESC,
                   sel_pack.PACKING_LIST_QTY,
                   sel_pack.PACKING_LIST_UOM,
                   sel0.SHIP_NO,
                   sel0.SHIP_DISP_DT_A,
                   sel0.TRANSPORT_TYPE,
                   sel0.LOADING_PORT,
                   sel0.DESTINATION_PORT,
                   sel0.PICKED_SPLIT_QTY,
                   sel0.SHIP_SITE_ARR_DT_F,
                   sel_pack.VENDOR_PART_NUMBER,
                   sel_pack.Container_Number,
                   --log.id                                                                     as HYPERLINK_ID,
                   --log.URL                                                                    as URL_LINK,
                   ''                                                                         as RELEASE_CERTIFICATE,--irn.irn_no
                   sel_pack.PACKAGE_NO                                                         as TRANS_PCKG_NO,
                   sel_pack.PACKAGE_NO                                                         as TRANS_PCKG_DESCR,
                   p_type.NAME                                                                as Package_Type,
                   sel_pack.LENGTH,
                   'cm'                                                                       as LENGTH_Uom,
                   sel_pack.WIDTH,
                   'cm'                                                                       as WIDTH_Uom,
                   sel_pack.HEIGHT,
                   'cm'                                                                       as HEIGHT_Uom,
                   sel_pack.NET_WEIGHT                                                         as WEIGHT,
                   'kg'                                                                       as WEIGHT_Uom,
                   sel0.DESCRIPTION2,
                   sel0.SHIP_ITEMS_SHIPPED,
                   sel0.SHIP_CR_DT,
                   sel0.CRE_USER_INIT,
                   prov.PROVIDER_NAME                                                         as freight_forwarder,
                   sel0.SHIP_DEL_TYPE,
                   sel0.SHIP_SITE_REMARKS,
                   sel0.SHIP_ITEMS_QTY,
                   sel0.SHIP_PKG_QTY,
                   sel0.SHIP_GROSS_WT,
                   sel0.SHIP_WT_UNITS,
                   sel0.sn_link_to_ppcs,    --TBD
                   sel0.srn_link_to_ppcs,   --TBD
                   sel0.heat_no,--irnd.IRD_HEAT_NO ,
                   sel0.certificate_no,--irnd.IRD_CERTIFICATE_NO,
                   sel0.UPD_DT_SPLit,
                   sel0.CRE_DT_SPLit,
                   sel0.UPD_DT_SCN,
                   sel0.CRE_DT_SCN,
                   sel0.UPD_DT_scnm,
                   sel0.CRE_DT_scnm,
                   sel0.UPD_DT_srn,
                   sel0.CRE_DT_srn,
                   sel_pack.UPD_DT_epl,
                   sel_pack.CRE_DT_epl,
                   sel0.UPD_DT_shipment,
                   sel0.CRE_DT_shipment
            from sel0
                left join EXP_M_LOG_SERVICE_PROVIDER prov on sel0.SHIP_CONSIGNOR_NAME = prov.PROVIDER_ID
                left join sel_pack on sel0.JOB_CODE = sel_pack.JOB_CODE
                        AND sel0.PO_NO = sel_pack.PO_NO
                        AND sel0.SRN_NO = sel_pack.SRN_NO
                        AND sel0.PO_ITEM_NO = sel_pack.PO_ITEM_NO
                left join ptr_admin.EXP_PACKAGE_TYPE p_type on sel_pack.PACKAGE_TYPE_ID = p_type.ID

            )

        select 
                transaction_id,
               job_code,
               --m.po_no,
               po_no,
               po_item_no,
               split_id,
               ERM_SPLIT_ID,
               split_tag_no,
               quantity,
               mmt_qty,
               split_del_dt_f,
               split_transport_period,
               split_tran_mode,
               srn_no,
               split_insp_dt_a,
               srn_delivery_point,
               del_ex_works_f,
               irn_issue_dt,
               packing_list_item_no,
               packing_list_item_tagno,
               packing_list_item_desc,
               packing_list_qty,
               packing_list_uom,
               ship_no,
               ship_disp_dt_a,
               transport_type,
               loading_port,
               destination_port,
               picked_split_qty,
               ship_site_arr_dt_f,
               vendor_part_number,
               container_number,
               log.id                                                                     as HYPERLINK_ID,
               log.URL                                                                    as URL_LINK,
               --hyperlink_id,
               --url_link,
               release_certificate,
               trans_pckg_no,
               trans_pckg_descr,
               package_type,
               length,
               length_uom,
               width,
               width_uom,
               height,
               height_uom,
               weight,
               weight_uom,
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
               heat_no,
               certificate_no
               from sel1
               left join ptr_admin.TB_SHAP_OPERATIONAL_LOG log on sel1.JOB_CODE = log.doc_lib_name 
                and (log.url like case when sel1.irn_no is null then '' else '%' || sel1.irn_no || '%' END)
               ;
 --       from joined j
  --               join modified_PO m on j.PO_NO = m.PO_NO;
    EXCEPTION
        WHEN
            NO_DATA_FOUND
            THEN
                insert into C_PEXT_PPCS_EXP_TEST2(vs, log) values ('ex', to_char(sysdate));
        when others then
            err_msg := 'Un-handled exception: ' || SQLERRM || chr(10) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE ||
                       SQLCODE || $$PLSQL_UNIT;
            insert into C_PEXT_PPCS_EXP_TEST2 values ('ex', err_msg);
    END GET_C_PEXT_PPCS_EXP;

    PROCEDURE SYNC_IF9_PROJECT_SCHEMA IS
        l_job_code varchar2(50);
    BEGIN

        insert into C_PEXT_PPCS_EXP_TEST2 values ('1', l_job_code);

        SELECT job_number
        into l_job_code
        from PTR_ADMIN.M_JOB m
                 join user_users u on m.JOB_SCHEMA_NAME = u.USERNAME;

        insert into C_PEXT_PPCS_EXP_TEST2 values ('2', l_job_code);
        insert into C_PET_PPCS_IF9_RECP (RECORD_ID,
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
                                         PPCS_SPLIT_ID,
                                         SYNC_SUCCESS)
        select RECORD_ID,
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
               PPCS_SPLIT_ID,
               SYNC_SUCCESS
        from PCEPTERM_STAGING.C_PET_PPCS_IF9_RECP
        where JOB_CODE = l_job_code
            LOG ERRORS
        INTO C_PET_PPCS_IF9_RECP_ERR ('INSERT') REJECT
        LIMIT UNLIMITED;

        delete
        from PCEPTERM_STAGING.C_PET_PPCS_IF9_RECP
        where JOB_CODE = l_job_code;

        INSERT INTO PCEPTERM_STAGING.C_XXX_RECP_ERR
        select RECORD_ID, ORA_ERR_MESG$
        from C_PET_PPCS_IF9_RECP_ERR;

        delete from C_PET_PPCS_IF9_RECP_ERR where 1 = 1;
    END ;
END test_integr_schema;