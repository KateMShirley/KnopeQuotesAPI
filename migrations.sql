CREATE DATABASE quotes;

\c quotes

CREATE TABLE quotes (id SERIAL PRIMARY KEY, quote TEXT, category VARCHAR(255), ep INT, epName VARCHAR(255), epLink VARCHAR(255));
