accessing-description
componentsOrStructures
	| retVal |
	retVal := OrderedCollection new.
	retVal addAll: PRPierStructure withAllSubclasses.
	retVal addAll: PRWidget withAllSubclasses.
	^retVal