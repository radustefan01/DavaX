# Simple PL/SQL debugging framework

Run `simple_debugging_demo.sql` as one script in SQL Developer.

The script creates:

- `DEBUG_LOG`: stores debug messages
- `DEBUG_UTILS`: enables/disables logging and writes messages
- `DEBUG_EMPLOYEES`: small salary demonstration table
- `ADJUST_SALARIES_BY_COMMISSION`: sample procedure

The procedure uses the commission percentage when it exists. When the
commission is `NULL`, it uses a 2% salary increase.

The script enables debugging, runs the procedure, displays the updated
salaries and debug messages, and then disables debugging.
