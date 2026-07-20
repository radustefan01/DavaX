/*
Assignment: Generic RDBMS - Timesheet System
Platform: SQL Server / SSMS

Key components for an RDBMS System - SQL Server:
| ----------------------- | ---------------------------------------------------------------------------------------------------- |
| Relational Engine       | Parses, optimizes, and executes SQL queries.                                                         |
| Storage Engine          | Reads/writes database pages to disk and manages files/filegroups.                                     |
| Buffer Manager          | Caches data pages in memory to reduce disk I/O.                                                      |
| Transaction Manager     | Controls transaction boundaries and supports ACID behavior.                                          |
| Lock Manager            | Handles concurrency, isolation, blocking, and deadlock detection.                                     |
| Log Manager             | Writes changes to the transaction log file (.ldf) for rollback and recovery.                         |
| SQL OS                  | Internal layer for scheduling, memory, I/O, and worker management.                                   |
| Protocol Layer          | Handles communication between clients like SSMS and SQL Server.                                      |

This script creates a small Timesheet database and demonstrates:
  - PRIMARY KEY constraints
  - FOREIGN KEY constraints
  - NOT NULL constraints
  - UNIQUE constraints
  - CHECK constraints
  - DEFAULT constraints
  - JSON semi-structured data
  - extra indexes besides PK/FK indexes
  - a normal view
  - an indexed view, which is SQL Server's materialized-view equivalent
  - SELECT with GROUP BY
  - SELECT with LEFT JOIN
  - SELECT with an analytic/window function other than ROW_NUMBER

Note:
  This script drops and recreates only the TimesheetSystemDB database.
  The folder C:\SQL_Database must exist before running PAS 1.
*/

USE master;
GO

-- PAS 0: Clean previous homework run.
IF DB_ID(N'TimesheetSystemDB') IS NOT NULL
BEGIN
    ALTER DATABASE TimesheetSystemDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE TimesheetSystemDB;
END;
GO

-- PAS 1: Create database in a specific location, similar to the course walkthrough.
CREATE DATABASE TimesheetSystemDB
ON PRIMARY (
    NAME = 'TimesheetSystemDB_Data',
    FILENAME = 'C:\\SQL_Database\\TimesheetSystemDB_Data.mdf',
    SIZE = 100MB,
    FILEGROWTH = 50MB
)
LOG ON (
    NAME = 'TimesheetSystemDB_Log',
    FILENAME = 'C:\\SQL_Database\\TimesheetSystemDB_Log.ldf',
    SIZE = 50MB,
    FILEGROWTH = 50MB
);
GO

-- PAS 2: Add a separate filegroup for nonclustered indexes.
ALTER DATABASE TimesheetSystemDB ADD FILEGROUP FG_Index;
GO

ALTER DATABASE TimesheetSystemDB
ADD FILE (
    NAME = 'TimesheetSystemDB_Index',
    FILENAME = 'C:\\SQL_Database\\TimesheetSystemDB_Index.ndf',
    SIZE = 50MB,
    FILEGROWTH = 25MB
) TO FILEGROUP FG_Index;
GO

USE TimesheetSystemDB;
GO

-- PAS 3: Check database metadata and physical files.
SELECT name, database_id, create_date
FROM sys.databases
WHERE name = 'TimesheetSystemDB';
GO

SELECT name, type_desc
FROM sys.filegroups;
GO

SELECT name, type_desc, physical_name
FROM sys.database_files;
GO

-- Required SET options for indexed views in SQL Server.
SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
SET ANSI_PADDING ON;
SET ANSI_WARNINGS ON;
SET CONCAT_NULL_YIELDS_NULL ON;
SET ARITHABORT ON;
SET NUMERIC_ROUNDABORT OFF;
GO

-- PAS 4: Create schemas.
CREATE SCHEMA app;
GO

CREATE SCHEMA reporting;
GO

