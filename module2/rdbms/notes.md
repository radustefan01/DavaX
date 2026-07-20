# RDBMS - Relational Database Management System

We find out in this introduction course that it's very impractical to store data in files and we need some kind of structure in order to have speed and efficiency.

## Database Types

We have 2 main types of databases:

1. Generic (eg: relational ones)
   - Management systems: Oracle, Microsoft SQL Server, Aurora

2. Specialised (eg: graph, spatial, NoSQL, Vector)
   - Management systems: MongoDB

## RDBMS

### Keys

- PK - primary key, unique, identifies a row, has to be a value
- FK - foreign key, reference to other tables
- UK - unique key, can contain null
- SK - surrogate key

### Relationships

1. One to one: clients that all have an assigned CV
2. One to many: clients that each have multiple invoices associated

### Constraints

- Not null
- Unique
- Check (cell has to respect a category, e.g. true/false)
- Default (default values, or automatically add data in the cell, for example)

### Database Objects and Features

- Views: SELECT (only show the cells you want to show)
- Materialised Views (contains result)
- Sequences (a counter for an ID we can later use as primary key)
- Synonyms (alias)
- Logs (e.g. tracks history for a row)
- Jobs (e.g. once a year adapts wages to inflation)
- Chains (multiple jobs run in a sequence)
- Queues
- Triggers (check if data is valid or does an operation when data updates)

## Side Note

Materialised view has 3 main ways of updating:

1. Refresh on commit  
   (when a source table is updated, e.g. INSERT is done, the materialised view is also refreshed)

2. Fast refresh  
   (it checks which portion needs to refresh) |-> on demand

3. Full refresh  
   (up to bottom)                             |

## Principles

### ACID (relational)

- atomicity (if one step fails, the entire operation fails, e.g. banking)
- consistency (e.g. we can't have a birth date in the future, analogy to constraint)
- isolation (all processes that affect a database are independent, they don't interact in any way)
- durability (changes are permanent even after a crash)

### BASE (for NoSQL)

- basically available (because nodes are distributed, system may return data that's not updated)
- soft state (db state changes over time without explicit input)
- eventually consistent (data isn't consistent at all times, unlike the rigid RDBMS where it is)

### CAP

- consistency (all nodes see the same data at the same time) - pairs with ACID
- availability (every request receives a response) - pairs with BASE
- partition tolerance - both types

## Transaction Isolation Levels

- Read committed (default, shared locks, avoids dirty reads)
- read uncommitted (allows dirty reads)
- repeatable read
- serializable (range locks, full isolation)
- snapshot (row versioning, non-blocking consistency)

## Schema

Schema on read and schema on write

## Popular Relational Databases

- Oracle (enterprise, financial, expensive, good for large OLTP/OLAP)
- SQL Server (integration with Microsoft services, tiered licensing)
- Postgres (free, open source)