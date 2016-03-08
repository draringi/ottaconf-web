package db

// Conference alligns one-to-one with the conference table in the database,
// maintaining basic information on the conferences, including where to find
// the schedule.
type Conference struct {
	id          int
	name        string
	year        int
	scheduleURL string
	personBase  string
}