-- PAS 5: Create tables and constraints.
/* Departments are used to group employees. */
CREATE TABLE app.Departments (
    department_id INT IDENTITY(1,1) NOT NULL,
    department_name VARCHAR(100) NOT NULL,
    CONSTRAINT PK_Departments PRIMARY KEY (department_id),
    CONSTRAINT UQ_Departments_Name UNIQUE (department_name)
);
GO

/* Employees can have a manager, creating a self-referencing foreign key. */
CREATE TABLE app.Employees (
    employee_id INT IDENTITY(1,1) NOT NULL,
    employee_code VARCHAR(20) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(150) NOT NULL,
    department_id INT NOT NULL,
    manager_employee_id INT NULL,
    hire_date DATE NOT NULL
        CONSTRAINT DF_Employees_HireDate DEFAULT (CONVERT(date, GETDATE())),
    active_flag BIT NOT NULL
        CONSTRAINT DF_Employees_ActiveFlag DEFAULT (1),
    hourly_rate DECIMAL(10,2) NOT NULL,
    profile_json NVARCHAR(MAX) NOT NULL
        CONSTRAINT DF_Employees_ProfileJson DEFAULT (N'{}'),
    CONSTRAINT PK_Employees PRIMARY KEY (employee_id),
    CONSTRAINT UQ_Employees_Code UNIQUE (employee_code),
    CONSTRAINT UQ_Employees_Email UNIQUE (email),
    CONSTRAINT FK_Employees_Departments
        FOREIGN KEY (department_id) REFERENCES app.Departments(department_id),
    CONSTRAINT FK_Employees_Manager
        FOREIGN KEY (manager_employee_id) REFERENCES app.Employees(employee_id),
    CONSTRAINT CK_Employees_HourlyRate CHECK (hourly_rate > 0),
    CONSTRAINT CK_Employees_ActiveFlag CHECK (active_flag IN (0, 1)),
    CONSTRAINT CK_Employees_ProfileJson CHECK (ISJSON(profile_json) = 1)
);
GO

CREATE TABLE app.Clients (
    client_id INT IDENTITY(1,1) NOT NULL,
    client_name VARCHAR(150) NOT NULL,
    CONSTRAINT PK_Clients PRIMARY KEY (client_id),
    CONSTRAINT UQ_Clients_Name UNIQUE (client_name)
);
GO

CREATE TABLE app.Projects (
    project_id INT IDENTITY(1,1) NOT NULL,
    client_id INT NOT NULL,
    project_code VARCHAR(30) NOT NULL,
    project_name VARCHAR(150) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NULL,
    billable_flag BIT NOT NULL
        CONSTRAINT DF_Projects_BillableFlag DEFAULT (1),
    budget_hours DECIMAL(10,2) NULL,
    CONSTRAINT PK_Projects PRIMARY KEY (project_id),
    CONSTRAINT UQ_Projects_Code UNIQUE (project_code),
    CONSTRAINT FK_Projects_Clients
        FOREIGN KEY (client_id) REFERENCES app.Clients(client_id),
    CONSTRAINT CK_Projects_Dates CHECK (end_date IS NULL OR end_date >= start_date),
    CONSTRAINT CK_Projects_BillableFlag CHECK (billable_flag IN (0, 1)),
    CONSTRAINT CK_Projects_BudgetHours CHECK (budget_hours IS NULL OR budget_hours > 0)
);
GO

