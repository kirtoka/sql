create or replace PROCEDURE Sendmail(
 sender      IN VARCHAR2,
 recipient   IN VARCHAR2,
 ccrecipient IN VARCHAR2,
 subject     IN VARCHAR2,
 message     IN VARCHAR2)
AS
-- mailhost VARCHAR2 (30) := '192.168.2.36';
mailhost     VARCHAR2 (30) :='10.100.9.244';--10.100.8.109';
 mail_conn UTL_SMTP.CONNECTION;
 crlf VARCHAR2(2) := CHR (13) || CHR (10);
 l_message_2  VARCHAR2(4000) := message;
 l_message_1 LONG;
 FUNCTION AttachBracket (paramter_str IN VARCHAR2)
    RETURN VARCHAR2
IS
 BEGIN
  RETURN '<' || paramter_str || '>';
 END AttachBracket;
BEGIN
 mail_conn := UTL_SMTP.OPEN_CONNECTION (mailhost, 25);
 l_message_1 :=
 'DATE: ' || TO_CHAR( SYSDATE)|| CRLF ||
 'FROM: ' || SENDER || CRLF ||
 'TO: ' || RECIPIENT || CRLF ||
 'CC: ' || ccrecipient ||  CRLF ||
-- 'SUBJECT: '|| SUBJECT || CRLF || CRLF || l_message_2;
 'Subject: '|| SUBJECT || '  ' || l_message_2;
 UTL_SMTP.HELO (mail_conn, mailhost);
 UTL_SMTP.Mail (mail_conn, AttachBracket(SENDER));
 UTL_SMTP.RCPT (mail_conn, AttachBracket(RECIPIENT));

-- Carbon copy
 IF CCRECIPIENT IS NOT NULL THEN
  UTL_SMTP.RCPT (mail_conn, ccrecipient);
 END IF;
 IF l_message_2 IS NULL THEN 
  UTL_SMTP.DATA(mail_conn,  'no message ' );
 ELSE
  UTL_SMTP.DATA(mail_conn,  l_message_2 );
 END IF; 
 UTL_SMTP.QUIT (mail_conn);

END ;
