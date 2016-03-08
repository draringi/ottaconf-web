CREATE TABLE IF NOT EXISTS "conference" (
	id SERIAL PRIMARY KEY,
	name varchar(32) NOT NULL CHECK(name <> ''),
	year int,
	schedule_url varchar(128) NOT NULL CHECK(schedule_url <> ''),
	person_base varchar(128) NOT NULL CHECK(person_base <> ''),
	CONSTRAINT conference_year_uniqueness UNIQUE(name, year)
);

CREATE TABLE IF NOT EXISTS "schedule" (
	conference int NOT NULL REFERENCES "conference"(id),
	version varchar(32) NOT NULL CHECK(version <> ''),
	xml_path varchar(128) NOT NULL CHECK(xml_path <> '') UNIQUE,
	CONSTRAINT schedule_key PRIMARY KEY(conference, version)
);
