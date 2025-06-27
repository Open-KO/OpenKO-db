package tsql

type TSqlType string

// doc: https://learn.microsoft.com/en-us/sql/t-sql/data-types/data-types-transact-sql?view=sql-server-ver17#binary-strings
const (
	TinyInt       TSqlType = "tinyint"       //uint8
	SmallInt      TSqlType = "smallint"      //int16
	Int           TSqlType = "int"           // int32
	BigInt        TSqlType = "bigint"        // int64
	Float         TSqlType = "float"         // float64 but value interpretation depends on (n)
	Real          TSqlType = "real"          // float32
	Char          TSqlType = "char"          // byte, fixed length
	Varchar       TSqlType = "varchar"       // byte, variable length
	NChar         TSqlType = "nchar"         // unicode byte, fixed length
	NVarchar      TSqlType = "nvarchar"      // unicode byte, variable length
	Binary        TSqlType = "binary"        // fixed length byte array
	VarBinary     TSqlType = "varbinary"     // variable-length byte array
	SmallDateTime TSqlType = "smalldatetime" // 1900-01-01 00:00:00; Storage takes 4 bytes
	DateTime      TSqlType = "datetime"      // 1900-01-01 00:00:00.997; Storage takes 8 bytes
	Text          TSqlType = "text"          // "Variable-length non-Unicode data in the code page of the server" - length is in bytes at rest, not characters
	Image         TSqlType = "image"         // Variable-length binary data up to 2GB
)

/* Notes
May have issues with the float type.  AFAIK there aren't any instances of float(24) to reduce size, however,
in most programming languages a float64 is -1.7e+308 to +1.7e+308
tsql float is - 1.79E+308 to -2.23E-308, 0 and 2.23E-308 to 1.79E+308

Text/Image types can store up to 2GB of data; Some of the Text columns in the database are defaulted to this max length.

datetime is depreciated: https://learn.microsoft.com/en-us/sql/t-sql/data-types/datetime-transact-sql?view=sql-server-ver17
```Avoid using datetime for new work. Instead, use the time, date, datetime2, and datetimeoffset data types. These types align with the SQL Standard, and are more portable. time, datetime2 and datetimeoffset provide more seconds precision. datetimeoffset provides time zone support for globally deployed applications.```


*/
