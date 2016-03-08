package db

import (
	"database/sql"
)

type Manager struct {
	database *sql.DB
}
