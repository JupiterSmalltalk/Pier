*pier-seaside-description
settingsDescription
	"Answer a description container of settings for the Seaside view."

	^ self magritteDescription select: [ :each | each isSetting ]