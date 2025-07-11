package dbType

type DbType string

const (
	ACCOUNT DbType = "ACCOUNT"
	GAME    DbType = "GAME"
	LOG     DbType = "LOG"
)

func (d DbType) Atoi() int8 {
	switch d {
	case ACCOUNT:
		return 0
	case GAME:
		return 1
	case LOG:
		return 2
	default:
		return -1
	}
}
