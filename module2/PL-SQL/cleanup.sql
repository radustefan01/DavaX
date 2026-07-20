  BEGIN
      EXECUTE IMMEDIATE 'DROP PROCEDURE adjust_salaries_by_commission';
  EXCEPTION
      WHEN OTHERS THEN
          IF SQLCODE != -4043 THEN
              RAISE;
          END IF;
  END;
  /

  BEGIN
      EXECUTE IMMEDIATE 'DROP PACKAGE debug_utils';
  EXCEPTION
      WHEN OTHERS THEN
          IF SQLCODE != -4043 THEN
              RAISE;
          END IF;
  END;
  /

  BEGIN
      EXECUTE IMMEDIATE 'DROP TABLE employees';
  EXCEPTION
      WHEN OTHERS THEN
          IF SQLCODE != -942 THEN
              RAISE;
          END IF;
  END;
  /

  BEGIN
      EXECUTE IMMEDIATE 'DROP TABLE debug_log';
  EXCEPTION
      WHEN OTHERS THEN
          IF SQLCODE != -942 THEN
              RAISE;
          END IF;
  END;
  /