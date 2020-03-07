BEGIN;

  TRUNCATE
  pubs_crawls,
  crawls,
  pubs,
  RESTART IDENTITY CASCADE;

INSERT INTO pubs
  (id, pub_name, street, city, pub_state, zipcode, phone, longitude, latitude, pub_url)
VALUES
  (1237, 'Black Shirt Brewing Co', '3719 Walnut St', 'Denver', 'Colorado', 80205-2436, '3039932779', -104.9729604, 39.7698142),
  (1238, 'Black Sky Brewery', '490 Santa Fe Dr', 'Denver', 'Colorado', 80204-5024, '9702154536', -104.9983183, 39.7239431),
  (1279, 'Burgundian Brewing Co.', '4725 Lipan St', 'Denver', 'Colorado', 80211-2334, '4704400420', -105.002409475111, 39.7825168);

INSERT INTO crawls
  (crawl_name, date_time)
VALUES
  ('joshs crawl', '2100-05-22T16:28:32.615Z'),
  ('michaels crawl', '2029-01-22T16:28:32.615Z');

INSERT INTO pubs_crawls
  (crawl_id, pub_id, visit_order, duration)
VALUES
  ()