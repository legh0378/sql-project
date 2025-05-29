/*
Question: What skills are required for the top-paying data analyst jobs?
- Use the top 10 highest-paying Data Analyst jobs from first query
- Add the specific skills required for these roles
- Why? It provides a detailed look at which high-paying jobs demand certain skills, 
    helping job seekers understand which skills to develop that align with top salaries
*/
WITH top_paying_jobs AS (
    SELECT 
        job_id,
        job_title_short,
        company_dim.name,
        salary_year_avg
    FROM job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
    WHERE
        job_title_short = 'Data Analyst' AND
        salary_year_avg IS NOT NULL AND
        job_work_from_home = TRUE
    ORDER BY salary_year_avg DESC
    LIMIT 10
)
SELECT
    top_paying_jobs.job_id,
    top_paying_jobs.job_title_short,
    top_paying_jobs.name,
    top_paying_jobs.salary_year_avg,
    skills_dim.skills AS skills_required
FROM top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY top_paying_jobs.salary_year_avg DESC
[
  {
    "job_id": 552322,
    "job_title_short": "Data Analyst",
    "name": "AT&T",
    "salary_year_avg": "255829.5",
    "skills_required": "sql"
  },
  {
    "job_id": 552322,
    "job_title_short": "Data Analyst",
    "name": "AT&T",
    "salary_year_avg": "255829.5",
    "skills_required": "python"
  },
  {
    "job_id": 552322,
    "job_title_short": "Data Analyst",
    "name": "AT&T",
    "salary_year_avg": "255829.5",
    "skills_required": "r"
  },
  {
    "job_id": 552322,
    "job_title_short": "Data Analyst",
    "name": "AT&T",
    "salary_year_avg": "255829.5",
    "skills_required": "azure"
  },
  {
    "job_id": 552322,
    "job_title_short": "Data Analyst",
    "name": "AT&T",
    "salary_year_avg": "255829.5",
    "skills_required": "databricks"
  },
  {
    "job_id": 552322,
    "job_title_short": "Data Analyst",
    "name": "AT&T",
    "salary_year_avg": "255829.5",
    "skills_required": "aws"
  },
  {
    "job_id": 552322,
    "job_title_short": "Data Analyst",
    "name": "AT&T",
    "salary_year_avg": "255829.5",
    "skills_required": "pandas"
  },
  {
    "job_id": 552322,
    "job_title_short": "Data Analyst",
    "name": "AT&T",
    "salary_year_avg": "255829.5",
    "skills_required": "pyspark"
  },
  {
    "job_id": 552322,
    "job_title_short": "Data Analyst",
    "name": "AT&T",
    "salary_year_avg": "255829.5",
    "skills_required": "jupyter"
  },
  {
    "job_id": 552322,
    "job_title_short": "Data Analyst",
    "name": "AT&T",
    "salary_year_avg": "255829.5",
    "skills_required": "excel"
  },
  {
    "job_id": 552322,
    "job_title_short": "Data Analyst",
    "name": "AT&T",
    "salary_year_avg": "255829.5",
    "skills_required": "tableau"
  },
  {
    "job_id": 552322,
    "job_title_short": "Data Analyst",
    "name": "AT&T",
    "salary_year_avg": "255829.5",
    "skills_required": "power bi"
  },
  {
    "job_id": 552322,
    "job_title_short": "Data Analyst",
    "name": "AT&T",
    "salary_year_avg": "255829.5",
    "skills_required": "powerpoint"
  },
  {
    "job_id": 99305,
    "job_title_short": "Data Analyst",
    "name": "Pinterest Job Advertisements",
    "salary_year_avg": "232423.0",
    "skills_required": "sql"
  },
  {
    "job_id": 99305,
    "job_title_short": "Data Analyst",
    "name": "Pinterest Job Advertisements",
    "salary_year_avg": "232423.0",
    "skills_required": "python"
  },
  {
    "job_id": 99305,
    "job_title_short": "Data Analyst",
    "name": "Pinterest Job Advertisements",
    "salary_year_avg": "232423.0",
    "skills_required": "r"
  },
  {
    "job_id": 99305,
    "job_title_short": "Data Analyst",
    "name": "Pinterest Job Advertisements",
    "salary_year_avg": "232423.0",
    "skills_required": "hadoop"
  },
  {
    "job_id": 99305,
    "job_title_short": "Data Analyst",
    "name": "Pinterest Job Advertisements",
    "salary_year_avg": "232423.0",
    "skills_required": "tableau"
  },
  {
    "job_id": 1021647,
    "job_title_short": "Data Analyst",
    "name": "Uclahealthcareers",
    "salary_year_avg": "217000.0",
    "skills_required": "sql"
  },
  {
    "job_id": 1021647,
    "job_title_short": "Data Analyst",
    "name": "Uclahealthcareers",
    "salary_year_avg": "217000.0",
    "skills_required": "crystal"
  },
  {
    "job_id": 1021647,
    "job_title_short": "Data Analyst",
    "name": "Uclahealthcareers",
    "salary_year_avg": "217000.0",
    "skills_required": "oracle"
  },
  {
    "job_id": 1021647,
    "job_title_short": "Data Analyst",
    "name": "Uclahealthcareers",
    "salary_year_avg": "217000.0",
    "skills_required": "tableau"
  },
  {
    "job_id": 1021647,
    "job_title_short": "Data Analyst",
    "name": "Uclahealthcareers",
    "salary_year_avg": "217000.0",
    "skills_required": "flow"
  },
  {
    "job_id": 168310,
    "job_title_short": "Data Analyst",
    "name": "SmartAsset",
    "salary_year_avg": "205000.0",
    "skills_required": "sql"
  },
  {
    "job_id": 168310,
    "job_title_short": "Data Analyst",
    "name": "SmartAsset",
    "salary_year_avg": "205000.0",
    "skills_required": "python"
  },
  {
    "job_id": 168310,
    "job_title_short": "Data Analyst",
    "name": "SmartAsset",
    "salary_year_avg": "205000.0",
    "skills_required": "go"
  },
  {
    "job_id": 168310,
    "job_title_short": "Data Analyst",
    "name": "SmartAsset",
    "salary_year_avg": "205000.0",
    "skills_required": "snowflake"
  },
  {
    "job_id": 168310,
    "job_title_short": "Data Analyst",
    "name": "SmartAsset",
    "salary_year_avg": "205000.0",
    "skills_required": "pandas"
  },
  {
    "job_id": 168310,
    "job_title_short": "Data Analyst",
    "name": "SmartAsset",
    "salary_year_avg": "205000.0",
    "skills_required": "numpy"
  },
  {
    "job_id": 168310,
    "job_title_short": "Data Analyst",
    "name": "SmartAsset",
    "salary_year_avg": "205000.0",
    "skills_required": "excel"
  },
  {
    "job_id": 168310,
    "job_title_short": "Data Analyst",
    "name": "SmartAsset",
    "salary_year_avg": "205000.0",
    "skills_required": "tableau"
  },
  {
    "job_id": 168310,
    "job_title_short": "Data Analyst",
    "name": "SmartAsset",
    "salary_year_avg": "205000.0",
    "skills_required": "gitlab"
  },
  {
    "job_id": 731368,
    "job_title_short": "Data Analyst",
    "name": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills_required": "sql"
  },
  {
    "job_id": 731368,
    "job_title_short": "Data Analyst",
    "name": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills_required": "python"
  },
  {
    "job_id": 731368,
    "job_title_short": "Data Analyst",
    "name": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills_required": "azure"
  },
  {
    "job_id": 731368,
    "job_title_short": "Data Analyst",
    "name": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills_required": "aws"
  },
  {
    "job_id": 731368,
    "job_title_short": "Data Analyst",
    "name": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills_required": "oracle"
  },
  {
    "job_id": 731368,
    "job_title_short": "Data Analyst",
    "name": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills_required": "snowflake"
  },
  {
    "job_id": 731368,
    "job_title_short": "Data Analyst",
    "name": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills_required": "tableau"
  },
  {
    "job_id": 731368,
    "job_title_short": "Data Analyst",
    "name": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills_required": "power bi"
  },
  {
    "job_id": 731368,
    "job_title_short": "Data Analyst",
    "name": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills_required": "sap"
  },
  {
    "job_id": 731368,
    "job_title_short": "Data Analyst",
    "name": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills_required": "jenkins"
  },
  {
    "job_id": 731368,
    "job_title_short": "Data Analyst",
    "name": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills_required": "bitbucket"
  },
  {
    "job_id": 731368,
    "job_title_short": "Data Analyst",
    "name": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills_required": "atlassian"
  },
  {
    "job_id": 731368,
    "job_title_short": "Data Analyst",
    "name": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills_required": "jira"
  },
  {
    "job_id": 731368,
    "job_title_short": "Data Analyst",
    "name": "Inclusively",
    "salary_year_avg": "189309.0",
    "skills_required": "confluence"
  },
  {
    "job_id": 310660,
    "job_title_short": "Data Analyst",
    "name": "Motional",
    "salary_year_avg": "189000.0",
    "skills_required": "sql"
  },
  {
    "job_id": 310660,
    "job_title_short": "Data Analyst",
    "name": "Motional",
    "salary_year_avg": "189000.0",
    "skills_required": "python"
  },
  {
    "job_id": 310660,
    "job_title_short": "Data Analyst",
    "name": "Motional",
    "salary_year_avg": "189000.0",
    "skills_required": "r"
  },
  {
    "job_id": 310660,
    "job_title_short": "Data Analyst",
    "name": "Motional",
    "salary_year_avg": "189000.0",
    "skills_required": "git"
  },
  {
    "job_id": 310660,
    "job_title_short": "Data Analyst",
    "name": "Motional",
    "salary_year_avg": "189000.0",
    "skills_required": "bitbucket"
  },
  {
    "job_id": 310660,
    "job_title_short": "Data Analyst",
    "name": "Motional",
    "salary_year_avg": "189000.0",
    "skills_required": "atlassian"
  },
  {
    "job_id": 310660,
    "job_title_short": "Data Analyst",
    "name": "Motional",
    "salary_year_avg": "189000.0",
    "skills_required": "jira"
  },
  {
    "job_id": 310660,
    "job_title_short": "Data Analyst",
    "name": "Motional",
    "salary_year_avg": "189000.0",
    "skills_required": "confluence"
  },
  {
    "job_id": 1749593,
    "job_title_short": "Data Analyst",
    "name": "SmartAsset",
    "salary_year_avg": "186000.0",
    "skills_required": "sql"
  },
  {
    "job_id": 1749593,
    "job_title_short": "Data Analyst",
    "name": "SmartAsset",
    "salary_year_avg": "186000.0",
    "skills_required": "python"
  },
  {
    "job_id": 1749593,
    "job_title_short": "Data Analyst",
    "name": "SmartAsset",
    "salary_year_avg": "186000.0",
    "skills_required": "go"
  },
  {
    "job_id": 1749593,
    "job_title_short": "Data Analyst",
    "name": "SmartAsset",
    "salary_year_avg": "186000.0",
    "skills_required": "snowflake"
  },
  {
    "job_id": 1749593,
    "job_title_short": "Data Analyst",
    "name": "SmartAsset",
    "salary_year_avg": "186000.0",
    "skills_required": "pandas"
  },
  {
    "job_id": 1749593,
    "job_title_short": "Data Analyst",
    "name": "SmartAsset",
    "salary_year_avg": "186000.0",
    "skills_required": "numpy"
  },
  {
    "job_id": 1749593,
    "job_title_short": "Data Analyst",
    "name": "SmartAsset",
    "salary_year_avg": "186000.0",
    "skills_required": "excel"
  },
  {
    "job_id": 1749593,
    "job_title_short": "Data Analyst",
    "name": "SmartAsset",
    "salary_year_avg": "186000.0",
    "skills_required": "tableau"
  },
  {
    "job_id": 1749593,
    "job_title_short": "Data Analyst",
    "name": "SmartAsset",
    "salary_year_avg": "186000.0",
    "skills_required": "gitlab"
  },
  {
    "job_id": 387860,
    "job_title_short": "Data Analyst",
    "name": "Get It Recruit - Information Technology",
    "salary_year_avg": "184000.0",
    "skills_required": "sql"
  },
  {
    "job_id": 387860,
    "job_title_short": "Data Analyst",
    "name": "Get It Recruit - Information Technology",
    "salary_year_avg": "184000.0",
    "skills_required": "python"
  },
  {
    "job_id": 387860,
    "job_title_short": "Data Analyst",
    "name": "Get It Recruit - Information Technology",
    "salary_year_avg": "184000.0",
    "skills_required": "r"
  }
]