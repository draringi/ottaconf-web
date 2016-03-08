CREATE TABLE IF NOT EXISTS "conference" (
	id SERIAL PRIMARY KEY,
	name STRING NOT NULL CHECK(name != ""),
	year int,
	
);
