-----------------
-- TESTING
-----------------

  BEGIN
      debug_utils.enable_debug;
      debug_utils.enable_level('DEBUG');
      debug_utils.enable_level('INFO');
      debug_utils.enable_level('WARN');
      debug_utils.enable_level('ERROR');

      adjust_salaries_by_commission;

      debug_utils.disable_debug;

  EXCEPTION
      WHEN OTHERS THEN
          debug_utils.disable_debug;
          RAISE;
  END;
  /

  SELECT
      employee_id,
      full_name,
      salary,
      commission_pct
  FROM employees
  ORDER BY employee_id;

  SELECT
      log_id,
      log_time,
      module_name,
      line_no,
      log_level,
      log_message,
      session_id
  FROM debug_log
  ORDER BY log_id;