CREATE TABLE app.Timesheets (
    timesheet_id INT IDENTITY(1,1) NOT NULL,
    employee_id INT NOT NULL,
    period_start_date DATE NOT NULL,
    period_end_date DATE NOT NULL,
    status VARCHAR(20) NOT NULL
        CONSTRAINT DF_Timesheets_Status DEFAULT ('Draft'),
    submitted_at DATETIME2(0) NULL,
    approved_by_employee_id INT NULL,
    approved_at DATETIME2(0) NULL,
    audit_xml XML NULL,
    CONSTRAINT PK_Timesheets PRIMARY KEY (timesheet_id),
    CONSTRAINT UQ_Timesheets_Employee_Period UNIQUE (employee_id, period_start_date),
    CONSTRAINT FK_Timesheets_Employees
        FOREIGN KEY (employee_id) REFERENCES app.Employees(employee_id),
    CONSTRAINT FK_Timesheets_Approver
        FOREIGN KEY (approved_by_employee_id) REFERENCES app.Employees(employee_id),
    CONSTRAINT CK_Timesheets_Period CHECK (period_end_date >= period_start_date),
    CONSTRAINT CK_Timesheets_Status CHECK (status IN ('Draft', 'Submitted', 'Approved', 'Rejected')),
    CONSTRAINT CK_Timesheets_ApprovedState CHECK (
        status <> 'Approved'
        OR (approved_by_employee_id IS NOT NULL AND approved_at IS NOT NULL)
    )
);
GO

CREATE TABLE app.TimesheetEntries (
    entry_id INT IDENTITY(1,1) NOT NULL,
    timesheet_id INT NOT NULL,
    project_id INT NOT NULL,
    work_date DATE NOT NULL,
    hours_worked DECIMAL(5,2) NOT NULL,
    activity_type VARCHAR(30) NOT NULL
        CONSTRAINT DF_TimesheetEntries_ActivityType DEFAULT ('Development'),
    description NVARCHAR(400) NULL,
    entry_metadata_json NVARCHAR(MAX) NOT NULL
        CONSTRAINT DF_TimesheetEntries_MetadataJson DEFAULT (N'{}'),
    created_at DATETIME2(0) NOT NULL
        CONSTRAINT DF_TimesheetEntries_CreatedAt DEFAULT (SYSUTCDATETIME()),
    CONSTRAINT PK_TimesheetEntries PRIMARY KEY (entry_id),
    CONSTRAINT UQ_TimesheetEntries_NaturalEntry UNIQUE (timesheet_id, project_id, work_date, activity_type),
    CONSTRAINT FK_TimesheetEntries_Timesheets
        FOREIGN KEY (timesheet_id) REFERENCES app.Timesheets(timesheet_id) ON DELETE CASCADE,
    CONSTRAINT FK_TimesheetEntries_Projects
        FOREIGN KEY (project_id) REFERENCES app.Projects(project_id),
    CONSTRAINT CK_TimesheetEntries_Hours CHECK (hours_worked > 0 AND hours_worked <= 24),
    CONSTRAINT CK_TimesheetEntries_ActivityType CHECK (
        activity_type IN ('Development', 'Testing', 'Analysis', 'Meeting', 'Support', 'Training')
    ),
    CONSTRAINT CK_TimesheetEntries_MetadataJson CHECK (ISJSON(entry_metadata_json) = 1)
);
GO

-- PAS 6: Create extra indexes besides primary-key and foreign-key relationships.
CREATE INDEX IX_Employees_LastName_FirstName
    ON app.Employees(last_name, first_name)
    ON FG_Index;
GO

CREATE INDEX IX_Projects_ProjectName
    ON app.Projects(project_name)
    ON FG_Index;
GO

CREATE INDEX IX_Timesheets_Status_Period
    ON app.Timesheets(status, period_start_date, period_end_date)
    ON FG_Index;
GO

CREATE INDEX IX_TimesheetEntries_WorkDate
    ON app.TimesheetEntries(work_date)
    ON FG_Index;
GO

-- PAS 7: Populate tables with sample data.
INSERT INTO app.Departments (department_name)
VALUES
    ('Data Engineering'),
    ('Software Engineering'),
    ('Quality Assurance');
GO

