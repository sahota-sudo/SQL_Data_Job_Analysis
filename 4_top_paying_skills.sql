/*
Answer: What are the top skills based on salary?

- Look at the average salary associated with each skill for Data Analyst positions
- Focuses on roles with specified salaries, reagrdless of location
- Why? It reveals how different skills impact salary levels for Data Analysts and
    helps identify the most financially rewarding skills to acquire or improve
*/

SELECT
    skills,
    ROUND(AVG(salary_year_avg), 0) salary_avg
FROM
    job_postings_fact
	INNER JOIN
    skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
	INNER JOIN
    skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
GROUP BY
    skills
ORDER BY
    salary_avg DESC
LIMIT 25

/*

[
  {
    "skills": "svn",
    "salary_avg": "400000"
  },
  {
    "skills": "solidity",
    "salary_avg": "179000"
  },
  {
    "skills": "couchbase",
    "salary_avg": "160515"
  },
  {
    "skills": "datarobot",
    "salary_avg": "155486"
  },
  {
    "skills": "golang",
    "salary_avg": "155000"
  },
  {
    "skills": "mxnet",
    "salary_avg": "149000"
  },
  {
    "skills": "dplyr",
    "salary_avg": "147633"
  },
  {
    "skills": "vmware",
    "salary_avg": "147500"
  },
  {
    "skills": "terraform",
    "salary_avg": "146734"
  },
  {
    "skills": "twilio",
    "salary_avg": "138500"
  },
  {
    "skills": "gitlab",
    "salary_avg": "134126"
  },
  {
    "skills": "kafka",
    "salary_avg": "129999"
  },
  {
    "skills": "puppet",
    "salary_avg": "129820"
  },
  {
    "skills": "keras",
    "salary_avg": "127013"
  },
  {
    "skills": "pytorch",
    "salary_avg": "125226"
  },
  {
    "skills": "perl",
    "salary_avg": "124686"
  },
  {
    "skills": "ansible",
    "salary_avg": "124370"
  },
  {
    "skills": "hugging face",
    "salary_avg": "123950"
  },
  {
    "skills": "tensorflow",
    "salary_avg": "120647"
  },
  {
    "skills": "cassandra",
    "salary_avg": "118407"
  },
  {
    "skills": "notion",
    "salary_avg": "118092"
  },
  {
    "skills": "atlassian",
    "salary_avg": "117966"
  },
  {
    "skills": "bitbucket",
    "salary_avg": "116712"
  },
  {
    "skills": "airflow",
    "salary_avg": "116387"
  },
  {
    "skills": "scala",
    "salary_avg": "115480"
  }
]
*/