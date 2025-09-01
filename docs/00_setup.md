## Goals for Day 1–2

1. Create a safe role/user structure (least privilege).
2. Create a small dev warehouse with cost controls (auto-suspend, resource monitor).
3. Create project database + schemas (RAW, STAGE, CORE) and file format.
4. Create a service user for ingestion (for later Kafka/Snowpipe work) and document secrets handling.
5. Commit the exact SQL to sql/ in your repo for reproducibility.

## Quick checklist

- [x] Create project roles and service account
- [x] Create dev warehouse XSMALL with AUTO_SUSPEND = 60
- [x] Create resource monitor and attach to dev warehouse
- [x] Create PROJECT_DB and schemas RAW, STAGE, CORE
- [x] Create sensible file formats (CSV/JSON) and external/internal stage placeholders
- [x] Add a docs/01-setup.md with screenshots & rationale
- [x] Push SQL files into sql/ddl/ in repo (no credentials)