INSERT INTO app.Employees (
    employee_code,
    first_name,
    last_name,
    email,
    department_id,
    manager_employee_id,
    hire_date,
    hourly_rate,
    profile_json
)
VALUES
    ('E001', 'Radu', 'Vasile', 'radu.vasile@example.com', 1, NULL, '2024-01-15', 45.00,
     N'{"skills":["sql","c","algorithms"],"level":"junior-data"}'),
    ('E002', 'Ana', 'Popescu', 'ana.popescu@example.com', 1, 1, '2023-07-01', 55.00,
     N'{"skills":["etl","data-modeling"],"level":"mid"}'),
    ('E003', 'Mihai', 'Ionescu', 'mihai.ionescu@example.com', 2, 1, '2022-03-10', 60.00,
     N'{"skills":["backend","api"],"level":"senior"}'),
    ('E004', 'Elena', 'Dumitrescu', 'elena.dumitrescu@example.com', 3, 3, '2024-09-02', 40.00,
     N'{"skills":["testing","automation"],"level":"junior"}');
GO

INSERT INTO app.Clients (client_name)
VALUES
    ('Endava Internal'),
    ('Acme Finance'),
    ('Northwind Retail');
GO

INSERT INTO app.Projects (
    client_id,
    project_code,
    project_name,
    start_date,
    end_date,
    billable_flag,
    budget_hours
)
VALUES
    (1, 'INT-TRAIN', 'Internal Training Platform', '2026-01-01', NULL, 0, 400.00),
    (2, 'ACME-DWH', 'Finance Data Warehouse', '2026-02-01', NULL, 1, 1200.00),
    (3, 'NWR-API', 'Retail API Modernization', '2026-03-01', NULL, 1, 900.00),
    (1, 'INT-BENCH', 'Bench Learning Time', '2026-01-01', NULL, 0, NULL);
GO

INSERT INTO app.Timesheets (
    employee_id,
    period_start_date,
    period_end_date,
    status,
    submitted_at,
    approved_by_employee_id,
    approved_at,
    audit_xml
)
VALUES
    (1, '2026-07-06', '2026-07-12', 'Approved', '2026-07-12T18:00:00', 2, '2026-07-13T09:00:00',
     '<audit><event name="submitted"/><event name="approved"/></audit>'),
    (2, '2026-07-06', '2026-07-12', 'Submitted', '2026-07-12T17:30:00', NULL, NULL,
     '<audit><event name="submitted"/></audit>'),
    (3, '2026-07-06', '2026-07-12', 'Draft', NULL, NULL, NULL,
     '<audit><event name="created"/></audit>');
GO

INSERT INTO app.TimesheetEntries (
    timesheet_id,
    project_id,
    work_date,
    hours_worked,
    activity_type,
    description,
    entry_metadata_json
)
VALUES
    (1, 1, '2026-07-06', 2.00, 'Training', 'RDBMS course study', N'{"source":"course","remote":true}'),
    (1, 2, '2026-07-06', 6.00, 'Development', 'Built staging load prototype', N'{"ticket":"ACME-101","remote":true}'),
    (1, 2, '2026-07-07', 7.50, 'Testing', 'Validated warehouse mappings', N'{"ticket":"ACME-102","remote":false}'),
    (1, 1, '2026-07-08', 4.00, 'Training', 'SQL Server practice', N'{"source":"self-study","remote":true}'),
    (2, 2, '2026-07-06', 8.00, 'Analysis', 'Requirements workshop', N'{"ticket":"ACME-201","remote":true}'),
    (2, 2, '2026-07-07', 6.50, 'Development', 'Designed fact table model', N'{"ticket":"ACME-202","remote":true}'),
    (2, 3, '2026-07-08', 3.00, 'Meeting', 'API planning', N'{"ticket":"NWR-300","remote":false}'),
    (3, 3, '2026-07-07', 5.00, 'Development', 'Implemented endpoint changes', N'{"ticket":"NWR-301","remote":true}'),
    (3, 4, '2026-07-08', 2.50, 'Training', 'Internal learning', N'{"source":"bench","remote":true}');
GO

