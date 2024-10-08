CREATE OR REPLACE TRIGGER LOGTRANSACTION AFTER
    INSERT ON TRANSACTIONS FOR EACH ROW
BEGIN
    INSERT INTO AUDITLOG (
        TRANSACTIONID,
        ACCOUNTID,
        TRANSACTIONDATE,
        AMOUNT,
        TRANSACTIONTYPE,
        LOGTIME
    ) VALUES (
        :NEW.TRANSACTIONID,
        :NEW.ACCOUNTID,
        :NEW.TRANSACTIONDATE,
        :NEW.AMOUNT,
        :NEW.TRANSACTIONTYPE,
        SYSDATE
    );
END;
/