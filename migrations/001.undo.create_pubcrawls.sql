ALTER TABLE pubs_crawls DROP CONSTRAINT pubs_crawls_fk1;
ALTER TABLE pubs_crawls DROP CONSTRAINT pubs_crawls_fk0;

DROP TABLE IF EXISTS pubs_crawls;
DROP TABLE IF EXISTS crawls;
DROP TABLE IF EXISTS pubs;