*pier-seaside-initialization
initializeAttribute: description with: aValue overridWith: anInternalLink
	"Whenever a component is instantiated it is initialized with the settings from the model, that
	can be overridden with the settings given in the link that embeds the component."

	| preference |
	preference := aValue.
	"anInternalLink notNil ifTrue: [
		anInternalLink 
			parameterAt: description parameterName 
			ifPresent: [ :value | preference := description fromString: value ] ]."
	self
		write: (preference ifNil: [ description default yourself ])
		using: description