-- PAS 8: Create a normal view for readable reporting.
/* Normal view: readable detailed reporting shape. */
CREATE VIEW reporting.vw_timesheet_detail
AS
SELECT
    e.employee_id,
    e.employee_code,
    e.first_name,
    e.last_name,
    d.department_name,
    t.timesheet_id,
    t.period_start_date,
    t.period_end_date,
    t.status,
    te.entry_id,
    te.work_date,
    te.hours_worked,
    te.activity_type,
    p.project_code,
    p.project_name,
    c.client_name,
    te.entry_metadata_json
FROM app.TimesheetEntries te
INNER JOIN app.Timesheets t
    ON t.timesheet_id = te.timesheet_id
INNER JOIN app.Employees e
    ON e.employee_id = t.employee_id
INNER JOIN app.Departments d
    ON d.department_id = e.department_id
INNER JOIN app.Projects p
    ON p.project_id = te.project_id
INNER JOIN app.Clients c
    ON c.client_id = p.client_id;
GO

-- PAS 9: Create a materialized-view equivalent.
/*
Materialized view requirement:
SQL Server does not use CREATE MATERIALIZED VIEW.
The SQL Server equivalent is an indexed view: a schema-bound view with a unique clustered index.
*/
CREATE VIEW reporting.vw_employee_project_hours_summary
WITH SCHEMABINDING
AS
SELECT
    t.employee_id,
    te.project_id,
    COUNT_BIG(*) AS entry_count,
    SUM(te.hours_worked) AS total_hours
FROM app.Timesheets AS t
INNER JOIN app.TimesheetEntries AS te
    ON te.timesheet_id = t.timesheet_id
GROUP BY
    t.employee_id,
    te.project_id;
GO

CREATE UNIQUE CLUSTERED INDEX CIX_vw_employee_project_hours_summary
    ON reporting.vw_employee_project_hours_summary(employee_id, project_id)
    ON FG_Index;
GO

-- PAS 10: Report/demo SELECT queries required by the assignment.
/*
SELECT 1 - GROUP BY:
Shows total hours per employee and project.
This is useful for billing or project allocation reports.
*/
SELECT
    v.employee_code,
    v.first_name,
    v.last_name,
    v.project_code,
    v.project_name,
    SUM(v.hours_worked) AS total_hours
FROM reporting.vw_timesheet_detail AS v
GROUP BY
    v.employee_code,
    v.first_name,
    v.last_name,
    v.project_code,
    v.project_name
ORDER BY
    v.employee_code,
    v.project_code;
GO

/*
SELECT 2 - LEFT JOIN:
Shows all employees, including employees that do not yet have timesheets.
If an employee has no timesheet, the timesheet columns are NULL.
*/
SELECT
    e.employee_code,
    e.first_name,
    e.last_name,
    t.timesheet_id,
    t.period_start_date,
    t.period_end_date,
    t.status
FROM app.Employees AS e
LEFT JOIN app.Timesheets AS t
    ON t.employee_id = e.employee_id
ORDER BY
    e.employee_code,
    t.period_start_date;
GO

/*
SELECT 3 - Analytic/window function:
Uses RANK, not ROW_NUMBER, to rank employees by total approved/submitted hours.
Employees with the same total hours receive the same rank.
*/
WITH employee_hours AS (
    SELECT
        e.employee_id,
        e.employee_code,
        e.first_name,
        e.last_name,
        SUM(te.hours_worked) AS total_hours
    FROM app.Employees AS e
    INNER JOIN app.Timesheets AS t
        ON t.employee_id = e.employee_id
    INNER JOIN app.TimesheetEntries AS te
        ON te.timesheet_id = t.timesheet_id
    WHERE t.status IN ('Submitted', 'Approved')
    GROUP BY
        e.employee_id,
        e.employee_code,
        e.first_name,
        e.last_name
)
SELECT
    employee_code,
    first_name,
    last_name,
    total_hours,
    RANK() OVER (ORDER BY total_hours DESC) AS hours_rank
