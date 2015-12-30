visiting-document
visitInternalLink: aLink
	"Visits the target to embed it, if the user has permissions to see the target, ignore otherwise."

	(parent visitsOf: aLink target) > 1
		ifTrue: [ super visitInternalLink: aLink ]
		ifFalse: [
			(self context structure: aLink target) isValid
				ifTrue: [ self visit: aLink target ] ]