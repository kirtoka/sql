TRUNCATE TABLE TBL_PTR_PO_SERVICE_TYPE;

ALTER TABLE TBL_PTR_PO_SERVICE_TYPE 
DROP CONSTRAINT TBL_PTR_PO_SERVICE_TYPE_PK;

ALTER TABLE TBL_PTR_PO_SERVICE_TYPE 
ADD (PO_SERVICE_TYPE_POM VARCHAR2(1) );

ALTER TABLE TBL_PTR_PO_SERVICE_TYPE 
ADD (PO_SERVICE_TYPE_ID NUMBER NOT NULL);

ALTER TABLE TBL_PTR_PO_SERVICE_TYPE
ADD CONSTRAINT TBL_PTR_PO_SERVICE_TYPE_PK PRIMARY KEY 
(
  PO_SERVICE_TYPE_ID 
)
ENABLE;

ALTER TABLE TBL_PTR_PO_SERVICE_TYPE
ADD CONSTRAINT TBL_PTR_PO_SERVICE_TYPE_UK1 UNIQUE 
(
  PO_SERVICE_TYPE_CODE 
)
ENABLE;

CREATE SEQUENCE TBL_PTR_PO_SERVICE_TYPE_SEQ;

CREATE TRIGGER TBL_PTR_PO_SERVICE_TYPE_TRG 
BEFORE INSERT ON TBL_PTR_PO_SERVICE_TYPE 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.PO_SERVICE_TYPE_ID IS NULL THEN
      SELECT TBL_PTR_PO_SERVICE_TYPE_SEQ.NEXTVAL INTO :NEW.PO_SERVICE_TYPE_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
Insert into TBL_PTR_PO_SERVICE_TYPE (PO_SERVICE_TYPE_CODE,PO_SERVICE_TYPE_DESC) values ('ANO','Assigned / Novated Orders');
Insert into TBL_PTR_PO_SERVICE_TYPE (PO_SERVICE_TYPE_CODE,PO_SERVICE_TYPE_DESC) values ('BCSB','Back-chargeable to Sub-contractor');
Insert into TBL_PTR_PO_SERVICE_TYPE (PO_SERVICE_TYPE_CODE,PO_SERVICE_TYPE_DESC) values ('BCV','Back-chargeable to Vendors');
Insert into TBL_PTR_PO_SERVICE_TYPE (PO_SERVICE_TYPE_CODE,PO_SERVICE_TYPE_DESC) values ('BCVT','Back-chargeable variations to Client');
Insert into TBL_PTR_PO_SERVICE_TYPE (PO_SERVICE_TYPE_CODE,PO_SERVICE_TYPE_DESC) values ('COMA','Construction Material');
Insert into TBL_PTR_PO_SERVICE_TYPE (PO_SERVICE_TYPE_CODE,PO_SERVICE_TYPE_DESC) values ('COWK','Construction Works');
Insert into TBL_PTR_PO_SERVICE_TYPE (PO_SERVICE_TYPE_CODE,PO_SERVICE_TYPE_DESC) values ('FSER','Field Services');
Insert into TBL_PTR_PO_SERVICE_TYPE (PO_SERVICE_TYPE_CODE,PO_SERVICE_TYPE_DESC) values ('GGMI','Goods, General (Miscellaneous) Items');
Insert into TBL_PTR_PO_SERVICE_TYPE (PO_SERVICE_TYPE_CODE,PO_SERVICE_TYPE_DESC) values ('GPPI','Goods, Project Permanent Items');
Insert into TBL_PTR_PO_SERVICE_TYPE (PO_SERVICE_TYPE_CODE,PO_SERVICE_TYPE_DESC) values ('GTI','Goods, Temporary Items');
Insert into TBL_PTR_PO_SERVICE_TYPE (PO_SERVICE_TYPE_CODE,PO_SERVICE_TYPE_DESC) values ('JV GOODS '||chr(38)||' SERVICES','JV Goods '||chr(38)||' Services');
Insert into TBL_PTR_PO_SERVICE_TYPE (PO_SERVICE_TYPE_CODE,PO_SERVICE_TYPE_DESC) values ('LOGISTICS','Logistics');
Insert into TBL_PTR_PO_SERVICE_TYPE (PO_SERVICE_TYPE_CODE,PO_SERVICE_TYPE_DESC) values ('MPM','Miscellaneous Project Material');
Insert into TBL_PTR_PO_SERVICE_TYPE (PO_SERVICE_TYPE_CODE,PO_SERVICE_TYPE_DESC) values ('MPSER','Manpower Services');
Insert into TBL_PTR_PO_SERVICE_TYPE (PO_SERVICE_TYPE_CODE,PO_SERVICE_TYPE_DESC) values ('PONRTP','POs not related to this Project');
Insert into TBL_PTR_PO_SERVICE_TYPE (PO_SERVICE_TYPE_CODE,PO_SERVICE_TYPE_DESC) values ('PO_SERVICES','PO_SERVICES');
Insert into TBL_PTR_PO_SERVICE_TYPE (PO_SERVICE_TYPE_CODE,PO_SERVICE_TYPE_DESC) values ('SMSC','Services, Miscellaneous');
Insert into TBL_PTR_PO_SERVICE_TYPE (PO_SERVICE_TYPE_CODE,PO_SERVICE_TYPE_DESC) values ('SP','Services, Project');
Insert into TBL_PTR_PO_SERVICE_TYPE (PO_SERVICE_TYPE_CODE,PO_SERVICE_TYPE_DESC) values ('SPARE_PARTS','Spare Parts');

COMMIT;


UPDATE TBL_PTR_PO_SERVICE_TYPE
   SET
  PO_SERVICE_TYPE_POM = 'Y'
 WHERE (PO_SERVICE_TYPE_CODE IN (
  'ANO',
  'BCSB',
  'BCV',
  'BCVT',
  'COMA',
  'GGMI',
  'GPPI',
  'GTI',
  'MPM',
  'SPARE_PARTS'
)
      OR
        PO_SERVICE_TYPE_CODE LIKE '%JV GOODS%');

COMMIT;