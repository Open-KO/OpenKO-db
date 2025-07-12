package jsonSchema

import (
	"fmt"
	"github.com/Open-KO/OpenKO-db/jsonSchema/enums/dbType"
	"github.com/Open-KO/OpenKO-db/jsonSchema/enums/profile"
	"github.com/Open-KO/OpenKO-db/jsonSchema/enums/tsql"
)

// READ BEFORE MODIFYING:
// This project is used as a submodule for ko-codegen and kodb-util
// if you're modifying this, you'll need to add the following to the end of your
// importing go.mod to use your local changes.  Otherwise, you'll be using
// the main branch code from github
// replace github.com/kenner2/OpenKO-db => ./OpenKO-db

type TableDef struct {
	Database    dbType.DbType `json:"database"`          // Which database this table should be created inside of
	Name        string        `json:"name"`              // Table name in the database
	ClassName   string        `json:"className"`         // Code-friendly class/struct name
	Description string        `json:"description"`       // Table description
	Exports     []Export      `json:"exports,omitempty"` // application specific exports
	Indexes     []IndexDef    `json:"indexes,omitempty"` // Any index definitions for the table
	Columns     []Column      `json:"columns"`           // Columns belonging to the table
}

type Column struct {
	Name          string        `json:"name"`                   // Column name in the database
	PropertyName  string        `json:"propertyName"`           // Code-friendly property name
	Description   string        `json:"description"`            // Property description
	Type          tsql.TSqlType `json:"type"`                   // Supported TSQL Type
	DefaultValue  string        `json:"defaultValue,omitempty"` // Default value that should be assigned to the property
	AllowNull     bool          `json:"allowNull,omitempty"`    // Can the column's value be null?
	Length        int           `json:"length,omitempty"`       // length specifier for array types
	Enums         []Enum        `json:"enums,omitempty"`        // array of enumerated values
	IsHexProtect  bool          `json:"isHexProtect,omitempty"` // Should this column be read with a convert function to varbinary, and written back with a convert to original?
	CollationName *string       `json:"collationName,omitempty"`
	CharacterSet  *string       `json:"characterSet,omitempty"`
}

type IndexDef struct {
	Name         string   `json:"name" gorm:"column:name"`
	Type         string   `json:"type" gorm:"column:type_desc"`
	IsUnique     bool     `json:"isUnique" gorm:"column:is_unique"`
	IsPrimaryKey bool     `json:"isPrimaryKey" gorm:"column:is_primary_key"`
	Columns      []string `json:"columns" gorm:"-"`
}

type Enum struct {
	Name    string `json:"name"`
	Value   string `json:"value"`
	Comment string `json:"comment"`
}

type Export struct {
	Namespace profile.ExportName `json:"namespace"`         // should be the server app name
	Columns   []string           `json:"columns,omitempty"` // columns to include in the export.  If none are specified, full column export assumed
	Exclude   []string           `json:"exclude,omitempty"` // columns to exclude from the full set
}

func (this *Column) GormType() string {
	if this.Length > 0 {
		return fmt.Sprintf("%s(%d)", this.Type, this.Length)
	}
	return string(this.Type)
}
