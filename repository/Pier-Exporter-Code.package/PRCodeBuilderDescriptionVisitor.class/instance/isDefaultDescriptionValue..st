check defaults
isDefaultDescriptionValue: aDescription
	| descriptionDefault structureValue |
	
	descriptionDefault := aDescription default.
	structureValue := structure readUsing: aDescription.
	^ descriptionDefault = structureValue