FROM employee_hours
ORDER BY
    hours_rank,
    employee_code;
GO

/*
SELECT 4 - JSON semi-structured data:
Reads a value from the JSON metadata column.
This proves the database can store and query semi-structured data.
*/
SELECT
    entry_id,
    work_date,
    hours_worked,
    JSON_VALUE(entry_metadata_json, '$.ticket') AS ticket_code,
    JSON_VALUE(entry_metadata_json, '$.remote') AS remote_work
FROM app.TimesheetEntries
WHERE ISJSON(entry_metadata_json) = 1;
GO

/*
SELECT 5 - Indexed view check:
Reads from the indexed view that acts like a materialized summary.
*/
SELECT
    e.employee_code,
    e.first_name,
    e.last_name,
    p.project_code,
    p.project_name,
    s.entry_count,
    s.total_hours
FROM reporting.vw_employee_project_hours_summary AS s
INNER JOIN app.Employees AS e
    ON e.employee_id = s.employee_id
INNER JOIN app.Projects AS p
    ON p.project_id = s.project_id
ORDER BY
    e.employee_code,
    p.project_code;
GO

-- PAS 11: Optional ACID/constraint demonstration, left commented so the final script runs cleanly.
/*
BEGIN TRANSACTION;

INSERT INTO app.TimesheetEntries (
    timesheet_id,
    project_id,
    work_date,
    hours_worked,
    activity_type,
    description,
    entry_metadata_json
)
VALUES (
    1,
    1,
    '2026-07-09',
    30.00,
    'Training',
    'This row is invalid because hours_worked must be <= 24.',
    N'{"test":"check-constraint"}'
);

ROLLBACK;
*/
GO

-- PAS 12: Stored procedure, similar to the course walkthrough.
CREATE OR ALTER PROCEDURE reporting.show_employee_project_hours
    @employee_code VARCHAR(20)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        e.employee_code,
        e.first_name,
        e.last_name,
        p.project_code,
        p.project_name,
        s.entry_count,
        s.total_hours
    FROM reporting.vw_employee_project_hours_summary AS s
    INNER JOIN app.Employees AS e
        ON e.employee_id = s.employee_id
    INNER JOIN app.Projects AS p
        ON p.project_id = s.project_id
    WHERE e.employee_code = @employee_code
    ORDER BY
        p.project_code;
END;
GO

EXEC reporting.show_employee_project_hours @employee_code = 'E001';
GO

-- PAS 13: Temporary tables, similar to the course walkthrough.
DROP TABLE IF EXISTS #temp_employee_project_hours;
GO

SELECT
    e.employee_code,
    p.project_code,
    s.total_hours
INTO #temp_employee_project_hours
FROM reporting.vw_employee_project_hours_summary AS s
INNER JOIN app.Employees AS e
    ON e.employee_id = s.employee_id
INNER JOIN app.Projects AS p
    ON p.project_id = s.project_id;
GO

/*
SELECT 6 - Temporary table check:
Shows the data copied into a local temporary table for this SSMS session.
*/
SELECT *
FROM #temp_employee_project_hours
ORDER BY employee_code, project_code;
GO

/*
PAS 14: Permission demo from the course walkthrough.
This section is intentionally not active because CREATE LOGIN is a server-level operation.
On the current local setup it may fail unless the connected login has securityadmin/sysadmin.

Example pattern:
    CREATE LOGIN timesheet_readonly_user WITH PASSWORD = 'StrongPassword123!', CHECK_POLICY = ON;
    USE TimesheetSystemDB;
    CREATE USER timesheet_readonly_user FOR LOGIN timesheet_readonly_user;
    CREATE ROLE TimesheetReadOnly;
    GRANT SELECT ON SCHEMA::reporting TO TimesheetReadOnly;
    EXEC sp_addrolemember 'TimesheetReadOnly', 'timesheet_readonly_user';
*/
