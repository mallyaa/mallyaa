---
layout: default
title: Experience
---

# Work experience

## BetaNXT · Lead Associate (Full Stack Engineer)  
*March 2025 – Present · Bangalore*

---

## Coforge · Senior Technical Analyst  
*Aug 2024 – March 2025 · Bangalore*

- **Orchestration & ETL:** Built and maintained production-grade workflow orchestration using **Apache Airflow**, coordinating multi-stage ETL pipelines with dependency management, event-based triggers, and data-availability checks. Automated downstream **dbt** transformations to refresh curated **Snowflake** models once upstream processing completed.
- **Pipeline stack:** Delivered E2E workflows across **AWS** and **Snowflake**, leveraging Python-based integrations (AWS SDK + Snowflake connectors) to support incremental loads, observability, and reliable execution from ingestion → transformation → warehouse.

---

## Sisense · Data Engineer → Software Engineer  
*June 2021 – March 2024*

### Data Engineer (Oct 2023 – Mar 2024)

- **Real-time ingestion:** Built AWS-based pipelines (S3, Kinesis Data Streams, Firehose, **Lambda**) for JSON payload transformation and flow into RDBMS; orchestrated with **Airflow** and **dbt** for consistent, auditable loads.
- **Stream processing:** Implemented **Spark Structured Streaming** pipelines for nested JSON/Parquet: dynamic schema handling, flattening, time-series aggregation, joins with reference data, and partitioned writes back to S3 for downstream analytics. Tuned batch intervals and **checkpointing** for fault tolerance and low latency.
- **Data ops:** Decommissioned legacy Gainsight flows using **Upsolver**; used Boto3 + Airflow S3 operators for daily transfers; streamlined **Snowpipe**, tables, and dbt models via **YAML-driven macros**, cutting manual effort.
- **Governance:** AWS event-driven patterns for lake-to-DB streaming with integrity checks and update consistency.

### Software Engineer (Jan 2021 – Oct 2023)

- **Cloud & infra:** Delivered cloud-native automation on **AWS** and **Terraform (IaC)** with **Databricks**, improving data pipeline efficiency by **15%** across reporting dashboards and resource utilization.
- **Quality & testing:** Built automation suites in **Java**, **Selenium**, **Cucumber**, and **Python** — **95% test coverage**, **85%** reduction in referential integrity errors; Notebooks automation cut translation time by **75%** and referential errors by **80%+**.
- **Observability:** Developed **Databricks** dashboards for PySpark job performance and data lineage to surface bottlenecks and enforce data quality.
- **ML & analytics:** Delivered samples for Image/Document classification, SVM, time-series, sentiment analysis, and Fourier-based features (Python/R) for internal Playgrounds; collaborated with Product on “From BI to AI” content.

---

## 3M Health Information Systems · Data Systems Analyst (Contract)  
*Oct 2019 – June 2020*

- Modeled and analyzed healthcare data (inpatient, outpatient, professional, pharmacy claims); wrote **SQL** (joins, subqueries, indexing) for extraction and transformation.
- Supported clients with ad-hoc analytics, data quality checks, and visualization (charts, tables) for stakeholder communication; worked with research on analytic process integration.

---

## What I bring (summary)

| Area | Details |
|------|---------|
| **Data & platforms** | AWS (Glue, S3, Kinesis, Lambda, Redshift), Snowflake, dbt, Apache Airflow, Spark Streaming, Terraform, Databricks. ETL design, schema evolution, partitioning, checkpointing. |
| **Engineering practices** | CI/CD, automation testing (Selenium, PyTest), version control (Git), code review. Docker/Kubernetes awareness; GDPR/HIPAA-minded data handling. |
| **Impact** | Measurable gains in pipeline efficiency, test coverage, and error reduction; ownership from design to deployment. |

---

*Full CV and timeline: [CV](/cv) · [LinkedIn](https://linkedin.com/in/ankitmallya)*
