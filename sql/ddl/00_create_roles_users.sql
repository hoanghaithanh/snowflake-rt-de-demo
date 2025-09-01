-- create project roles
CREATE ROLE IF NOT EXISTS DE_ADMIN;
CREATE ROLE IF NOT EXISTS DE_DEV;
CREATE ROLE IF NOT EXISTS DE_PROD; 
CREATE ROLE IF NOT EXISTS ANALYST_READONLY;
CREATE ROLE IF NOT EXISTS SVC_INGEST;

-- create a service user for future Kafka/Snowpipe (replace password / prefer keypair)
CREATE USER IF NOT EXISTS svc_ingest
  PASSWORD = 'DUMMYPASSWORD!'
  DEFAULT_ROLE = SVC_INGEST
  MUST_CHANGE_PASSWORD = TRUE
  COMMENT = 'Service account for ingestion; do not commit credentials';

-- (Optional) create a personal dev user if you want a dedicated user:
CREATE USER IF NOT EXISTS dev_hoangh
  PASSWORD = 'DUMMYPASSWORD!'
  DEFAULT_ROLE = DE_DEV
  MUST_CHANGE_PASSWORD = TRUE;
