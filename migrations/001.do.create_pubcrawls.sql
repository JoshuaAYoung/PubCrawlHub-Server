

CREATE TABLE Pubs
(
  id int4 PRIMARY KEY,
  pub_name TEXT NOT NULL,
  street TEXT NOT NULL,
  city TEXT NOT NULL,
  pub_state TEXT NOT NULL,
  zipcode int2,
  phone TEXT,
  longitude float8 NOT NULL,
  latitude float8 NOT NULL,
  pub_url TEXT
)

CREATE TABLE Crawls
(
  id serial PRIMARY KEY,
  crawl_name TEXT NOT NULL,
  date_time TIMESTAMP NOT NULL,
)

CREATE TABLE pubs_crawls
(
  crawl_id int4 NOT NULL,
  pub_id int4 NOT NULL,
  visit_order int2 NOT NULL,
  duration int2 NOT NULL,
  PRIMARY KEY(pub_id, crawl_id)
)

ALTER TABLE pubs_crawls ADD CONSTRAINT pubs_crawls_fk0 FOREIGN KEY (crawl_id) REFERENCES Crawls(id);
ALTER TABLE pubs_crawls ADD CONSTRAINT pubs_crawls_fk1 FOREIGN KEY (pub_id) REFERENCES Pubs(id);
