CREATE OR REPLACE FUNCTION CALCULATEAGE (
    DATE_OF_BIRTH IN DATE
) RETURN NUMBER IS
    AGE NUMBER;
BEGIN
    AGE := FLOOR(MONTHS_BETWEEN(SYSDATE, DATE_OF_BIRTH) / 12);
    RETURN AGE;
END CALCULATEAGE;
/