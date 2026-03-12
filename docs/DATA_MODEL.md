```markdown
# Data model for recruiment portal

The system manages:

- Students
- Departments
- Companies
- Recruiters
- Job postings
- Applications
- Resume submissions
- Login authentication

---

# 🗄️ Database Overview

Database Name: if0_41372192_placement

```

placement

```

Main purpose: Manage the entire **college recruitment workflow**.

---

## 🧱 Database Tables

The system contains the following tables:

| Table | Purpose |
|------|--------|
| `departments` | Stores college departments |
| `students` | Student profile information |
| `student_login` | Student login credentials |
| `companies` | Companies participating in recruitment |
| `recruiters` | Recruiters from companies |
| `recruiter_login` | Recruiter login credentials |
| `jobs` | Job postings |
| `job_departments` | Eligible departments for each job |
| `applications` | Student job applications |

---


```
## 🧩 Entity Relationship Overview

```text
Departments
     │
     │
Students
     │
     │ apply
     ▼
Applications
     ▲
     │
Jobs
     │
     ▼
Companies
     │
     ▼
Recruiters

```

---

# 📚 Table Descriptions

## 1️⃣ Departments

Stores college departments.

| Column | Description |
|------|-------------|
| department_id | Primary key |
| department_name | Department name |

Example:

```

CS
BITy
BCA
ENG
MCA

```

---

## 2️⃣ Students

Stores student profile details.

| Column | Description |
|------|-------------|
| student_id | Primary key |
| name | Student name |
| email | Unique email |
| phone | Phone number |
| department_id | Department reference |
| cgpa | Student CGPA |
| graduation_year | Year of graduation |

Relationship:

```

students.department_id → departments.department_id

```

---

## 3️⃣ Student Login

Handles authentication for students.

| Column | Description |
|------|-------------|
| login_id | Primary key |
| student_id | Linked student |
| email | Login email |
| password | Password |

Relationship:

```

student_login.student_id → students.student_id

```

---

## 4️⃣ Companies

Stores companies participating in recruitment.

| Column | Description |
|------|-------------|
| company_id | Primary key |
| company_name | Company name |
| website | Company website |
| industry | Industry type |
| location | Company location |

Example:

```

TCS
Infosys
Wipro
Zoho
Amazon

```

---

## 5️⃣ Recruiters

Recruiters belong to companies.

| Column | Description |
|------|-------------|
| recruiter_id | Primary key |
| name | Recruiter name |
| email | Recruiter email |
| company_id | Linked company |

Relationship:

```

recruiters.company_id → companies.company_id

```

---

## 6️⃣ Recruiter Login

Authentication table for recruiters.

| Column | Description |
|------|-------------|
| login_id | Primary key |
| recruiter_id | Linked recruiter |
| email | Login email |
| password | Password |

Relationship:

```

recruiter_login.recruiter_id → recruiters.recruiter_id

```

---

## 7️⃣ Jobs

Stores job postings created by companies.

| Column | Description |
|------|-------------|
| job_id | Primary key |
| title | Job title |
| description | Job description |
| location | Job location |
| salary | Salary offered |
| eligibility_cgpa | Minimum CGPA |
| company_id | Company posting job |
| posted_date | Job posting date |

Relationship:

```

jobs.company_id → companies.company_id

```

---

## 8️⃣ Job Departments

Defines which departments can apply for each job.

This creates a **many-to-many relationship** between jobs and departments.

Example:

```

Software Engineer → CS, BITy
Cloud Engineer → CS, BITy, BCA

```

| Column | Description |
|------|-------------|
| job_id | Job reference |
| department_id | Eligible department |

Primary key:

```

(job_id, department_id)

```

---

## 9️⃣ Applications

Stores job applications submitted by students.

| Column | Description |
|------|-------------|
| application_id | Primary key |
| student_id | Applicant |
| job_id | Job applied |
| resume_url | Resume file |
| application_date | Date applied |
| status | Application status |

Relationship:

```

applications.student_id → students.student_id
applications.job_id → jobs.job_id

```

Unique constraint:

```

(student_id, job_id)

```

Prevents students from applying twice to the same job.

---

# 🔄 System Workflow

## 👨‍🎓 Student Flow

1. Student registers/login
2. Student profile stored in `students`
3. Student views available jobs
4. System checks department eligibility
5. Student uploads resume
6. Application stored in `applications`

Example:

```

Student: Arun
Job: Software Engineer
Resume: resumes/arun_software.pdf
Status: Applied

```

---

## 🧑‍💼 Recruiter Flow

1. Recruiter login
2. Recruiter belongs to company
3. Recruiter posts jobs
4. Recruiter reviews student applications
5. Recruiter updates application status

Possible statuses:

```

Applied
Shortlisted
Interview Scheduled
Rejected
Selected

```

---

# 📂 Resume Handling

Each application stores its own resume.

```

applications.resume_url

```

Example:

```

resumes/arun_software.pdf
resumes/priya_system.pdf

```

This allows students to upload **different resumes for different jobs**.

---

# 🔐 Authentication

The system uses **separate login tables**:

Student login

```

student_login

```

Recruiter login

```

recruiter_login

```

This keeps authentication separate from profile data.

---

# ⚡ Key Features

- Student job applications
- Recruiter job posting
- Department-based eligibility
- Resume upload per application
- Duplicate application prevention
- Company recruiter management

---