CREATE OR REPLACE TRIGGER UPDATECUSTOMERLASTMODIFIED BEFORE
    UPDATE ON CUSTOMERS FOR EACH ROW
BEGIN
    :NEW.LASTMODIFIED := SYSDATE;
END UPDATECUSTOMERLASTMODIFIED;
/