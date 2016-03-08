package db

// Internal caching system
type cache struct {
	conferences map[string]*Conference
}
