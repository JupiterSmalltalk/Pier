accessing
cssClass
	"Answer a CSS class that should be used in the body-tag when this view is displayed."

	^ self class fullName asLowercase allButFirst: 2