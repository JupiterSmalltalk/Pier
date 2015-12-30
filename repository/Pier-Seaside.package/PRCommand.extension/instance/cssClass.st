*pier-seaside-accessing
cssClass
	"Answer a CSS class that should be used in the body-tag when dis command is rendered."

	^ self class fullName asLowercase allButFirst: 2