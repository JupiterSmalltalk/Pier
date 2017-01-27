*pier-seaside-core-accessing
embeddedComponents
	^ self select: [ :each | each isInternal and: [ each isEmbedded and: [ each isBroken not and: [ each target isComponent ] ] ] ]