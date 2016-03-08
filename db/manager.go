package db

import (
	"database/sql"
)

// Manager maintains database connections, and schedules queries to the database.
type Manager struct {
	database *sql.DB
}

func (m *Manager) run() {

}
