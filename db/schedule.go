package db

// Schedule alligns one-to-one with the schedule table in the database,
// keeping track of different versions of the schedule, as well as the location
// of the xml file in the filesystem.
type Schedule struct {
	conf    *Conference
	version string
	path    string
}
