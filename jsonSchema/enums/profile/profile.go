package profile

type ExportName string

const (
	All            ExportName = "full"
	VersionManager ExportName = "versionmanager"
	Ebenezer       ExportName = "ebenezer"
	AIServer       ExportName = "aiserver"
	Aujard         ExportName = "aujard"

	BinderNsFmt = "%s_binder"
	ModelNsFmt  = "%s_model"
)

var (
	Profiles = []ExportName{VersionManager, Ebenezer, AIServer, Aujard}
)
