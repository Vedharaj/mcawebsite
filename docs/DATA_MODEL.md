# Recruitment Portal Data Model

This document reflects the schema defined in `db/placement.sql`.

## Database Overview

- Database name: `placement`
- Engine used by all tables: `MyISAM`
- Character set/collation: `latin1` / `latin1_swedish_ci`

Note: `MyISAM` does not enforce foreign key constraints. Relationships listed below are logical relationships inferred from indexed columns and naming.

## Tables

| Table | Purpose |
|---|---|
| `departments` | Master list of academic departments |
| `students` | Student profile records |
| `student_login` | Student authentication credentials |
| `companies` | Participating company records |
| `recruiters` | Recruiter profiles mapped to companies |
| `recruiter_login` | Recruiter authentication credentials |
| `jobs` | Job postings from companies |
| `job_departments` | Department eligibility mapping for jobs |
| `applications` | Student applications to jobs |

## Entity Relationships

```text
departments (1) ----< students
departments (M) ----< job_departments >---- (M) jobs
companies   (1) ----< recruiters
companies   (1) ----< jobs
students    (1) ----< student_login
recruiters  (1) ----< recruiter_login
students    (1) ----< applications >---- (1) jobs
```

## Table Definitions

### 1) `departments`

| Column | Type | Null | Key | Extra |
|---|---|---|---|---|
| `department_id` | `int(11)` | NO | PK | `AUTO_INCREMENT` |
| `department_name` | `varchar(100)` | NO |  |  |

Indexes:
- Primary key on `department_id`

### 2) `students`

| Column | Type | Null | Key | Extra |
|---|---|---|---|---|
| `student_id` | `int(11)` | NO | PK | `AUTO_INCREMENT` |
| `name` | `varchar(100)` | YES |  |  |
| `email` | `varchar(100)` | YES | UNIQUE |  |
| `phone` | `varchar(15)` | YES |  |  |
| `department_id` | `int(11)` | YES | INDEX |  |
| `cgpa` | `decimal(3,2)` | YES |  |  |
| `graduation_year` | `year(4)` | YES |  |  |

Indexes:
- Primary key on `student_id`
- Unique key on `email`
- Index on `department_id`

Logical relationship:
- `students.department_id` -> `departments.department_id`

### 3) `student_login`

| Column | Type | Null | Key | Extra |
|---|---|---|---|---|
| `login_id` | `int(11)` | NO | PK | `AUTO_INCREMENT` |
| `student_id` | `int(11)` | YES | INDEX |  |
| `email` | `varchar(100)` | YES | UNIQUE |  |
| `password` | `varchar(255)` | YES |  |  |

Indexes:
- Primary key on `login_id`
- Unique key on `email`
- Index on `student_id`

Logical relationship:
- `student_login.student_id` -> `students.student_id`

### 4) `companies`

| Column | Type | Null | Key | Extra |
|---|---|---|---|---|
| `company_id` | `int(11)` | NO | PK | `AUTO_INCREMENT` |
| `company_name` | `varchar(150)` | YES | UNIQUE |  |
| `website` | `varchar(255)` | YES |  |  |
| `industry` | `varchar(100)` | YES |  |  |
| `location` | `varchar(100)` | YES |  |  |

Indexes:
- Primary key on `company_id`
- Unique key on `company_name`

### 5) `recruiters`

| Column | Type | Null | Key | Extra |
|---|---|---|---|---|
| `recruiter_id` | `int(11)` | NO | PK | `AUTO_INCREMENT` |
| `name` | `varchar(100)` | YES |  |  |
| `email` | `varchar(100)` | YES | UNIQUE |  |
| `company_id` | `int(11)` | YES | INDEX |  |

Indexes:
- Primary key on `recruiter_id`
- Unique key on `email`
- Index on `company_id`

Logical relationship:
- `recruiters.company_id` -> `companies.company_id`

### 6) `recruiter_login`

| Column | Type | Null | Key | Extra |
|---|---|---|---|---|
| `login_id` | `int(11)` | NO | PK | `AUTO_INCREMENT` |
| `recruiter_id` | `int(11)` | YES | INDEX |  |
| `email` | `varchar(100)` | YES | UNIQUE |  |
| `password` | `varchar(255)` | YES |  |  |

Indexes:
- Primary key on `login_id`
- Unique key on `email`
- Index on `recruiter_id`

Logical relationship:
- `recruiter_login.recruiter_id` -> `recruiters.recruiter_id`

### 7) `jobs`

| Column | Type | Null | Key | Extra |
|---|---|---|---|---|
| `job_id` | `int(11)` | NO | PK | `AUTO_INCREMENT` |
| `title` | `varchar(150)` | YES |  |  |
| `description` | `text` | YES |  |  |
| `location` | `varchar(100)` | YES |  |  |
| `salary` | `decimal(10,2)` | YES |  |  |
| `eligibility_cgpa` | `decimal(3,2)` | YES |  |  |
| `company_id` | `int(11)` | YES | INDEX |  |
| `posted_date` | `date` | YES |  |  |
| `status` | `enum('Upcoming','Ongoing','Closed')` | YES |  | default `'Upcoming'` |

Indexes:
- Primary key on `job_id`
- Index on `company_id`

Logical relationship:
- `jobs.company_id` -> `companies.company_id`

### 8) `job_departments`

| Column | Type | Null | Key | Extra |
|---|---|---|---|---|
| `job_id` | `int(11)` | NO | PK (composite) |  |
| `department_id` | `int(11)` | NO | PK (composite), INDEX |  |

Indexes:
- Composite primary key on (`job_id`, `department_id`)
- Index on `department_id`

Logical relationships:
- `job_departments.job_id` -> `jobs.job_id`
- `job_departments.department_id` -> `departments.department_id`

### 9) `applications`

| Column | Type | Null | Key | Extra |
|---|---|---|---|---|
| `application_id` | `int(11)` | NO | PK | `AUTO_INCREMENT` |
| `student_id` | `int(11)` | YES | UNIQUE (composite) |  |
| `job_id` | `int(11)` | YES | UNIQUE (composite), INDEX |  |
| `resume_url` | `text` | YES |  |  |
| `application_date` | `date` | YES |  |  |
| `status` | `varchar(50)` | YES |  |  |

Indexes:
- Primary key on `application_id`
- Unique composite key `unique_application` on (`student_id`, `job_id`)
- Index on `job_id`

Logical relationships:
- `applications.student_id` -> `students.student_id`
- `applications.job_id` -> `jobs.job_id`

Constraint behavior:
- A student can apply to the same job only once because of the unique composite key (`student_id`, `job_id`).

## Domain Values Seen in Data

- `jobs.status`: `Upcoming`, `Ongoing`, `Closed`
- `applications.status` (sample values): `Applied`, `Shortlisted`, `Interview Scheduled`, `Rejected`, `Selected`

## Authentication Design

- Student authentication is stored in `student_login`.
- Recruiter authentication is stored in `recruiter_login`.
- Profile and login data are separated by design.

## Important Note on Integrity

Because tables use `MyISAM`, relational links are not enforced by database-level foreign keys. Application logic must ensure referential integrity when inserting or deleting related records.