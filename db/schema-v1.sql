CREATE TABLE IF NOT EXISTS "conference" (
	id SERIAL PRIMARY KEY,
	name varchar(32) NOT NULL CHECK(name != ""),
	year int,
	schedule_url varchar(128) NOT NULL CHECK(scheduleURL != ""),
	person_base varchar(128) NOT NULL CHECK(scheduleURL != ""),
	CONSTRAINT conference_year_uniqueness UNIQUE(name, year)
);

CREATE TABLE IF NOT EXISTS "schedule" (
	conference int NOT NULL REFERENCES "conference"(id),
	version varchar(32) NOT NULL CHECK(name != ""),
	path varchar(128) NOT NULL CHECK(name != "") UNIQUE,
	CONSTRAINT schedule_key PRIMARY KEY(conference, version)
);
