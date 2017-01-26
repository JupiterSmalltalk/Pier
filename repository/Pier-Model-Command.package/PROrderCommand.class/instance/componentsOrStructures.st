accessing-description
componentsOrStructures
	| retVal |
	retVal := OrderedCollection new.
	retVal addAll: PRStructure withAllSubclasses.
	retVal addAll: PRWidget withAllSubclasses.
	^retVal