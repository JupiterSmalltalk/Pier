*pier-seaside-core-accessing
cssClass
	"Answer a CSS class that should be used in the body-tag when browsing the structure. Furthermore it is put into menus and links that reference the receiver."
	
	| baseClass |
	baseClass := self class fullName asLowercase allButFirst: 2.
	self properties
		at: #customCssClasses
		ifPresent: [ :value | baseClass := baseClass , ' ' , value ].
	^ baseClass